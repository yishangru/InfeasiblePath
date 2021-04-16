#include "llvm/IR/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/Instructions.h>
#include <sstream>
#include <unordered_map>
#include <unordered_set>
using namespace llvm;

static std::unordered_map<CmpInst::Predicate, std::string, std::hash<unsigned int>> PredicateStringMap {
    {CmpInst::Predicate::ICMP_EQ, "Equal"},
    {CmpInst::Predicate::ICMP_NE, "NOT Equal"},
    {CmpInst::Predicate::ICMP_UGT, "Unsigned Greater"},
    {CmpInst::Predicate::ICMP_UGE, "Unsigned Greater Or Equal"},
    {CmpInst::Predicate::ICMP_ULT, "Unsigned Less"},
    {CmpInst::Predicate::ICMP_ULE, "Unsigned Less or Equal"},
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
struct CheckMetaFuncInfo : public ModulePass {
  static char ID;
  CheckMetaFuncInfo() : ModulePass(ID) {}

  static void printInfo(uint32_t BranchCount, uint32_t IntBranchCount, uint32_t IntTargetBranchCount, std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> & PredicateBranchCount) {
    outs() << "Func Branch: " << BranchCount << "\n";
    outs() << "Func Integer Branch: " << IntBranchCount << "\n";
    outs() << "Func Target Integer Branch: " << IntTargetBranchCount << "\n";
    for (auto& Pair : PredicateBranchCount) {
      outs() << PredicateStringMap[Pair.first] << ": " << Pair.second << "\n";
    }
  }

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

        /*
        outs() << "Current Block " << BB->getName() << "\n";
        if (&*BB == &F->getEntryBlock()) {
            outs() << "This Entry" << "\n";
        }
        for (BasicBlock * Pred : predecessors(&*BB)) {
            outs() << "Pred -- " << Pred->getName() << "\n";
        }
        outs() << "\n";
        */

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

struct Query {
public:
  enum QueryAnswer {
    UNDEF = 0,
    TRUE = 1,
    FALSE = 2,
    UNAVAIL = 3
  };

  struct QueryHashFunction {
    std::size_t operator()(const Query& Q) const {
      std::string Operand1String;
      if (isa<ConstantInt>(Q.QOperand1)) {
        ConstantInt* ConstOp1 = cast<ConstantInt>(Q.QOperand1);
        Operand1String = std::to_string(ConstOp1->getSExtValue());
      } else {
        std::stringstream Strm;
        Strm << Q.QOperand1;
        Operand1String = Strm.str();
      }
      std::string Operand2String;
      if (isa<ConstantInt>(Q.QOperand2)) {
        ConstantInt* ConstOp2 = cast<ConstantInt>(Q.QOperand2);
        Operand2String = std::to_string(ConstOp2->getSExtValue());
      } else {
        std::stringstream Strm;
        Strm << Q.QOperand2;
        Operand2String = Strm.str();
      }
      std::string HashString = std::to_string(Q.QPredicate) + Operand1String + Operand2String;
      return std::hash<std::string>{}(HashString);
    }
  };

  Value* QOperand1;
  Value* QOperand2;
  CmpInst::Predicate QPredicate;

  Query(Value* Operand1, Value* Operand2, CmpInst::Predicate CmpPredicate) {
      assert(isa<ConstantInt>(Operand2));
      this->QOperand1 = Operand1;
      this->QOperand2 = Operand2;
      this->QPredicate = CmpPredicate;
      this->HashValue = QueryHashFunction{}(*this);
  }

  Query(const Query& Q) {
      this->QOperand1 = Q.QOperand1;
      this->QOperand2 = Q.QOperand2;
      this->QPredicate = Q.QPredicate;
      this->HashValue = Q.HashValue;
  }

  bool operator==(const Query& Q) const {
    if (this->HashValue != Q.HashValue) {
      return false;
    }
    if (Q.QPredicate != this->QPredicate) {
      return false;
    }
    return (compareValue(this->QOperand1, Q.QOperand1) && compareValue(this->QOperand2, Q.QOperand2));
  }

  static std::string queryString(Query& Q) {
      std::string Operand1String;
      if (isa<ConstantInt>(Q.QOperand1)) {
        ConstantInt* ConstOp1 = cast<ConstantInt>(Q.QOperand1);
        Operand1String = std::to_string(ConstOp1->getSExtValue());
      } else {
        Instruction* Op1Instruction = cast<Instruction>(Q.QOperand1);
        raw_string_ostream(Operand1String) << *Op1Instruction;
        Operand1String = (Op1Instruction->getParent()->getName().str()) + ": " + Operand1String;
        // Operand1String = ((cast<Value>(Op1Instruction)->getName()).str());
      }
      std::string Operand2String;
      if (isa<ConstantInt>(Q.QOperand2)) {
        ConstantInt* ConstOp2 = cast<ConstantInt>(Q.QOperand2);
        Operand2String = std::to_string(ConstOp2->getSExtValue());
      } else {
        Instruction* Op2Instruction = cast<Instruction>(Q.QOperand2);
        raw_string_ostream(Operand2String) << *Op2Instruction;
        Operand2String = (Op2Instruction->getParent()->getName().str()) + ": " + Operand2String;
        //Operand2String = ((cast<Value>(Op2Instruction)->getName()).str());
      }
      assert(PredicateStringMap.find(Q.QPredicate) != PredicateStringMap.end());
      return "[ " + Operand1String + "  (" + PredicateStringMap[Q.QPredicate] + ")  " + Operand2String + " ]";
  }

  static Query::QueryAnswer resolveQuery(Query& Q) {
    // two constant to resolve
    if ((!isa<ConstantInt>(Q.QOperand1)) || (!isa<ConstantInt>(Q.QOperand2))) {
      return Query::QueryAnswer::UNAVAIL;
    }
    ConstantInt* ConstOp1 = cast<ConstantInt>(Q.QOperand1);
    ConstantInt* ConstOp2 = cast<ConstantInt>(Q.QOperand2);

    int64_t ConstValue1 = ConstOp1->getSExtValue();
    int64_t ConstValue2 = ConstOp2->getSExtValue();

    if (PredicateStringMap.find(Q.QPredicate) == PredicateStringMap.end()) {
      outs() << "Unexpected Predicate - " << Q.QPredicate << '\n';
      assert(false);
    }

    Query::QueryAnswer Answer = Query::QueryAnswer::FALSE;
    switch (Q.QPredicate) {
      case CmpInst::Predicate::ICMP_EQ:
        if (ConstValue1 == ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_NE:
        if (ConstValue1 != ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_UGT:
        if (ConstValue1 > ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_UGE:
        if (ConstValue1 >= ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_ULT:
        if (ConstValue1 < ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_ULE:
        if (ConstValue1 <= ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_SGT:
        if (ConstValue1 > ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_SGE:
        if (ConstValue1 >= ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_SLT:
        if (ConstValue1 < ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      case CmpInst::Predicate::ICMP_SLE:
        if (ConstValue1 <= ConstValue2) {
          Answer = Query::QueryAnswer::TRUE;
        }
        break;
      default:
        break;
    }
    std::string ResolveString = "False";
    if (Answer == Query::QueryAnswer::TRUE) {
        ResolveString = "True";
    }
    outs() << "Resolve Query - " << ConstValue1 << " ( " << PredicateStringMap[Q.QPredicate] << ") "<< ConstValue2 << " = " << ResolveString << '\n';
    return Answer;
  }

private:
  std::size_t HashValue;
  static bool compareValue(Value* Value1, Value* Value2) {
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
};

typedef std::unordered_set<Query::QueryAnswer, std::hash<int>> QueryAnswerSet;
typedef std::unordered_map<Query, QueryAnswerSet, Query::QueryHashFunction> QueryAnswerMap;
typedef std::unordered_map <Instruction *, QueryAnswerMap> InstQueryAnswerMap;
typedef std::unordered_map<Instruction*, std::unordered_set<Query, Query::QueryHashFunction>> Step1WorkList;

void updateStep1Worklist(Query& SubstituteQuery, Instruction* CandidateInst, InstQueryAnswerMap& CurInstQueryAnswerMap, Step1WorkList& CurWorkList) {
  if (CurInstQueryAnswerMap.find(CandidateInst) == CurInstQueryAnswerMap.end()) {
    CurInstQueryAnswerMap[CandidateInst] = QueryAnswerMap();
  }
  QueryAnswerMap& CandidateQueryAnswerMap = CurInstQueryAnswerMap[CandidateInst];
  if (CandidateQueryAnswerMap.find(SubstituteQuery) == CandidateQueryAnswerMap.end()) {
    // insert new query and update work list
    CandidateQueryAnswerMap[SubstituteQuery] = QueryAnswerSet();
    if (CurWorkList.find(CandidateInst) == CurWorkList.end()) {
      CurWorkList[CandidateInst] = std::unordered_set<Query, Query::QueryHashFunction>();
    }
    CurWorkList[CandidateInst].insert(SubstituteQuery);
  }
}

// inst -> query -> query
typedef std::unordered_map<Instruction*, std::unordered_set<Query, Query::QueryHashFunction>> Step2WorkList;
// previous query -> after query, after query -> previous query
typedef std::unordered_map<Instruction*, std::unordered_map<Query, std::unordered_set<Query, Query::QueryHashFunction>, Query::QueryHashFunction>> InstQuerySubstituteMap;

void substituteQuery(Function *F,
                     Query& Q,
                     Instruction* CurrentInst,
                     InstQueryAnswerMap& CurrentInstQueryAnswerMap,
                     Step1WorkList& CurrentStep1WorkList,
                     InstQuerySubstituteMap& CurrentInstQuerySubstituteMap,
                     InstQuerySubstituteMap& CurrentInstQuerySubstituteReverseMap) {

  if (!isa<ConstantInt>(Q.QOperand1)) {
      outs() << "Query Should Be Resolved At Previous Block" << '\n';
      assert(false);
  }

  if (CurrentInst->getPrevNonDebugInstruction()) {
      // instruction still in BasicBlock
      Query QueryUpdate(Q);
      Instruction * PreviousInst = CurrentInst->getPrevNonDebugInstruction();
      if (isa<LoadInst>(Q.QOperand1)) {
          // get the address that refer to
          Value* TargetLoadPointer = cast<LoadInst>(Q.QOperand1)->getPointerOperand();
          if (isa<StoreInst>(PreviousInst)) {
              outs() << "Load Command : " << *(cast<Instruction>(Q.QOperand1)) << "\n";
              outs() << "Store Command : " << *PreviousInst << "\n";
              Value* TargetStorePointer = cast<StoreInst>(PreviousInst)->getPointerOperand();
              if (TargetLoadPointer == TargetStorePointer) {
                  outs() << "Match" << '\n';
                  // update query
              }
          }
      } else {

      }
      if (CurrentInstQuerySubstituteMap.find(PreviousInst) == CurrentInstQuerySubstituteMap.end()) {

      }
      updateStep1Worklist(QueryUpdate, PreviousInst, CurrentInstQueryAnswerMap, CurrentStep1WorkList);
  } else {
      // instruction is at the boundary - entry (no previous block) or br
      if (CurrentInst->getParent() == (&F->getEntryBlock())) {

          outs() << "Current Inst As Entry, Not Forward" << '\n';
          // undef current query
          if (CurrentInstQueryAnswerMap.find(CurrentInst) == CurrentInstQueryAnswerMap.end()) {
              outs() << "Inst Not Insert Into InstQueryAnswerMap" << '\n';
              assert(false);
          }
          QueryAnswerMap& CurrentQueryAnswerMap = CurrentInstQueryAnswerMap[CurrentInst];
          if (CurrentQueryAnswerMap.find(Q) == CurrentQueryAnswerMap.end()) {
              outs() << "Query Not Insert Into QueryAnswerMap" << '\n';
              assert(false);
          }
          // check current answer
          QueryAnswerSet& CurrentQueryAnswerSet = CurrentQueryAnswerMap[Q];
          if (CurrentQueryAnswerSet.size() != 0) {
              outs() << "Query Answer Set Not As Empty" << '\n';
              assert(false);
          }
          outs() << "Query: " << Query::queryString(Q) << " UNDEF" << '\n' << "At " << CurrentInst->getParent()->getName() << " -- " << *CurrentInst << '\n' << '\n';
          CurrentQueryAnswerSet.insert(Query::QueryAnswer::UNDEF);

      } else {
          for (BasicBlock *Pred : predecessors(CurrentInst->getParent())) {
                // check terminator for query replacement
          }
      }
  }
  return;
}

// Infeasible Pass - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    InfeasiblePath() : FunctionPass(ID) {}

    static void correlationDetect(Function *F, CmpInst* CompInst) {

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

      Query TestQuery = {Operand1, Operand2, CompPredicate};
      if (!isa<LoadInst>(TestQuery.QOperand1)) {
          outs() << "Query Not As Load : " << *(cast<Instruction>(TestQuery.QOperand1)) << '\n';
          assert(false);
      }
      outs() << "Query: " << Query::queryString(TestQuery) << '\n';

      // step 1: query correlation detection

      // query substitution in predecessors

      /*
      while (!WorkList.empty()) {

      }
      */

      // step 2: global query answer

      // step 3: generate infeasible path
    }

    bool runOnFunction(Function &F) override {
        errs() << "Infeasible Path Pass: ";
        errs().write_escaped(F.getName()) << '\n';

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
            }
        }

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