#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
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

static void printInfo(uint32_t BranchCount, uint32_t IntBranchCount, uint32_t IntTargetBranchCount, std::unordered_map<CmpInst::Predicate, uint32_t, std::hash<unsigned int>> & PredicateBranchCount) {
  outs() << "Func Branch: " << BranchCount << "\n";
  outs() << "Func Integer Branch: " << IntBranchCount << "\n";
  outs() << "Func Target Integer Branch: " << IntTargetBranchCount << "\n";
  for (auto& Pair : PredicateBranchCount) {
    outs() << PredicateStringMap[Pair.first] << ": " << Pair.second << "\n";
  }
}

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

enum QueryAnswer {
    UNDEF = 0,
    TRUE = 1,
    FALSE = 2,
    UNAVAIL = 3
};

struct Query {
  Value* Operand1;
  Value* Operand2;
  CmpInst::Predicate QueryPredicate;
};

// Infeasible Pass - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public FunctionPass {
  	static char ID; // Pass identification, replacement for typeid
  	InfeasiblePath() : FunctionPass(ID) {}

  	bool runOnFunction(Function &F) override {
            errs() << "Infeasible Path Pass: ";
            errs().write_escaped(F.getName()) << '\n';

            // get all target instruction
            std::vector<CmpInst*> TargetCmpInst;
            for (Function::iterator BB = F.begin(), BBE = F.end(); BB != BBE; ++BB) {
                for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
                    if (!whetherTargetCompInst(&*IN)) {
                        continue;
                    }
                    CmpInst* CompInst = cast<CmpInst>(&*IN);
                    TargetCmpInst.push_back(CompInst);
                }
            }

            outs().write_escaped(F.getName()) << '\n';
            for (auto& Inst : TargetCmpInst) {
                outs() << *Inst << '\n';
            }
            outs() << '\n';


            // isa<Argument>(V) value*, cast<Instruction>(V)

            // step 1: query

            // step 2: global query answer

            // step 3: generate infeasible path

            // step 4: generate def-use pair

            // delete un-used def-use pair

            return false;
  	}
};
} // namespace

/*
 * QueryReference: position in vector
 * QueryRecord: vector storing queries
 * BB: current basic block
 * BlockQueryAnswerMap: BasicBlock -> Query -> Answers
 * QuerySubstituteMap: Query -> BasicBlock -> Query
 */
static std::size_t substituteQuery(std::size_t QueryReference, std::vector<Query>& QueryRecord, BasicBlock* BB, std::unordered_map<BasicBlock*, std::unordered_map<std::size_t, std::unordered_set<QueryAnswer, std::hash<int>>>> &BlockQueryAnswerMap, std::unordered_map<std::size_t, std::unordered_map<BasicBlock*, std::size_t>> &QuerySubstituteMap) {

    return QueryReference;
}

/*
static QueryAnswer resolveQuery(std::size_t QueryReference, std::vector<Query>& QueryRecord, BasicBlock* BB, std::unordered_map<BasicBlock*, std::unordered_map<std::size_t, std::unordered_set<QueryAnswer, std::hash<int>>>> &BlockQueryAnswerMap) {
    return QueryAnswer::UNAVAIL;
}
*/


namespace {
// pass for collect information - function count, code length, etc.
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


// register pass
char InfeasiblePath::ID = 0;
static RegisterPass<InfeasiblePath> X("InfeasiblePath", "Infeasible Path Pass");

char CheckMetaFuncInfo::ID = 1;
static RegisterPass<CheckMetaFuncInfo> Y("MetaInfo", "Function Meta Pass");