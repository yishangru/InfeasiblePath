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
#include <iomanip>
#include <unordered_map>
#include <unordered_set>
using namespace llvm;

static std::unordered_map<CmpInst::Predicate, std::string, std::hash<unsigned int>> PredicateStringMap {
    {CmpInst::Predicate::ICMP_EQ, "Equal"},
    {CmpInst::Predicate::ICMP_NE, "NOT Equal"},
    {CmpInst::Predicate::ICMP_SGT, "Greater"},
    {CmpInst::Predicate::ICMP_SGE, "Greater Or Equal"},
    {CmpInst::Predicate::ICMP_SLT, "Less"},
    {CmpInst::Predicate::ICMP_SLE, "Less or Equal"},
    //{CmpInst::Predicate::ICMP_UGT, "Unsigned Greater"},
    //{CmpInst::Predicate::ICMP_UGE, "Unsigned Greater Or Equal"},
    //{CmpInst::Predicate::ICMP_ULT, "Unsigned Less"},
    //{CmpInst::Predicate::ICMP_ULE, "Unsigned Less or Equal"},
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
      //outs() << "Predicate Not Find!" << "\n";
        return false;
    }

    // test for target
    Value * Operand1 = CompInst->getOperand(0);
    Value * Operand2 = CompInst->getOperand(1);

    if ((!isa<ConstantInt>(Operand1)) && (!isa<ConstantInt>(Operand2))) {
      //outs() << "None of operands are constant int!" << "\n";
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
    errs() << "Func Branch: " << BranchCount << "\n";
    errs() << "Func Integer Branch: " << IntBranchCount << "\n";
    errs() << "Func Target Integer Branch: " << IntTargetBranchCount << "\n";
    for (auto& Pair : PredicateBranchCount) {
      errs() << PredicateStringMap[Pair.first] << ": " << Pair.second << "\n";
    }
  }

  bool runOnModule(Module &M) override {
    errs() << "CheckMetaFuncInfo Pass: " << "\n";

    uint32_t ModuleBranchCount = 0;
    uint32_t ModuleIntBranchCount = 0;
    uint32_t ModuleIntTargetBranchCount = 0;
    std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> ModulePredicateBranchCount;

    // get all predicate
    for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {//outs() .write_escaped(F->getName()) << '\n';

      uint32_t FuncBranchCount = 0;
      uint32_t FuncIntBranchCount = 0;
      uint32_t FuncIntTargetBranchCount = 0;
      std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> FuncPredicateBranchCount;

      for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {

        /*
//outs() << "Current Block " << BB->getName() << "\n";
        if (&*BB == &F->getEntryBlock()) {
//outs() << "This Entry" << "\n";
        }
        for (BasicBlock * Pred : predecessors(&*BB)) {
//outs() << "Pred -- " << Pred->getName() << "\n";
        }
//outs() << "\n";
        */

        for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
          if (!whetherCompInst(&*IN)) {
            continue;
          }

          //outs() << *IN << "\n"; // print all branch
          FuncBranchCount++;

          if (!whetherIntCompInst(&*IN)) {
            continue;
          }

          //outs() << "Int predicate: " << "\n";
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
      //outs() << "End of Function: " << F->getName() << '\n' << '\n';
    }

    //outs() << '\n' << '\n';

    errs() << "Module Summary:" << '\n';
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

  Query() {}

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

  static std::string queryString(const Query& Q)  {
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

    assert(isa<ConstantInt>(Q.QOperand2));
    if (!isa<ConstantInt>(Q.QOperand1)) {
      // check whether Operand1 comes from strange operation or call
      if (isa<LoadInst>(Q.QOperand1)) {
          return Query::QueryAnswer::UNAVAIL;
      } else if (isa<BinaryOperator>(Q.QOperand1)) {
          /*
          BinaryOperator* BinaryInst = cast<BinaryOperator>(Q.QOperand1);
          if (isa<ConstantInt>(BinaryInst->getOperand(0)) || isa<ConstantInt>(BinaryInst->getOperand(1))) {
              if (BinaryInst->getOpcode() == llvm::Instruction::Add) {
                  return Query::QueryAnswer::UNAVAIL;
              }
              else if (BinaryInst->getOpcode() == llvm::Instruction::Sub) {
                  return Query::QueryAnswer::UNAVAIL;
              }
          }
          */
      }
      if (!isa<Instruction>(Q.QOperand1)) {
        //outs() << "Not Instruction In Operand1 [" << Q.QOperand1->getName() << '\n';
          assert(false);
      }
      //outs() << "Can Not Resolve : [ " << cast<Instruction>(Q.QOperand1)->getParent()->getName() << " ] : " << *(cast<Instruction>(Q.QOperand1)) << '\n';
      return Query::QueryAnswer::UNDEF;
    }

    ConstantInt* ConstOp1 = cast<ConstantInt>(Q.QOperand1);
    ConstantInt* ConstOp2 = cast<ConstantInt>(Q.QOperand2);

    int64_t ConstValue1 = ConstOp1->getSExtValue();
    int64_t ConstValue2 = ConstOp2->getSExtValue();

    if (PredicateStringMap.find(Q.QPredicate) == PredicateStringMap.end()) {
      //outs() << "Unexpected Predicate - " << Q.QPredicate << '\n';
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
    //outs() << "Resolve Query - " << ConstValue1 << " ( " << PredicateStringMap[Q.QPredicate] << ") "<< ConstValue2 << " = " << ResolveString << '\n';
    return Answer;
  }

private:
  std::size_t HashValue;
  static bool compareValue(Value* Value1, Value* Value2) {
    if ((!isa<ConstantInt>(Value1)) && (!isa<Instruction>(Value1))) {
      //outs() << "Value1 Not As Constant Or INST" << "\n";
      assert(false);
    }
    if ((!isa<ConstantInt>(Value2)) && (!isa<Instruction>(Value2))) {
      //outs() << "Value2 Not As Constant Or INST" << "\n";
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

static std::unordered_map<Query::QueryAnswer, std::string, std::hash<int>> QueryAnswerStringMap {
    {Query::QueryAnswer::UNAVAIL, "Not Avail"},
    {Query::QueryAnswer::FALSE, "False"},
    {Query::QueryAnswer::TRUE, "True"},
    {Query::QueryAnswer::UNDEF, "Undef"},
};

typedef std::unordered_set<Query::QueryAnswer, std::hash<int>> QueryAnswerSet;
typedef std::unordered_map<Query, QueryAnswerSet, Query::QueryHashFunction> QueryAnswerMap;
typedef std::unordered_map <Instruction *, QueryAnswerMap> InstQueryAnswerMap;

// previous query -> after query, after query -> previous query
typedef std::unordered_map<Query, std::unordered_set<Query, Query::QueryHashFunction>, Query::QueryHashFunction> SubstituteMap;
typedef std::unordered_map<Instruction*, std::unordered_map<Instruction*, SubstituteMap>> InstQuerySubstituteMap;

// inst -> query -> query
typedef std::unordered_map<Instruction*, std::unordered_set<Query, Query::QueryHashFunction>> Step1WorkList;

// initial query answer
void initialQueryAnswerMap(Query& SubstituteQuery, Instruction* CandidateInst, InstQueryAnswerMap& CurInstQueryAnswerMap) {
  if (CurInstQueryAnswerMap.find(CandidateInst) == CurInstQueryAnswerMap.end()) {
    CurInstQueryAnswerMap[CandidateInst] = QueryAnswerMap();
  }
  QueryAnswerMap& CandidateQueryAnswerMap = CurInstQueryAnswerMap[CandidateInst];
  if (CandidateQueryAnswerMap.find(SubstituteQuery) == CandidateQueryAnswerMap.end()) {
    CandidateQueryAnswerMap[SubstituteQuery] = QueryAnswerSet();
  }
}

// update query answer
void updateQueryAnswerMap(Query& SubstituteQuery, Query::QueryAnswer Answer, Instruction* CandidateInst, InstQueryAnswerMap& CurInstQueryAnswerMap) {
    assert(Answer != Query::QueryAnswer::UNAVAIL);
    initialQueryAnswerMap(SubstituteQuery, CandidateInst, CurInstQueryAnswerMap);
    CurInstQueryAnswerMap[CandidateInst][SubstituteQuery].insert(Answer);
}

// update query answer

// update worklist and query answer map
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


// update substitute mapping relationship
void updateQuerySubstituteRelation(Query& Before, Query& After, Instruction* SuccInst, Instruction* PredInst, InstQuerySubstituteMap& CurInstQuerySubstituteMap, InstQuerySubstituteMap& CurInstQuerySubstituteReverseMap) {
    if (CurInstQuerySubstituteMap.find(SuccInst) == CurInstQuerySubstituteMap.end()) {
        assert(CurInstQuerySubstituteReverseMap.find(SuccInst) == CurInstQuerySubstituteReverseMap.end());
        CurInstQuerySubstituteMap[SuccInst] = std::unordered_map<Instruction*, SubstituteMap>();
        CurInstQuerySubstituteReverseMap[SuccInst] = std::unordered_map<Instruction*, SubstituteMap>();
    }

    std::unordered_map<Instruction*, SubstituteMap>& AfterBefore = CurInstQuerySubstituteMap[SuccInst];
    if (AfterBefore.find(PredInst) == AfterBefore.end()) {
        AfterBefore[PredInst] = SubstituteMap();
    }

    SubstituteMap& AfterBeforeMap = AfterBefore[PredInst];
    if (AfterBeforeMap.find(After) == AfterBeforeMap.end()) {
        AfterBeforeMap[After] = std::unordered_set<Query, Query::QueryHashFunction>();
    }
    AfterBeforeMap[After].insert(Before);

    std::unordered_map<Instruction*, SubstituteMap>& BeforeAfter = CurInstQuerySubstituteReverseMap[SuccInst];
    if (BeforeAfter.find(PredInst) == BeforeAfter.end()) {
        BeforeAfter[PredInst] = SubstituteMap();
    }

    SubstituteMap& BeforeAfterMap = BeforeAfter[PredInst];
    if (BeforeAfterMap.find(Before) == BeforeAfterMap.end()) {
        BeforeAfterMap[Before] = std::unordered_set<Query, Query::QueryHashFunction>();
    }
    BeforeAfterMap[Before].insert(After);
}


// perform query substitute
void substituteQuery(Function *F,
                     Query& Q,
                     Instruction* CurrentInst,
                     InstQueryAnswerMap& CurrentInstQueryAnswerMap,
                     Step1WorkList& CurrentStep1WorkList,
                     InstQuerySubstituteMap& CurrentInstQuerySubstituteMap,
                     InstQuerySubstituteMap& CurrentInstQuerySubstituteReverseMap) {

  if (isa<ConstantInt>(Q.QOperand1)) {
    //outs() << "Query Should Be Resolved At Previous Block" << '\n';
      assert(false);
  }

  LLVMContext& Context = F->getContext();

  if (CurrentInst->getPrevNonDebugInstruction()) {
      // instruction still in BasicBlock
      Query QueryUpdate(Q);
      Instruction * PreviousInst = CurrentInst->getPrevNonDebugInstruction();

      //outs() << "[" << PreviousInst->getParent()->getName() << " ]" << '\n';
      if (isa<LoadInst>(Q.QOperand1)) {

          // get the address that refer to
          LoadInst* QOperandLoadInst = cast<LoadInst>(Q.QOperand1);
          Value* TargetLoadPointer = QOperandLoadInst->getPointerOperand();

          //outs() << "Load Command : " << *QOperandLoadInst << "\n";

          if (isa<StoreInst>(PreviousInst)) {

            //outs() << "Store Command : " << *PreviousInst << "\n";

              StoreInst* QOperandStoreInst = cast<StoreInst>(PreviousInst);
              Value* TargetStorePointer = QOperandStoreInst->getPointerOperand();

              if (TargetLoadPointer == TargetStorePointer) {

                //outs() << "Match" << '\n';
                  // update query
                  Value* StoreValue = QOperandStoreInst->getValueOperand();
                  if (isa<ConstantInt>(StoreValue)) {

                      ConstantInt* ConstantValue = cast<ConstantInt>(StoreValue);
                      //outs() << "Store Constant : " << ConstantValue->getSExtValue() << '\n';
                      QueryUpdate = {ConstantValue, Q.QOperand2, Q.QPredicate};

                      Query::QueryAnswer Answer = Query::resolveQuery(QueryUpdate);
                      assert(Answer == Query::QueryAnswer::TRUE || Answer == Query::QueryAnswer::FALSE);
                      //outs() << "Query Resolve In Store (" << QueryAnswerStringMap[Answer] << "): " << Query::queryString(QueryUpdate) << " " << '\n' << "At " << QOperandStoreInst->getParent()->getName() << " -- " << *QOperandStoreInst << '\n' << '\n';
                      updateQueryAnswerMap(QueryUpdate, Answer, PreviousInst, CurrentInstQueryAnswerMap);

                  } else {
                      if (isa<Argument>(StoreValue)) {
                          updateQueryAnswerMap(QueryUpdate, Query::QueryAnswer::UNDEF, PreviousInst, CurrentInstQueryAnswerMap);
                      } else {
                          if (!isa<Instruction>(StoreValue)) {
                            //outs() << "Store Neither Instruction - " << *StoreValue << '\n';
                            assert(false);
                          }
                          Instruction* NextQueryInstruction = cast<Instruction>(StoreValue);
                          //outs() << "Store Value : [ " << NextQueryInstruction->getParent()->getParent() << " ] " << *NextQueryInstruction << '\n';
                          QueryUpdate = {NextQueryInstruction, Q.QOperand2, Q.QPredicate};
                      }
                  }
              } else {
                //outs() << "MisMatch" << '\n';
              }
          }
      }
      /*
      else if (isa<BinaryOperator>(Q.QOperand1)) {
          // try to resolve
          if (PreviousInst == Q.QOperand1) {

              BinaryOperator* BinaryInst = cast<BinaryOperator>(Q.QOperand1);
              assert(isa<ConstantInt>(BinaryInst->getOperand(0)) || isa<ConstantInt>(BinaryInst->getOperand(1)));
              assert(BinaryInst->getOpcode() == llvm::Instruction::Add || BinaryInst->getOpcode() == llvm::Instruction::Sub);

              // generate new query

              std::size_t Op0 = 0;  // operand
              std::size_t Op1 = 1;  // some constant

              if (isa<ConstantInt>(BinaryInst->getOperand(0))) {
                  Op0 = 1;
                  Op1 = 0;
              }

              Type *I64Type = IntegerType::getInt64Ty(Context);
              int64_t Op1Value = cast<ConstantInt>(BinaryInst->getOperand(Op1))->getSExtValue();
              int64_t CurrentActualValue = cast<ConstantInt>(Q.QOperand2)->getSExtValue();

              if (BinaryInst->getOpcode() == llvm::Instruction::Add) {

                  Value* GenerateConst = ConstantInt::get(I64Type, CurrentActualValue - Op1Value, true);
                  QueryUpdate = {BinaryInst->getOperand(Op0), GenerateConst, Q.QPredicate};

              }

              else if (BinaryInst->getOpcode() == llvm::Instruction::Sub) {
                  if (Op0 == 1) {
                      Value* GenerateConst = ConstantInt::get(I64Type, Op1Value-CurrentActualValue, true);
                      QueryUpdate = {BinaryInst->getOperand(Op0), GenerateConst, CmpInst::getSwappedPredicate(Q.QPredicate)};
                  } else {
                      Value* GenerateConst = ConstantInt::get(I64Type, CurrentActualValue + Op1Value, true);
                      QueryUpdate = {BinaryInst->getOperand(Op0), GenerateConst, Q.QPredicate};
                  }
              }

              Query::QueryAnswer CurAnswer = Query::resolveQuery(QueryUpdate);
              assert(CurAnswer != Query::QueryAnswer::UNDEF);

              // query solved
              if (CurAnswer != Query::QueryAnswer::UNAVAIL) {
                  updateQueryAnswerMap(QueryUpdate, CurAnswer, PreviousInst, CurrentInstQueryAnswerMap);
              }
          }
      }
      */
       else {
          //outs() << "Non Binary Or Load Inst Raised - " << Query::queryString(Q) << "\n";
          assert(false);
      }
      updateQuerySubstituteRelation(Q, QueryUpdate, CurrentInst, PreviousInst, CurrentInstQuerySubstituteMap, CurrentInstQuerySubstituteReverseMap);
      updateStep1Worklist(QueryUpdate, PreviousInst, CurrentInstQueryAnswerMap, CurrentStep1WorkList);

  } else {
      // instruction is at the boundary - entry (no previous block) or br
      if (CurrentInst->getParent() == &(F->getEntryBlock())) {

        //outs() << "Current Inst As Entry, Not Forward" << '\n';
          // undef current query
          if (CurrentInstQueryAnswerMap.find(CurrentInst) == CurrentInstQueryAnswerMap.end()) {
            //outs() << "Inst Not Insert Into InstQueryAnswerMap" << '\n';
              assert(false);
          }
          QueryAnswerMap& CurrentQueryAnswerMap = CurrentInstQueryAnswerMap[CurrentInst];
          if (CurrentQueryAnswerMap.find(Q) == CurrentQueryAnswerMap.end()) {
            //outs() << "Query Not Insert Into QueryAnswerMap" << '\n';
              assert(false);
          }
          // check current answer
          QueryAnswerSet& CurrentQueryAnswerSet = CurrentQueryAnswerMap[Q];
          if (CurrentQueryAnswerSet.size() != 0) {
            //outs() << "Query Answer Set Not As Empty" << '\n';
              assert(false);
          }
          Query::QueryAnswer CurAnswer = Query::QueryAnswer::UNDEF;
          //outs() << "Query Resolve In Entry: " << Query::queryString(Q) << QueryAnswerStringMap[CurAnswer] << '\n' << "At " << CurrentInst->getParent()->getName() << " -- " << *CurrentInst << '\n' << '\n';
          CurrentQueryAnswerSet.insert(CurAnswer);

      } else {
          BasicBlock* CurrentBlock = CurrentInst->getParent();
          for (BasicBlock *Pred : predecessors(CurrentBlock)) {
                // check terminator for query replacement
                Query QueryUpdate(Q);
                Instruction* PredTerminator = Pred->getTerminator();

                if (isa<InvokeInst>(PredTerminator)) {
                    InvokeInst* InvokeTerminator = cast<InvokeInst>(PredTerminator);
                    if (Q.QOperand1 == InvokeTerminator) {
                        updateQueryAnswerMap(QueryUpdate, Query::QueryAnswer::UNDEF, InvokeTerminator, CurrentInstQueryAnswerMap);
                    }
                }

                if (!isa<BranchInst>(PredTerminator)) {
                    //outs() << "Predcessor Terminator Not Branch : " << *PredTerminator << '\n';
                    updateQuerySubstituteRelation(Q, QueryUpdate, CurrentInst, PredTerminator, CurrentInstQuerySubstituteMap, CurrentInstQuerySubstituteReverseMap);
                    updateStep1Worklist(QueryUpdate, PredTerminator, CurrentInstQueryAnswerMap, CurrentStep1WorkList);
                    continue;
                }

                BranchInst* PredBranch = cast<BranchInst>(PredTerminator);

                // check correlations
                if (PredBranch->isConditional()) {
                    Value *Condition = PredBranch->getCondition();

                    if (!isa<Instruction>(Condition)) {
                      //outs() << "Condition Not As Instruction " << *Condition << "\n";
                      assert(false);
                    }

                    Instruction* ConditionInst = cast<Instruction>(Condition);

                    if (isa<CmpInst>(CurrentInst)) {
                      CmpInst* ConditionCompare = cast<CmpInst>(Condition);
                      Value * Operand1 = ConditionCompare->getOperand(0);
                      Value * Operand2 = ConditionCompare->getOperand(1);

                      // check for subsuming
                      if (Operand1 == Q.QOperand1 || Operand2 == Q.QOperand1) {
                        //outs() << "Operand Find Equal: [ " << PredBranch->getParent()->getName() << " ] : " << *PredBranch << "\n";

                        assert(Operand1 == Q.QOperand1);

                        // only check very limited cases
                        if (Operand1 == Q.QOperand1) {
                          if (isa<ConstantInt>(Operand2)) {
                            if (CurrentBlock == PredBranch->getSuccessor(0)) {
                              if (ConditionCompare->getPredicate() == Q.QPredicate) {

                                int64_t ConstValue1 = cast<ConstantInt>(Operand2)->getSExtValue();
                                int64_t ConstValue2 = cast<ConstantInt>(Q.QOperand2)->getSExtValue();

                                Type *I64Type = IntegerType::getInt64Ty(Context);

                                switch (Q.QPredicate) {
                                case CmpInst::Predicate::ICMP_SGT:
                                  if (ConstValue1 >= ConstValue2) {
                                    Value* GenerateConst = ConstantInt::get(I64Type, ConstValue1, true);
                                    QueryUpdate = {Q.QOperand1, GenerateConst, CmpInst::getSwappedPredicate(Q.QPredicate)};
                                  }
                                  break;
                                case CmpInst::Predicate::ICMP_SGE:
                                  if (ConstValue1 >= ConstValue2) {
                                    Value* GenerateConst = ConstantInt::get(I64Type, ConstValue1, true);
                                    QueryUpdate = {Q.QOperand1, GenerateConst, CmpInst::getSwappedPredicate(Q.QPredicate)};
                                  }
                                  break;
                                case CmpInst::Predicate::ICMP_SLT:
                                  if (ConstValue1 <= ConstValue2) {
                                    Value* GenerateConst = ConstantInt::get(I64Type, ConstValue1, true);
                                    QueryUpdate = {Q.QOperand1, GenerateConst, CmpInst::getSwappedPredicate(Q.QPredicate)};
                                  }
                                  break;
                                case CmpInst::Predicate::ICMP_SLE:
                                  if (ConstValue1 <= ConstValue2) {
                                    Value* GenerateConst = ConstantInt::get(I64Type, ConstValue1, true);
                                    QueryUpdate = {Q.QOperand1, GenerateConst, CmpInst::getSwappedPredicate(Q.QPredicate)};
                                  }
                                  break;
                                default:
                                  break;
                                }
                              }
                            }
                          }
                        }

                        /*
                        if (!SubsumingSuccess) {
                            // follow some format, second as constant
                            Query::QueryAnswer CurAnswer = Query::QueryAnswer::UNDEF;
//outs() << "Query Resolve In Subsuming Deny (" << QueryAnswerStringMap[CurAnswer] << "): " << Query::queryString(Q) << '\n' << "At " << PredBranch->getParent()->getName() << " -- " << *PredBranch << '\n' << '\n';
                            updateQueryAnswerMap(QueryUpdate, CurAnswer, PredBranch, CurrentInstQueryAnswerMap);
                        }
                        */
                      }
                    }

                    updateQuerySubstituteRelation(Q, QueryUpdate, CurrentInst, PredTerminator, CurrentInstQuerySubstituteMap, CurrentInstQuerySubstituteReverseMap);
                    updateQuerySubstituteRelation(QueryUpdate, QueryUpdate, PredTerminator, ConditionInst, CurrentInstQuerySubstituteMap, CurrentInstQuerySubstituteReverseMap);
                    initialQueryAnswerMap(QueryUpdate, PredTerminator, CurrentInstQueryAnswerMap);
                    updateStep1Worklist(QueryUpdate, ConditionInst, CurrentInstQueryAnswerMap, CurrentStep1WorkList);
                } else {
                    updateQuerySubstituteRelation(Q, QueryUpdate, CurrentInst, PredTerminator, CurrentInstQuerySubstituteMap, CurrentInstQuerySubstituteReverseMap);
                    updateStep1Worklist(QueryUpdate, PredTerminator, CurrentInstQueryAnswerMap, CurrentStep1WorkList);
                }
          }
      }
  }
  return;
}

bool checkExist(Instruction* Inst, Query& Q, std::unordered_map<Instruction*, std::unordered_set<Query, Query::QueryHashFunction>>& visitedInstQuery) {
    if (visitedInstQuery.find(Inst) == visitedInstQuery.end()) {
        return false;
    }
    if (visitedInstQuery[Inst].find(Q) == visitedInstQuery[Inst].end()) {
        return false;
    }
    return true;
}

struct InstQueryPair {
  Instruction* InstCheck;
  Query QueryCheck;
};

struct InfeasiblePathSummary {
  std::size_t GenQC;
  std::size_t ResolveQC;
  std::size_t TrueIPC;
  std::size_t FalseIPC;
};

void printInfeasiblePath(std::vector<InstQueryPair> &Path) {
    std::string PathPrint;
    raw_string_ostream Stream(PathPrint);
    /*
    Stream << "Path:" << "\n";
    for (int I = Path.size() - 1; I > -1; I--) {
      Stream << "([ " << *(Path[I].InstCheck) << " ] , " << Query::queryString(Path[I].QueryCheck) << ")\n";
    }
     */
    std::vector<BasicBlock*> BB;
    BB.reserve(50);
    for (int I = Path.size() - 1; I > -1; I--) {
        if (BB.size() > 0) {
            if ((Path[I].InstCheck)->getParent() == BB[BB.size() - 1]) {
                continue;
            }
        }
        BB.push_back((Path[I].InstCheck)->getParent());
    }

    for (std::size_t I = 0; I < BB.size(); I++) {
      Stream << BB[I]->getName().str() << ", ";
    }

    Stream << "\n";
    errs() << "\t\t" << PathPrint;
}

// find infeasible path
std::size_t infeasiblePath(Instruction* InitialInst, Query& InitialQuery, Query::QueryAnswer Answer, InstQueryAnswerMap& CurInstQueryAnswerMap, InstQuerySubstituteMap& CurInstQuerySubstituteReverseMap) {

    std::size_t PathCount = 0;

    if (CurInstQueryAnswerMap.find(InitialInst) == CurInstQueryAnswerMap.end()) {
        return PathCount;
    }

    std::vector<InstQueryPair> workList;
    workList.reserve(100);
    std::unordered_map<Instruction*, std::unordered_set<Query, Query::QueryHashFunction>> visitedInstQuery;

    workList.push_back({InitialInst, InitialQuery});

    while (!workList.empty()) {
        std::size_t CurSize = workList.size();
        InstQueryPair& Visiting = workList[CurSize - 1];

        // check whether all sub are visited
        Instruction* VisitInst = Visiting.InstCheck;
        Query& VisitQuery = Visiting.QueryCheck;

        // update visited query
        if (visitedInstQuery.find(VisitInst) == visitedInstQuery.end()) {
            visitedInstQuery[VisitInst] = std::unordered_set<Query, Query::QueryHashFunction>();
        }
        visitedInstQuery[VisitInst].insert(VisitQuery);

        bool AllVisited = true;
        for (auto& InstPreInst : CurInstQuerySubstituteReverseMap[VisitInst]) {

            Instruction* PreInst = InstPreInst.first;
            auto& QMap = CurInstQuerySubstituteReverseMap[VisitInst][PreInst];
            if (QMap.find(VisitQuery) == QMap.end()) {
                continue;
            }

            for (auto& Q : QMap[VisitQuery]) {
                Query Check = Q;
                if (checkExist(PreInst, Check, visitedInstQuery)) {
                    continue;
                }

                // check infeasible path criteria
                auto& AnswerMap = CurInstQueryAnswerMap[PreInst][Check];
                assert(AnswerMap.size() > 0);

                if (AnswerMap.find(Answer) != AnswerMap.end()) {
                    if (AnswerMap.size() == 1) {
                        // as start node, print current worklist
                        workList.push_back({PreInst, Check});
                        printInfeasiblePath(workList);
                        PathCount++;
                        workList.pop_back();
                        continue;
                    }
                    // not as start node, proceed
                } else {
                    continue;
                }

                AllVisited = false;
                workList.push_back({PreInst, Q});
                break;
            }

            if (!AllVisited) {
                break;
            }
        }

        if (AllVisited) {
            workList.pop_back();
        }
    }

    return PathCount;
}

// Infeasible Pass - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    InfeasiblePath() : ModulePass(ID) {}

    static InfeasiblePathSummary correlationDetect(Function *F, CmpInst* CompInst) {

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
      //outs() << "Start" << "\n";
      errs() << " ----------------------------------- " << "\n";
      errs() << "\t\tPredicate: " << Query::queryString(TestQuery) << "\n";

      // step 1: query correlation detection

      InstQueryAnswerMap CurInstQueryAnswerMap = InstQueryAnswerMap();
      InstQuerySubstituteMap CurInstQuerySubstituteMap = InstQuerySubstituteMap();
      InstQuerySubstituteMap CurReverseInstQuerySubstituteMap = InstQuerySubstituteMap();
      Step1WorkList CurStep1WorkList = Step1WorkList();

      // initial query checks
      Query::QueryAnswer IniQueryAnswer = Query::resolveQuery(TestQuery);
      if (IniQueryAnswer == Query::QueryAnswer::UNAVAIL) {
        //outs() << "Raise Query" << "\n";
        initialQueryAnswerMap(TestQuery, CompInst, CurInstQueryAnswerMap);
        substituteQuery(F, TestQuery, CompInst, CurInstQueryAnswerMap, CurStep1WorkList, CurInstQuerySubstituteMap, CurReverseInstQuerySubstituteMap);
      } else {
        //outs() << "Query Already Resolved (" << QueryAnswerStringMap[IniQueryAnswer] << ")\n";
        updateQueryAnswerMap(TestQuery, IniQueryAnswer, CompInst, CurInstQueryAnswerMap);
      }

      //outs() << "\n";
      //outs() << "Finish Initial Raise Query" << "\n";

      while (!CurStep1WorkList.empty()) {
          // pick one
          Instruction* CurrentInst;
          Query CurrentQuery;
          for (auto & QSetPair : CurStep1WorkList) {
              CurrentInst = QSetPair.first;
              auto & QSet = QSetPair.second;
              assert(!QSet.empty());
              // pick one query
              for (auto & Q : QSet) {
                  CurrentQuery = Q;
                  break;
              }
              break;
          }

          // remove them
          CurStep1WorkList[CurrentInst].erase(CurrentQuery);
          if (CurStep1WorkList[CurrentInst].empty()) {
              CurStep1WorkList.erase(CurrentInst);
          }
          //outs() << "Work List Remove : [ " << CurrentInst->getParent()->getName() << " ] : " << *CurrentInst << " -- " << Query::queryString(CurrentQuery) << "\n\n";

          /*
          Counter--;
          if (Counter == 0) {
              errs() << *CurrentInst << " --- " << Query::queryString(CurrentQuery);
              errs() << "Work List Size : " << CurStep1WorkList.size() << "\n";
              Counter = 100;
          }
          */

          Query::QueryAnswer CurQueryAnswer = Query::QueryAnswer::UNAVAIL;
          if (CurInstQueryAnswerMap.find(CurrentInst) != CurInstQueryAnswerMap.end()) {
              if (CurInstQueryAnswerMap[CurrentInst].find(CurrentQuery) != CurInstQueryAnswerMap[CurrentInst].end()) {
                  auto& AVAnswerSet = CurInstQueryAnswerMap[CurrentInst][CurrentQuery];
                  assert(AVAnswerSet.size() <= 1);
                  if (AVAnswerSet.size() == 1) {
                      if (AVAnswerSet.find(Query::QueryAnswer::TRUE) != AVAnswerSet.end()) {
                          CurQueryAnswer = Query::QueryAnswer::TRUE;
                      } else if (AVAnswerSet.find(Query::QueryAnswer::FALSE) != AVAnswerSet.end()) {
                          CurQueryAnswer = Query::QueryAnswer::FALSE;
                      } else if (AVAnswerSet.find(Query::QueryAnswer::UNDEF) != AVAnswerSet.end()) {
                          CurQueryAnswer = Query::QueryAnswer::UNDEF;
                      }
                      assert(CurQueryAnswer != Query::QueryAnswer::UNAVAIL);
                  }
              }
          }

          if (CurQueryAnswer == Query::QueryAnswer::UNAVAIL) {
              // raise query
              CurQueryAnswer = Query::resolveQuery(CurrentQuery);
              if (CurQueryAnswer == Query::QueryAnswer::UNAVAIL) {
                //outs() << "Raise Query --- " << *CurrentInst << " --- "  << Query::queryString(CurrentQuery) << "\n";
                  substituteQuery(F, CurrentQuery, CurrentInst, CurInstQueryAnswerMap, CurStep1WorkList, CurInstQuerySubstituteMap, CurReverseInstQuerySubstituteMap);
              } else {
                //outs() << "Query Already Resolved (" << QueryAnswerStringMap[CurQueryAnswer] << ")\n";
                  updateQueryAnswerMap(CurrentQuery, CurQueryAnswer, CurrentInst, CurInstQueryAnswerMap);
              }
          } else {
            //outs() << "Query Already Resolved (" << QueryAnswerStringMap[CurQueryAnswer] << ")\n";
          }
          //outs() << "\n\n";
      }

      //outs() << "WorkList Cleared, Step 1 Finish" << '\n';

      std::unordered_set<Query, Query::QueryHashFunction> TotalQuery;
      std::unordered_set<Query, Query::QueryHashFunction> ResolveQuery;

      for (auto& InstQuerysPair : CurInstQueryAnswerMap) {
          auto& Queries = InstQuerysPair.second;

          //std::string ResolvedQuery;
          for (auto& QueryAnswerPair : Queries) {
              auto& InstQuery = QueryAnswerPair.first;
              auto& Answers = QueryAnswerPair.second;
              if (Answers.size() > 0) {
                  assert(Answers.size() == 1);
                  for (auto& Answer : Answers) {
                      if (Answer == Query::QueryAnswer::TRUE) {
                          ResolveQuery.insert(InstQuery);
                      }
                      if (Answer == Query::QueryAnswer::FALSE) {
                          ResolveQuery.insert(InstQuery);
                      }
                  }
              }
              TotalQuery.insert(InstQuery);
          }
      }

      errs() << "\t\tTotal Generate Query: " << TotalQuery.size() << "\n";
      errs() << "\t\tResolved: " << ResolveQuery.size() << "\n";

      /*
      for (auto& Q : TotalQuery) {
          std::string Qstr = Query::queryString(Q);
          if (ResolveQuery.find(Q) != ResolveQuery.end()) {
              Qstr += " --- Solved";
          }
          outs() << Qstr << "\n";
      }
      outs() << "\n\n";
      */

      // step 2: global query answer

      //outs() << "Step 2 Start" << "\n";

      // generate successor map based on previous query records
      std::unordered_map<Instruction*, std::unordered_set<Instruction*>> SuccessorMap;
      for (auto& InsQueryPair : CurInstQuerySubstituteMap) {
          Instruction* Successor = InsQueryPair.first;
          auto& PredcessorQueryMap = InsQueryPair.second;
          for (auto& PredcessorQueryPair : PredcessorQueryMap) {
              Instruction* Predcessor = PredcessorQueryPair.first;
              if (SuccessorMap.find(Predcessor) == SuccessorMap.end()) {
                SuccessorMap[Predcessor] = std::unordered_set<Instruction*>();
              }
              SuccessorMap[Predcessor].insert(Successor);
          }
      }

      // generate resolved query records
      std::unordered_set<Instruction*> QueryResolveNodes;
      for (auto& InstQuerysPair : CurInstQueryAnswerMap) {
        auto& Queries = InstQuerysPair.second;
        //std::string ResolvedQuery;
        for (auto& QueryAnswerPair : Queries) {
          auto& Answers = QueryAnswerPair.second;
          if (Answers.size() > 0) {
            assert(Answers.size() == 1);
            QueryResolveNodes.insert(InstQuerysPair.first);
          }
        }
      }

      /*
      for (auto& InstPair : CurInstQuerySubstituteMap) {
          outs() << *(InstPair.first) << " ---- " << "\n";
          for (auto& InstQuerys : CurInstQuerySubstituteMap[InstPair.first]) {
              outs() << *(InstQuerys.first) << "\n";
              outs() << InstQuerys.second.size() << "\n";
          }
      }
      */

      std::unordered_set<Instruction*> CurStep2WorkList;
      for (auto& Inst : QueryResolveNodes) {
          if (SuccessorMap.find(Inst) == SuccessorMap.end()) {
              continue;
          }
          for (auto& Succ : SuccessorMap[Inst]) {
              CurStep2WorkList.insert(Succ);
          }
      }

      while (!CurStep2WorkList.empty()) {
          Instruction* CandInst;
          for (auto& Inst : CurStep2WorkList) {
              CandInst = Inst;
              break;
          }
          CurStep2WorkList.erase(CandInst);

          if (CurInstQueryAnswerMap.find(CandInst) == CurInstQueryAnswerMap.end()) {
              continue;
          }

          if (CurReverseInstQuerySubstituteMap.find(CandInst) == CurInstQuerySubstituteMap.end()) {
              continue;
          }

          bool WhetherChange = false;
          for (auto& Pred : CurReverseInstQuerySubstituteMap[CandInst]) {
              for (auto& QMap : CurReverseInstQuerySubstituteMap[CandInst][Pred.first]) {
                  Query SucQ = QMap.first;
                  auto& SucQueryAnswers = CurInstQueryAnswerMap[CandInst][SucQ];
                  for (auto& Q : QMap.second) {
                      for (auto& Answer: CurInstQueryAnswerMap[Pred.first][Q]) {
                          if (SucQueryAnswers.find(Answer) == SucQueryAnswers.end()) {
                              SucQueryAnswers.insert(Answer);
                              WhetherChange = true;
                          }
                      }
                  }
              }
          }

          if (WhetherChange) {
              if (SuccessorMap.find(CandInst) == SuccessorMap.end()) {
                  continue;
              }
              for (auto& Succ : SuccessorMap[CandInst]) {
                  CurStep2WorkList.insert(Succ);
              }
          }
      }

      /*
      for (auto& InstQuery : CurInstQueryAnswerMap) {
          outs() << *(InstQuery.first) << "\n";
          for (auto& QueryAnswers : CurInstQueryAnswerMap[InstQuery.first]) {
              std::string Answers = "[";
              for (auto& Answer : QueryAnswers.second) {
                  Answers += (QueryAnswerStringMap[Answer] + " , ");
              }
              Answers += "]";
              outs() << Query::queryString(QueryAnswers.first) << " : " << Answers << "\n\n";
          }
      }
      */

      // step 3: generate infeasible path

      std::size_t TrueIP = 0;
      std::size_t FalseIP = 0;

      if (CurInstQueryAnswerMap.find(CompInst) == CurInstQueryAnswerMap.end()) {
          errs() << "\t\tNo Infeasible Path Found" << "\n";
      } else {
          auto& QASet = CurInstQueryAnswerMap[CompInst][TestQuery];
          errs() << "\t\tFalse Infeasible Path:" << "\n";
          if (QASet.find(Query::TRUE) != QASet.end()) {
              FalseIP = infeasiblePath(CompInst, TestQuery, Query::QueryAnswer::TRUE, CurInstQueryAnswerMap, CurReverseInstQuerySubstituteMap);
          }
          errs() << "\n";
          errs() << "\t\tTrue Infeasible Path:" << "\n";
          if (QASet.find(Query::FALSE) != QASet.end()) {
              TrueIP = infeasiblePath(CompInst, TestQuery, Query::QueryAnswer::FALSE, CurInstQueryAnswerMap, CurReverseInstQuerySubstituteMap);
          }
      }
      errs() << " ----------------------------------- " << "\n\n";

      return {TotalQuery.size(), ResolveQuery.size(), TrueIP, FalseIP};
    }

    bool runOnModule(Module &M) override {

        errs() << "Infeasible Path Pass:" << "\n";

        std::size_t TotalPredicate = 0;
        std::size_t CorrelatedPredicate = 0;

        for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {
            errs().write_escaped((&*F)->getName()) << '\n';

            InfeasiblePathSummary FuncSummary;

            // all target instruction
            std::vector<CmpInst*> TargetCmpInst;
            for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {
              for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
                Instruction* InstInBlock = &*IN;
                if (!whetherTargetCompInst(InstInBlock)) {
                  continue;
                }
                CmpInst* CompInst = cast<CmpInst>(InstInBlock);
                TargetCmpInst.push_back(CompInst);
              }
            }

            // get all used compare branch, detect correlated query//outs() .write_escaped(F.getName()) << '\n';
            for (auto& Inst : TargetCmpInst) {
                //outs() << *Inst << '\n';
                //outs() << "Used:" << '\n';
                for (auto *U : Inst->users()) {
                  if (!isa<Instruction>(&*U)) {
                    //outs() << "Not A Instruction: " << *U << '\n';
                    continue;
                  }
                  //outs() << *cast<Instruction>(&*U) << '\n';
                }
                //outs() << "End Used" << '\n' << '\n';
                InfeasiblePathSummary PredicateSummary = correlationDetect(&*F, Inst);
                FuncSummary.GenQC = FuncSummary.GenQC + PredicateSummary.GenQC;
                FuncSummary.ResolveQC = FuncSummary.ResolveQC + PredicateSummary.GenQC;
                FuncSummary.TrueIPC = FuncSummary.TrueIPC + PredicateSummary.TrueIPC;
                FuncSummary.FalseIPC = FuncSummary.FalseIPC + PredicateSummary.FalseIPC;

                TotalPredicate ++;
                if (PredicateSummary.ResolveQC > 0) {
                    CorrelatedPredicate ++;
                }
            }

            errs() << "\n\n";
            errs() << "=========================================================" << "\n";
            errs() << "Function Summary:\n";
            errs() << "\t\tTotal Query Gen:\t" << FuncSummary.GenQC << "\n";
            errs() << "\t\tResolve Query:\t" << FuncSummary.ResolveQC << "\n";
            errs() << "\t\tTrue Infeasible Path:\t" << FuncSummary.TrueIPC << "\n";
            errs() << "\t\tTrue Infeasible Path:\t" << FuncSummary.FalseIPC << "\n";
            errs() << "=========================================================" << "\n\n\n";
        }

        double Percentage = (double(CorrelatedPredicate)/double(TotalPredicate)) * 100;

        errs() << "\n\n\n";
        errs() << "**********************************************************" << "\n";
        errs() << "Module Summary:\n";
        errs() << "\t\tTotal Predicate:\t" << TotalPredicate << "\n";
        errs() << "\t\tCorrelated Predicate:\t" << CorrelatedPredicate << "\n";
        errs() << "\t\tPercentage:\t" << Percentage << "%\n";
        errs() << "**********************************************************" << "\n";
        return false;
    }
};
} // namespace

// register pass
char InfeasiblePath::ID = 0;
static RegisterPass<InfeasiblePath> X("InfeasiblePath", "Infeasible Path Pass");

char CheckMetaFuncInfo::ID = 1;
static RegisterPass<CheckMetaFuncInfo> Y("MetaInfo", "Function Meta Pass");