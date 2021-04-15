; ModuleID = '../llvm/lib/Transforms/InfeasiblePath/test/src/infeasible_paths_test.c'
source_filename = "../llvm/lib/Transforms/InfeasiblePath/test/src/infeasible_paths_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"post first branch\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"x is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %v = alloca i32, align 4
  %x = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %w, align 4
  store i32 3, i32* %y, align 4
  store i32 0, i32* %v, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %z, align 4
  %call = call i32 @rand() #3
  %and = and i32 %call, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %v, align 4
  %0 = load i32, i32* %y, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end15
  %call2 = call i32 @rand() #3
  %and3 = and i32 %call2, 1
  %cmp4 = icmp eq i32 %and3, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %1 = load i32, i32* %v, align 4
  %cmp6 = icmp eq i32 %1, 5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  br label %while.end

if.end8:                                          ; preds = %if.then5
  %2 = load i32, i32* %x, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %v, align 4
  br label %if.end11

if.else:                                          ; preds = %while.body
  %4 = load i32, i32* %w, align 4
  %add10 = add nsw i32 %4, 1
  store i32 %add10, i32* %y, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end8
  %5 = load i32, i32* %v, align 4
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %y, align 4
  %add14 = add nsw i32 %6, %7
  store i32 %add14, i32* %z, align 4
  br label %while.end

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @rand() #3
  store i32 %call16, i32* %w, align 4
  %8 = load i32, i32* %w, align 4
  %mul = mul nsw i32 2, %8
  store i32 %mul, i32* %x, align 4
  br label %while.body

while.end:                                        ; preds = %if.then13, %if.then7
  %9 = load i32, i32* %w, align 4
  %10 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %9, %10
  %11 = load i32, i32* %v, align 4
  %add18 = add nsw i32 %add17, %11
  %12 = load i32, i32* %x, align 4
  %add19 = add nsw i32 %add18, %12
  %13 = load i32, i32* %z, align 4
  %add20 = add nsw i32 %add19, %13
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %add20)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
