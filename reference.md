1. Remove infeasible def-use from code (unsafe?)
https://stackoverflow.com/questions/34715947/delete-replace-code-from-llvm-ir

2. Print out LLVM inst
https://stackoverflow.com/questions/41959551/how-do-i-print-out-an-instruction-in-llvm


## Command
1. LLVM generate IR

bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/InfeasiblePath/test/sample.c -o ../llvm/lib/Transforms/InfeasiblePath/test/sample.ll