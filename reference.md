1. Remove infeasible def-use from code (unsafe?)
https://stackoverflow.com/questions/34715947/delete-replace-code-from-llvm-ir

2. Print out LLVM inst
https://stackoverflow.com/questions/41959551/how-do-i-print-out-an-instruction-in-llvm

3. CMU LLVM Crash
http://www.cs.cmu.edu/afs/cs/academic/class/15745-s15/public/lectures/L6-LLVM2-1up.pdf


## Command
1. Build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_TARGETS_TO_BUILD=host ../llvm

2. LLVM generate IR
bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll
bin/clang -S -emit-llvm ../llvm/lib/Transforms/InfeasiblePath/test/src/infeasible_paths_test.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll

3. LLVM run pass
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll