#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include <sstream>
#include <unordered_map>
#include <unordered_set>
using namespace llvm;

static std::unordered_map<CmpInst::Predicate, std::string, std::hash<unsigned int>> PredicateStringMap {
    {CmpInst::Predicate::ICMP_EQ, "Equal"},
    {CmpInst::Predicate::ICMP_NE, "NOT Equal"},
    {CmpInst::Predicate::ICMP_UGE, "Unsigned Greater"},
    {CmpInst::Predicate::ICMP_UGE, "Unsigned Greater Or Equal"},
    {CmpInst::Predicate::ICMP_ULT, "Unsigned Less"},
    {CmpInst::Predicate::ICMP_ULE, "Unsigned Less Than"},
    {CmpInst::Predicate::ICMP_SGT, "Greater"},
    {CmpInst::Predicate::ICMP_SGE, "Greater Or Equal"},
    {CmpInst::Predicate::ICMP_SLT, "Less"},
    {CmpInst::Predicate::ICMP_SLE, "Less or Equal"},
};

static bool whetherCompInst(Instruction* InstructionCheck) {
    if (!isa<CmpInst>(InstructionCheck)) {
        return false;
    }
    return true;
}

static bool whetherIntCompInst(Instruction* InstructionCheck) {
    if (!whetherCompInst(InstructionCheck)) {
        return false;
    }
    CmpInst* CompInst = cast<CmpInst>(InstructionCheck);
    if (!(CompInst->isIntPredicate())) {
      return false;
    }
    return true;
}

static bool whetherTargetCompInst(Instruction* InstructionCheck) {
    if (!whetherIntCompInst(InstructionCheck)) {
        return false;
    }

    CmpInst* CompInst = cast<CmpInst>(InstructionCheck);
    CmpInst::Predicate InstPredicate = CompInst->getPredicate();
    if (PredicateStringMap.find(InstPredicate) == PredicateStringMap.end()) {
        outs() << "Predicate Not Find!" << "\n";
        return false;
    }

    // test for target
    Value * Operand1 = CompInst->getOperand(0);
    Value * Operand2 = CompInst->getOperand(1);

    if ((!isa<ConstantInt>(Operand1)) && (!isa<ConstantInt>(Operand2))) {
        outs() << "None of operands are constant int!" << "\n";
        return false;
    }
    return true;
}

namespace {
// pass for collect information - function count, code length, etc.
void printInfo(uint32_t BranchCount, uint32_t IntBranchCount, uint32_t IntTargetBranchCount, std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> & PredicateBranchCount) {
  outs() << "Func Branch: " << BranchCount << "\n";
  outs() << "Func Integer Branch: " << IntBranchCount << "\n";
  outs() << "Func Target Integer Branch: " << IntTargetBranchCount << "\n";
  for (auto& Pair : PredicateBranchCount) {
    outs() << PredicateStringMap[Pair.first] << ": " << Pair.second << "\n";
  }
}

struct CheckMetaFuncInfo : public ModulePass {
  static char ID;
  CheckMetaFuncInfo() : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    outs() << "CheckMetaFuncInfo Pass: " << "\n";

    uint32_t ModuleBranchCount = 0;
    uint32_t ModuleIntBranchCount = 0;
    uint32_t ModuleIntTargetBranchCount = 0;
    std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> ModulePredicateBranchCount;

    // get all predicate
    for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {
      outs().write_escaped(F->getName()) << '\n';

      uint32_t FuncBranchCount = 0;
      uint32_t FuncIntBranchCount = 0;
      uint32_t FuncIntTargetBranchCount = 0;
      std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> FuncPredicateBranchCount;

      for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {
        for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
          if (!whetherCompInst(&*IN)) {
            continue;
          }

          outs() << *IN << "\n"; // print all branch
          FuncBranchCount++;

          if (!whetherIntCompInst(&*IN)) {
            continue;
          }

          outs() << "Int predicate: " << "\n";
          FuncIntBranchCount++;

          if (!whetherTargetCompInst(&*IN)) {
            continue;
          }

          FuncIntTargetBranchCount++;

          // update predicate profile
          CmpInst* CompInst = cast<CmpInst>(&*IN);
          CmpInst::Predicate InstPredicate = CompInst->getPredicate();

          if (FuncPredicateBranchCount.find(InstPredicate) == FuncPredicateBranchCount.end()) {
            FuncPredicateBranchCount[InstPredicate] = 0;
          }
          FuncPredicateBranchCount[InstPredicate]++;
        }
      }

      ModuleBranchCount += FuncBranchCount;
      ModuleIntBranchCount += FuncIntBranchCount;
      ModuleIntTargetBranchCount += FuncIntTargetBranchCount;
      for (auto& Pair : FuncPredicateBranchCount) {
        if (ModulePredicateBranchCount.find(Pair.first) == ModulePredicateBranchCount.end()) {
          ModulePredicateBranchCount[Pair.first] = 0;
        }
        ModulePredicateBranchCount[Pair.first] += Pair.second;
      }

