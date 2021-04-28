1. Remove infeasible def-use from code (unsafe?)
https://stackoverflow.com/questions/34715947/delete-replace-code-from-llvm-ir

2. Print out LLVM inst
https://stackoverflow.com/questions/41959551/how-do-i-print-out-an-instruction-in-llvm

3. CMU LLVM Crash
http://www.cs.cmu.edu/afs/cs/academic/class/15745-s15/public/lectures/L6-LLVM2-1up.pdf

4. Generate CFG and call graph
https://blog.csdn.net/weixin_46222091/article/details/105420409


## Command
1. Build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_TARGETS_TO_BUILD=host -DLLVM_ENABLE_STATS ../llvm

2. LLVM generate IR
bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample.ll
bin/clang -S -emit-llvm ../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/InfeasiblePath/test/src/infeasible_paths_test.c -o ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll

~/cs6241/llvm-project/build/bin/clang++ -S -emit-llvm -O1 -Xclang -disable-llvm-passes -DUSE_MPI=0 *.cc
~/cs6241/llvm-project/build/bin/llvm-link *.ll -o lulesh-single.ll
bin/opt -reg2mem ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-single.ll -o ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-final.ll

~/cs6241/llvm-project/build/bin/clang -S -emit-llvm *.c
~/cs6241/llvm-project/build/bin/llvm-link *.ll -o spec-bzip-single.ll
bin/opt -reg2mem ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-single.ll -o ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-final.ll

3. LLVM run pass
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll
bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/sample-no.ll

bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll 2> ../llvm/lib/Transforms/InfeasiblePath/infeasible.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll 2> ../llvm/lib/Transforms/InfeasiblePath/infeasible.meta

bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/lulesh.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/LULESH/lulesh-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/lulesh.meta

bin/opt -load lib/LLVMInfeasiblePath.so -InfeasiblePath -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/spec.results
bin/opt -load lib/LLVMInfeasiblePath.so -MetaInfo -disable-output ../llvm/lib/Transforms/InfeasiblePath/test/src/spec_bzip2_src/spec-bzip-final.ll 2> ../llvm/lib/Transforms/InfeasiblePath/spec.meta

4. Generate CFG
bin/opt -dot-callgraph ../llvm/lib/Transforms/InfeasiblePath/test/ir/infeasible_paths_test-no.ll
dot infeasible_paths_test-no.ll.callgraph.dot -Tpng -o infeasible.png

## Addition Tests
- Hash Test
```c++
   LLVMContext& Context = F.getContext();
    
   /* for hash test */
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
   outs() << "Q1 Hash : " << Query::QueryHashFunction{}(Q1);
   outs() << "Same Hash : " << Query::QueryHashFunction{}(Same);
   outs() << "PreChange Hash : " << Query::QueryHashFunction{}(PreChange);
   outs() << "PreChange Hash : " << Query::QueryHashFunction{}(Op2Change);
   assert(Q1 == Same && Query::QueryHashFunction{}(Q1) == Query::QueryHashFunction{}(Same));
   assert(!(Q1 == PreChange));
   assert(!(Q1 == Op2Change));
   assert(!(PreChange == Op2Change));

   std::unordered_set<Query, Query::QueryHashFunction> Checks;
   Checks.insert(Q1);
   assert(Checks.find(Same) != Checks.end());
   assert(Checks.find(PreChange) == Checks.end());
   assert(Checks.find(Op2Change) == Checks.end());
   Checks.insert(PreChange);
   assert(Checks.find(PreChange) != Checks.end());
   assert(Checks.find(Op2Change) == Checks.end());
   Checks.insert(Op2Change);
   assert(Checks.find(Op2Change) != Checks.end());
```

- Query Resolve Test
```cpp
    /* for query resolve test */
    LLVMContext& Context = F.getContext();

    int64_t OpValue = 60;

    Type *I32Type = IntegerType::getInt32Ty(Context);
    Value* GenerateConst1;
    Value* GenerateConst2;
    Value* GenerateConst3;
    Value* GenerateConst4;

    GenerateConst1 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst2 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst3 = ConstantInt::get(I32Type, OpValue - 10, true);
    Query EQQuery1 = {GenerateConst1, GenerateConst2, CmpInst::Predicate::ICMP_EQ};
    Query EQQuery2 = {GenerateConst1, GenerateConst3, CmpInst::Predicate::ICMP_EQ};
    assert(Query::resolveQuery(EQQuery1) == Query::QueryAnswer::TRUE);
    assert(Query::resolveQuery(EQQuery2) == Query::QueryAnswer::FALSE);

    GenerateConst1 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst2 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst3 = ConstantInt::get(I32Type, OpValue - 10, true);
    Query NEQuery1 = {GenerateConst1, GenerateConst2, CmpInst::Predicate::ICMP_NE};
    Query NEQuery2 = {GenerateConst1, GenerateConst3, CmpInst::Predicate::ICMP_NE};
    assert(Query::resolveQuery(NEQuery1) == Query::QueryAnswer::FALSE);
    assert(Query::resolveQuery(NEQuery2) == Query::QueryAnswer::TRUE);


    GenerateConst1 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst2 = ConstantInt::get(I32Type, OpValue, true);
    GenerateConst3 = ConstantInt::get(I32Type, OpValue + 10, true);
    GenerateConst4 = ConstantInt::get(I32Type, OpValue - 10, true);
    Query UGEQuery1 = {GenerateConst1, GenerateConst2, CmpInst::Predicate::ICMP_UGE};
    Query UGEQuery2 = {GenerateConst1, GenerateConst3, CmpInst::Predicate::ICMP_UGE};
    Query UGEQuery3 = {GenerateConst1, GenerateConst4, CmpInst::Predicate::ICMP_UGE};
    Query GEQuery1 = {GenerateConst1, GenerateConst2, CmpInst::Predicate::ICMP_SGE};
    Query GEQuery2 = {GenerateConst1, GenerateConst3, CmpInst::Predicate::ICMP_SGE};
    Query GEQuery3 = {GenerateConst1, GenerateConst4, CmpInst::Predicate::ICMP_SGE};
    assert(Query::resolveQuery(UGEQuery1) == Query::QueryAnswer::TRUE);
    assert(Query::resolveQuery(UGEQuery2) == Query::QueryAnswer::FALSE);
    assert(Query::resolveQuery(UGEQuery3) == Query::QueryAnswer::TRUE);
    assert(Query::resolveQuery(GEQuery1) == Query::QueryAnswer::TRUE);
    assert(Query::resolveQuery(GEQuery2) == Query::QueryAnswer::FALSE);
    assert(Query::resolveQuery(GEQuery3) == Query::QueryAnswer::TRUE);
```