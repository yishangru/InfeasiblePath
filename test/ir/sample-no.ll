; ModuleID = '../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c'
source_filename = "../llvm/lib/Transforms/InfeasiblePath/test/src/sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condition_branch() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %a, align 4
  %cmp2 = icmp sgt i32 %1, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 15, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 10, i32* %b, align 4
  %2 = load i32, i32* %b, align 4
  %cmp5 = icmp sge i32 %2, 10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 20, i32* %b, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  store i32 8, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp8 = icmp slt i32 %3, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 5, i32* %c, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %c, align 4
  %cmp11 = icmp slt i32 %4, %5
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 25, i32* %retval1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %6 = load i32, i32* %retval1, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @constant_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %retval1, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assignment_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  store i32 %0, i32* %b, align 4
  %1 = load i32, i32* %b, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assignment_addition_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %b, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assignment_addition_multiple_test() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 5, i32* %a, align 4
  store i32 10, i32* %b, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %retval1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condition_subsuming_change() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 15, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  %1 = load i32, i32* %a, align 4
  %cmp2 = icmp sgt i32 %1, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condition_subsuming_unchange() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 15, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  %1 = load i32, i32* %a, align 4
  %cmp2 = icmp sgt i32 %1, 10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condition_subsuming_undef() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 10, i32* %a, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  %1 = load i32, i32* %a, align 4
  %cmp2 = icmp sgt i32 %1, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %retval1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pass_parameter_undef(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 20, i32* %retval1, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %retval1, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
