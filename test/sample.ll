; ModuleID = '../llvm/lib/Transforms/InfeasiblePath/test/sample.c'
source_filename = "../llvm/lib/Transforms/InfeasiblePath/test/sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @condition_branch() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 5, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %cmp = icmp sgt i32 %2, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %a, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %3, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 15, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 10, i32* %b, align 4, !tbaa !2
  %5 = load i32, i32* %b, align 4, !tbaa !2
  %cmp5 = icmp sge i32 %5, 10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 20, i32* %b, align 4, !tbaa !2
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 8, i32* %c, align 4, !tbaa !2
  %7 = load i32, i32* %c, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %7, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 5, i32* %c, align 4, !tbaa !2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %8 = load i32, i32* %b, align 4, !tbaa !2
  %9 = load i32, i32* %c, align 4, !tbaa !2
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 25, i32* %retval1, align 4, !tbaa !2
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %10 = load i32, i32* %retval1, align 4, !tbaa !2
  %11 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #2
  %13 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #2
  %14 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #2
  ret i32 %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @constant_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 5, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %cmp = icmp sgt i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %retval1, align 4, !tbaa !2
  %4 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #2
  %5 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @assignment_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 5, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  %3 = load i32, i32* %a, align 4, !tbaa !2
  store i32 %3, i32* %b, align 4, !tbaa !2
  %4 = load i32, i32* %b, align 4, !tbaa !2
  %cmp = icmp sgt i32 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %retval1, align 4, !tbaa !2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @assignment_addition_test() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %b = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 5, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  %3 = load i32, i32* %a, align 4, !tbaa !2
  %add = add nsw i32 %3, 10
  store i32 %add, i32* %b, align 4, !tbaa !2
  %4 = load i32, i32* %b, align 4, !tbaa !2
  %cmp = icmp sgt i32 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %retval1, align 4, !tbaa !2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @assignment_addition_multiple_test() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %c = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 5, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 10, i32* %b, align 4, !tbaa !2
  %2 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #2
  %4 = load i32, i32* %a, align 4, !tbaa !2
  %5 = load i32, i32* %b, align 4, !tbaa !2
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %c, align 4, !tbaa !2
  %6 = load i32, i32* %c, align 4, !tbaa !2
  %cmp = icmp sgt i32 %6, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %retval1, align 4, !tbaa !2
  %8 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #2
  %9 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @condition_subsuming_change() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 15, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %cmp = icmp sgt i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  %3 = load i32, i32* %a, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %3, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* %retval1, align 4, !tbaa !2
  %5 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @condition_subsuming_unchange() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 15, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %cmp = icmp sgt i32 %2, 5
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  %3 = load i32, i32* %a, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %3, 10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* %retval1, align 4, !tbaa !2
  %5 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @condition_subsuming_undef() #0 {
entry:
  %a = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 10, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %2 = load i32, i32* %a, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, 20
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  %3 = load i32, i32* %a, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %3, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 15, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* %retval1, align 4, !tbaa !2
  %5 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pass_parameter_undef(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !2
  %0 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #2
  store i32 20, i32* %retval1, align 4, !tbaa !2
  %1 = load i32, i32* %a.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval1, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %retval1, align 4, !tbaa !2
  %3 = bitcast i32* %retval1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #2
  ret i32 %2
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
