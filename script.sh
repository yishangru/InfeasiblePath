echo "run experiments"
cd ~/cs6241/llvm-project/build
rm ../llvm/lib/Transforms/InfeasiblePath/infeasible.results
rm ../llvm/lib/Transforms/InfeasiblePath/infeasible.meta
rm ../llvm/lib/Transforms/InfeasiblePath/lulesh.results
rm ../llvm/lib/Transforms/InfeasiblePath/lulesh.meta
rm ../llvm/lib/Transforms/InfeasiblePath/spec.results
rm ../llvm/lib/Transforms/InfeasiblePath/spec.meta

echo "start infeasible"
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll 2> ../llvm/lib/Transforms/InfeasiblePath/infeasible.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll 2> ../llvm/lib/Transforms/InfeasiblePath/infeasible.meta
echo "end"

echo "start lulesh"
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/lulesh.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/lulesh.meta
echo "end"

echo "start spec"
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/spec.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/spec.meta
echo "end"