      printInfo(FuncBranchCount, FuncIntBranchCount, FuncIntTargetBranchCount, FuncPredicateBranchCount);
      outs() << "End of Function: " << F->getName() << '\n' << '\n';
    }

    outs() << '\n' << '\n';
    outs() << "Module Summary:" << '\n';
    printInfo(ModuleBranchCount, ModuleIntBranchCount, ModuleIntTargetBranchCount, ModulePredicateBranchCount);

    return false;
  }
};
} // namespace

namespace {

enum QueryAnswer {
    UNDEF = 0,
    TRUE = 1,
    FALSE = 2,
    UNAVAIL = 3
};

bool compareValue(Value* Value1, Value* Value2) {
  if ((!isa<ConstantInt>(Value1)) && (!isa<Instruction>(Value1))) {
      outs() << "Value1 Not As Constant Or INST" << "\n";
      assert(false);
  }
  if ((!isa<ConstantInt>(Value2)) && (!isa<Instruction>(Value2))) {
      outs() << "Value2 Not As Constant Or INST" << "\n";
      assert(false);
  }
  if (isa<ConstantInt>(Value1)) {
      if (!isa<ConstantInt>(Value2)) {
          return false;
      }
      // compare content int
      ConstantInt* Const1 = cast<ConstantInt>(Value1);
      ConstantInt* Const2 = cast<ConstantInt>(Value2);
      return (Const1->getSExtValue()) == (Const2->getSExtValue());
  } else {
      Instruction* Inst1 = cast<Instruction>(Value1);
      Instruction* Inst2 = cast<Instruction>(Value2);
      return Inst1 == Inst2;
  }
}

struct Query {
  Value* Operand1;
  Value* Operand2;
  CmpInst::Predicate QueryPredicate;

  bool operator==(const Query& Q) {
    if (Q.QueryPredicate != this->QueryPredicate) {
        return false;
    }
    return (compareValue(this->Operand1, Q.Operand1) && compareValue(this->Operand2, Q.Operand2));
  }
};

struct QueryHashFunction {
  std::size_t operator()(const Query& Q) const {
    std::string Operand1String;
    if (isa<ConstantInt>(Q.Operand1)) {
        ConstantInt* ConstOp1 = cast<ConstantInt>(Q.Operand1);
        Operand1String = std::to_string(ConstOp1->getSExtValue());
    } else {
        std::stringstream Strm;
        Strm << Q.Operand1;
        Operand1String = Strm.str();
    }
    std::string Operand2String;
    if (isa<ConstantInt>(Q.Operand2)) {
        ConstantInt* ConstOp2 = cast<ConstantInt>(Q.Operand2);
        Operand2String = std::to_string(ConstOp2->getSExtValue());
    } else {
        std::stringstream Strm;
        Strm << Q.Operand2;
        Operand2String = Strm.str();
    }
    std::string HashString = std::to_string(Q.QueryPredicate) + Operand1String + Operand2String;
    return std::hash<std::string>{}(HashString);
  }
};

/*
 * QueryReference: position in vector
 * QueryRecord: vector storing queries
 * BlockQueryAnswerMap: Instruction -> Query -> Answers
 * QuerySubstituteMap: Query Id -> Instruction -> Query
 */

std::size_t addQuery(std::vector<Query>& QueryRecord, Value* Operand1, Value* Operand2, CmpInst::Predicate QueryPredicate) {
  std::size_t Id = QueryRecord.size();
  if (!isa<ConstantInt>(Operand2)) {
      outs() << "Second Operand Not As Constant" << '\n';
  }
  QueryRecord.push_back({Operand1, Operand2, QueryPredicate});
  return Id;
}

std::unordered_set<Instruction*> getPredecessorInst(Instruction* CurrentInst) {
  std::unordered_set<Instruction*> PredecessorInst;
  if (CurrentInst->getPrevNonDebugInstruction()) {
      PredecessorInst.insert(CurrentInst->getPrevNonDebugInstruction());
      return PredecessorInst;
  }
  // the inst is already the head of basic block - treat for condition correlation
  BasicBlock* CurrentBlock = CurrentInst->getParent();
}

void substituteQuery(std::size_t QueryReference, std::vector<Query>& QueryRecord, Instruction* IN, std::unordered_map<Instruction*, std::unordered_map<std::size_t, std::unordered_set<QueryAnswer, std::hash<int>>>> &InstQueryAnswerMap, std::unordered_map<std::size_t, std::unordered_map<Instruction*,  std::unordered_set<std::size_t>>> &QuerySubstituteMap) {
  return;
}

void resolveQuery(std::size_t QueryReference, std::vector<Query>& QueryRecord, Instruction* IN, std::unordered_map<Instruction*, std::unordered_map<std::size_t, std::unordered_set<QueryAnswer, std::hash<int>>>> &InstQueryAnswerMap) {
  return;
}

void correlationDetect(Function *F, CmpInst* CompInst) {
  std::vector<Query> QueryRecord(150);
  std::unordered_map<Instruction*, std::unordered_map<std::size_t, std::unordered_set<QueryAnswer, std::hash<int>>>> InstQueryAnswerMap;
  std::unordered_map<std::size_t, std::unordered_map<Instruction*, std::unordered_set<std::size_t>>> QuerySubstituteMap;

  // swap for initial query
  Value* Operand1 = CompInst->getOperand(0);
  Value* Operand2 = CompInst->getOperand(1);
  CmpInst::Predicate CompPredicate = CompInst->getPredicate();
  if (isa<ConstantInt>(Operand1)) {
    Value* Temp = Operand1;
    Operand1 = Operand2;
    Operand2 = Temp;
    CompPredicate = CompInst->getSwappedPredicate();
  }

  // step 1: query correlation detection
  std::unordered_map<Instruction*, std::unordered_set<std::size_t>> WorkList;
  std::size_t InitialQueryID = addQuery(QueryRecord, Operand1, Operand2, CompPredicate);

  // query substitution in predecessors
  std::unordered_set<Instruction*> InitialInstPredecessor = getPredecessorInst(CompInst);

  /*
  while (!WorkList.empty()) {

  }
  */

  // step 2: global query answer

  // step 3: generate infeasible path
}

// Infeasible Pass - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    InfeasiblePath() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
        errs() << "Infeasible Path Pass: ";
        errs().write_escaped(F.getName()) << '\n';

