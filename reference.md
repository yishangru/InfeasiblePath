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


## Addition Tests

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
    outs() << "Q1 Hash : " << QueryHashFunction{}(Q1);
    outs() << "Same Hash : " << QueryHashFunction{}(Same);
    outs() << "PreChange Hash : " << QueryHashFunction{}(PreChange);
    outs() << "PreChange Hash : " << QueryHashFunction{}(Op2Change);
    assert(Q1 == Same && QueryHashFunction{}(Q1) == QueryHashFunction{}(Same));
    assert(!(Q1 == PreChange));
    assert(!(Q1 == Op2Change));
    assert(!(PreChange == Op2Change));

    std::unordered_set<Query, QueryHashFunction> Checks;
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