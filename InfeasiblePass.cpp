#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

namespace {
// Hello - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public FunctionPass {
  	static char ID; // Pass identification, replacement for typeid
  	InfeasiblePath() : FunctionPass(ID) {}

  	bool runOnFunction(Function &F) override {
            errs() << "Infeasible Path Pass: ";
            errs().write_escaped(F.getName()) << '\n';

            // step 1: query

            // step 2: global query answer

            // step 3: generate infeasible path

            // step 4: generate def-use pair

            // delete un-used def-use pair

            return false;
  	}
};
}

char InfeasiblePath::ID = 0;
static RegisterPass<InfeasiblePath> X("InfeasiblePath", "Infeasible Path Pass");


namespace {
// pass for collect information - function count, code length, etc.
struct CheckMetaFuncInfo : public ModulePass {
	static char ID;
	CheckMetaFuncInfo() : ModulePass(ID) {}

	bool runOnModule(Module &M) override {
            errs() << "CheckMetaFuncInfo Pass: ";

            /* get all predicate
            for (Module::)
            errs().write_escaped(F.getName()) << '\n';


            // Instruction* ii = &*i;
            // errs() << *ii << "\n";
            uint64_t

            */
            for (Module::iterator F = M.begin(), E = M.end(); F != E; ++F) {
            	errs().write_escaped(F->getName()) << '\n';
            }
            return false;
	}
};
}

char CheckMetaFuncInfo::ID = 1;
static RegisterPass<CheckMetaFuncInfo> Y("MetaInfo", "Function Meta Pass");