        LLVMContext& Context = F.getContext();
        // all target instruction
        std::vector<CmpInst*> TargetCmpInst;
        for (Function::iterator BB = F.begin(), BBE = F.end(); BB != BBE; ++BB) {
            for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
                Instruction* InstInBlock = &*IN;
                if (!whetherTargetCompInst(InstInBlock)) {
                    continue;
                }
                CmpInst* CompInst = cast<CmpInst>(InstInBlock);
                TargetCmpInst.push_back(CompInst);

                /* for test */
                outs() << *CompInst << '\n';

                Value* Operand1 = CompInst->getOperand(0);
                Value* Operand2 = CompInst->getOperand(1);
                CmpInst::Predicate CompPredicate = CompInst->getPredicate();
                if (isa<ConstantInt>(Operand1)) {
                  Value* Temp = Operand1;
                  Operand1 = Operand2;
                  Operand2 = Temp;
                  CompPredicate = CompInst->getSwappedPredicate();
                }

                int64_t op2value = cast<ConstantInt>(Operand2)->getSExtValue();

                Query Q1 = {Operand1, Operand2, CompPredicate};
                Type *i32_type = IntegerType::getInt32Ty(Context);
                Value* GenerateConst1 = ConstantInt::get(i32_type, op2value, true);
                Value* GenerateConst2 = ConstantInt::get(i32_type, op2value + 20, true);

                Query Same = {Operand1, GenerateConst1, CompPredicate};
                CmpInst::Predicate DifferentPredicate = CmpInst::Predicate::ICMP_SGE;
                if (CompPredicate == DifferentPredicate) {
                    DifferentPredicate = CmpInst::Predicate::ICMP_NE;
                }
                Query PreChange = {Operand1, GenerateConst1, DifferentPredicate};
                Query Op2Change = {Operand1, GenerateConst2, CompPredicate};
                outs() << "Q1 Hash : " << QueryHashFunction{}(Q1);
                outs() << "Same Hash : " << QueryHashFunction{}(Same);
                outs() << "PreChange Hash : " << QueryHashFunction{}(PreChange);
                outs() << "PreChange Hash : " << QueryHashFunction{}(Op2Change);
                assert(Q1 == Same && QueryHashFunction{}(Q1) == QueryHashFunction{}(Same));
                assert(!(Q1 == PreChange));
                assert(!(Q1 == Op2Change));
                assert(!(PreChange == Op2Change));
            }
        }

        /*
        // get all used compare branch, detect correlated query
        outs().write_escaped(F.getName()) << '\n';
        for (auto& Inst : TargetCmpInst) {
            outs() << *Inst << '\n';
            outs() << "Used:" << '\n';
            for (auto *U : Inst->users()) {
                if (!isa<Instruction>(&*U)) {
                    outs() << "Not A Instruction: " << *U << '\n';
                    continue;
                }
                outs() << *cast<Instruction>(&*U) << '\n';
            }
            outs() << "End Used" << '\n' << '\n';
            correlationDetect(&F, Inst);
        }
        */
        outs() << "\n" << "\n";
        return false;
    }
};
} // namespace

// register pass
char InfeasiblePath::ID = 0;
static RegisterPass<InfeasiblePath> X("InfeasiblePath", "Infeasible Path Pass");

char CheckMetaFuncInfo::ID = 1;
static RegisterPass<CheckMetaFuncInfo> Y("MetaInfo", "Function Meta Pass");