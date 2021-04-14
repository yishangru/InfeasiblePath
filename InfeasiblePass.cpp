#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

namespace {
// Hello - The first implementation, without getAnalysisUsage.
struct InfeasiblePath : public FunctionPass {
  static char ID; // Pass identification, replacement for typeid
  InfeasiblePath() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    errs() << "Hello: ";
    errs().write_escaped(F.getName()) << '\n';
    return false;
  }
};
}

char InfeasiblePath::ID = 0;
static RegisterPass<InfeasiblePath> X("Infeasible Path", "Infeasible Path Pass");

// pass for collect information - function count, code length, etc.