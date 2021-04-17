; ModuleID = 'blocksort.c'
source_filename = "blocksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"        main sort initialise ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"        qsort [0x%x, 0x%x]   done %d   this %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"        %d pointers, %d sorted, %d scanned\0A\00", align 1
@incs = internal global [14 x i32] [i32 1, i32 4, i32 13, i32 40, i32 121, i32 364, i32 1093, i32 3280, i32 9841, i32 29524, i32 88573, i32 265720, i32 797161, i32 2391484], align 16

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_blockSort(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %ptr = alloca i32*, align 8
  %block = alloca i8*, align 8
  %ftab = alloca i32*, align 8
  %nblock = alloca i32, align 4
  %verb = alloca i32, align 4
  %wfact = alloca i32, align 4
  %quadrant = alloca i16*, align 8
  %budget = alloca i32, align 4
  %budgetInit = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !2
  %0 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #4
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %ptr1 = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 8
  %2 = load i32*, i32** %ptr1, align 8, !tbaa !6
  store i32* %2, i32** %ptr, align 8, !tbaa !2
  %3 = bitcast i8** %block to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #4
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %block2 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 9
  %5 = load i8*, i8** %block2, align 8, !tbaa !9
  store i8* %5, i8** %block, align 8, !tbaa !2
  %6 = bitcast i32** %ftab to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %ftab3 = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 6
  %8 = load i32*, i32** %ftab3, align 8, !tbaa !10
  store i32* %8, i32** %ftab, align 8, !tbaa !2
  %9 = bitcast i32* %nblock to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %nblock4 = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 17
  %11 = load i32, i32* %nblock4, align 4, !tbaa !11
  store i32 %11, i32* %nblock, align 4, !tbaa !12
  %12 = bitcast i32* %verb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %verbosity = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 28
  %14 = load i32, i32* %verbosity, align 8, !tbaa !13
  store i32 %14, i32* %verb, align 4, !tbaa !12
  %15 = bitcast i32* %wfact to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4
  %16 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %workFactor = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 12
  %17 = load i32, i32* %workFactor, align 8, !tbaa !14
  store i32 %17, i32* %wfact, align 4, !tbaa !12
  %18 = bitcast i16** %quadrant to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #4
  %19 = bitcast i32* %budget to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  %20 = bitcast i32* %budgetInit to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  %22 = load i32, i32* %nblock, align 4, !tbaa !12
  %cmp = icmp slt i32 %22, 10000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 4
  %24 = load i32*, i32** %arr1, align 8, !tbaa !15
  %25 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 5
  %26 = load i32*, i32** %arr2, align 8, !tbaa !16
  %27 = load i32*, i32** %ftab, align 8, !tbaa !2
  %28 = load i32, i32* %nblock, align 4, !tbaa !12
  %29 = load i32, i32* %verb, align 4, !tbaa !12
  call void @fallbackSort(i32* %24, i32* %26, i32* %27, i32 %28, i32 %29)
  br label %if.end33

if.else:                                          ; preds = %entry
  %30 = load i32, i32* %nblock, align 4, !tbaa !12
  %add = add nsw i32 %30, 34
  store i32 %add, i32* %i, align 4, !tbaa !12
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %and = and i32 %31, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %32 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %33 = load i8*, i8** %block, align 8, !tbaa !2
  %34 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %35 = bitcast i8* %arrayidx to i16*
  store i16* %35, i16** %quadrant, align 8, !tbaa !2
  %36 = load i32, i32* %wfact, align 4, !tbaa !12
  %cmp6 = icmp slt i32 %36, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, i32* %wfact, align 4, !tbaa !12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %37 = load i32, i32* %wfact, align 4, !tbaa !12
  %cmp9 = icmp sgt i32 %37, 100
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 100, i32* %wfact, align 4, !tbaa !12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %38 = load i32, i32* %nblock, align 4, !tbaa !12
  %39 = load i32, i32* %wfact, align 4, !tbaa !12
  %sub = sub nsw i32 %39, 1
  %div = sdiv i32 %sub, 3
  %mul = mul nsw i32 %38, %div
  store i32 %mul, i32* %budgetInit, align 4, !tbaa !12
  %40 = load i32, i32* %budgetInit, align 4, !tbaa !12
  store i32 %40, i32* %budget, align 4, !tbaa !12
  %41 = load i32*, i32** %ptr, align 8, !tbaa !2
  %42 = load i8*, i8** %block, align 8, !tbaa !2
  %43 = load i16*, i16** %quadrant, align 8, !tbaa !2
  %44 = load i32*, i32** %ftab, align 8, !tbaa !2
  %45 = load i32, i32* %nblock, align 4, !tbaa !12
  %46 = load i32, i32* %verb, align 4, !tbaa !12
  call void @mainSort(i32* %41, i8* %42, i16* %43, i32* %44, i32 %45, i32 %46, i32* %budget)
  %47 = load i32, i32* %verb, align 4, !tbaa !12
  %cmp12 = icmp sge i32 %47, 3
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %49 = load i32, i32* %budgetInit, align 4, !tbaa !12
  %50 = load i32, i32* %budget, align 4, !tbaa !12
  %sub14 = sub nsw i32 %49, %50
  %51 = load i32, i32* %nblock, align 4, !tbaa !12
  %52 = load i32, i32* %budgetInit, align 4, !tbaa !12
  %53 = load i32, i32* %budget, align 4, !tbaa !12
  %sub15 = sub nsw i32 %52, %53
  %conv = sitofp i32 %sub15 to float
  %54 = load i32, i32* %nblock, align 4, !tbaa !12
  %cmp16 = icmp eq i32 %54, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  %55 = load i32, i32* %nblock, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %55, %cond.false ]
  %conv18 = sitofp i32 %cond to float
  %div19 = fdiv float %conv, %conv18
  %conv20 = fpext float %div19 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %sub14, i32 %51, double %conv20)
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.end11
  %56 = load i32, i32* %budget, align 4, !tbaa !12
  %cmp22 = icmp slt i32 %56, 0
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %57 = load i32, i32* %verb, align 4, !tbaa !12
  %cmp25 = icmp sge i32 %57, 2
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %59 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %arr130 = getelementptr inbounds %struct.EState, %struct.EState* %59, i32 0, i32 4
  %60 = load i32*, i32** %arr130, align 8, !tbaa !15
  %61 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %arr231 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 5
  %62 = load i32*, i32** %arr231, align 8, !tbaa !16
  %63 = load i32*, i32** %ftab, align 8, !tbaa !2
  %64 = load i32, i32* %nblock, align 4, !tbaa !12
  %65 = load i32, i32* %verb, align 4, !tbaa !12
  call void @fallbackSort(i32* %60, i32* %62, i32* %63, i32 %64, i32 %65)
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end21
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  %66 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %origPtr = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 7
  store i32 -1, i32* %origPtr, align 8, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %67 = load i32, i32* %i, align 4, !tbaa !12
  %68 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %nblock34 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 17
  %69 = load i32, i32* %nblock34, align 4, !tbaa !11
  %cmp35 = icmp slt i32 %67, %69
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load i32*, i32** %ptr, align 8, !tbaa !2
  %71 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom37 = sext i32 %71 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %70, i64 %idxprom37
  %72 = load i32, i32* %arrayidx38, align 4, !tbaa !12
  %cmp39 = icmp eq i32 %72, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body
  %73 = load i32, i32* %i, align 4, !tbaa !12
  %74 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %origPtr42 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 7
  store i32 %73, i32* %origPtr42, align 8, !tbaa !17
  br label %for.end

if.end43:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %75 = load i32, i32* %i, align 4, !tbaa !12
  %inc44 = add nsw i32 %75, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.then41, %for.cond
  %76 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !2
  %origPtr45 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 7
  %77 = load i32, i32* %origPtr45, align 8, !tbaa !17
  %cmp46 = icmp ne i32 %77, -1
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %for.end
  call void @BZ2_bz__AssertH__fail(i32 1003)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.end
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4
  %79 = bitcast i32* %budgetInit to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4
  %80 = bitcast i32* %budget to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4
  %81 = bitcast i16** %quadrant to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #4
  %82 = bitcast i32* %wfact to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4
  %83 = bitcast i32* %verb to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4
  %84 = bitcast i32* %nblock to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #4
  %85 = bitcast i32** %ftab to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #4
  %86 = bitcast i8** %block to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #4
  %87 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @fallbackSort(i32* %fmap, i32* %eclass, i32* %bhtab, i32 %nblock, i32 %verb) #0 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %bhtab.addr = alloca i32*, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %ftab = alloca [257 x i32], align 16
  %ftabCopy = alloca [256 x i32], align 16
  %H = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %cc = alloca i32, align 4
  %cc1 = alloca i32, align 4
  %nNotDone = alloca i32, align 4
  %nBhtab = alloca i32, align 4
  %eclass8 = alloca i8*, align 8
  store i32* %fmap, i32** %fmap.addr, align 8, !tbaa !2
  store i32* %eclass, i32** %eclass.addr, align 8, !tbaa !2
  store i32* %bhtab, i32** %bhtab.addr, align 8, !tbaa !2
  store i32 %nblock, i32* %nblock.addr, align 4, !tbaa !12
  store i32 %verb, i32* %verb.addr, align 4, !tbaa !12
  %0 = bitcast [257 x i32]* %ftab to i8*
  call void @llvm.lifetime.start.p0i8(i64 1028, i8* %0) #4
  %1 = bitcast [256 x i32]* %ftabCopy to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #4
  %2 = bitcast i32* %H to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %cc1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %nNotDone to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %nBhtab to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i8** %eclass8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4
  %13 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %eclass8, align 8, !tbaa !2
  %15 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp = icmp sge i32 %15, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !12
  %cmp1 = icmp slt i32 %17, 257
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !12
  %21 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %20, %21
  br i1 %cmp3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %22 = load i8*, i8** %eclass8, align 8, !tbaa !2
  %23 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom5 = sext i32 %23 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 %idxprom5
  %24 = load i8, i8* %arrayidx6, align 1, !tbaa !21
  %idxprom7 = zext i8 %24 to i64
  %arrayidx8 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom7
  %25 = load i32, i32* %arrayidx8, align 4, !tbaa !12
  %inc9 = add nsw i32 %25, 1
  store i32 %inc9, i32* %arrayidx8, align 4, !tbaa !12
  br label %for.inc10

for.inc10:                                        ; preds = %for.body4
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %inc11 = add nsw i32 %26, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !12
  br label %for.cond2, !llvm.loop !22

for.end12:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end12
  %27 = load i32, i32* %i, align 4, !tbaa !12
  %cmp14 = icmp slt i32 %27, 256
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %28 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4, !tbaa !12
  %30 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i64 0, i64 %idxprom18
  store i32 %29, i32* %arrayidx19, align 4, !tbaa !12
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !12
  br label %for.cond13, !llvm.loop !23

for.end22:                                        ; preds = %for.cond13
  store i32 1, i32* %i, align 4, !tbaa !12
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc30, %for.end22
  %32 = load i32, i32* %i, align 4, !tbaa !12
  %cmp24 = icmp slt i32 %32, 257
  br i1 %cmp24, label %for.body25, label %for.end32

for.body25:                                       ; preds = %for.cond23
  %33 = load i32, i32* %i, align 4, !tbaa !12
  %sub = sub nsw i32 %33, 1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom26
  %34 = load i32, i32* %arrayidx27, align 4, !tbaa !12
  %35 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom28
  %36 = load i32, i32* %arrayidx29, align 4, !tbaa !12
  %add = add nsw i32 %36, %34
  store i32 %add, i32* %arrayidx29, align 4, !tbaa !12
  br label %for.inc30

for.inc30:                                        ; preds = %for.body25
  %37 = load i32, i32* %i, align 4, !tbaa !12
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !12
  br label %for.cond23, !llvm.loop !24

for.end32:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.end32
  %38 = load i32, i32* %i, align 4, !tbaa !12
  %39 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %38, %39
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %40 = load i8*, i8** %eclass8, align 8, !tbaa !2
  %41 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %40, i64 %idxprom36
  %42 = load i8, i8* %arrayidx37, align 1, !tbaa !21
  %conv = zext i8 %42 to i32
  store i32 %conv, i32* %j, align 4, !tbaa !12
  %43 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom38
  %44 = load i32, i32* %arrayidx39, align 4, !tbaa !12
  %sub40 = sub nsw i32 %44, 1
  store i32 %sub40, i32* %k, align 4, !tbaa !12
  %45 = load i32, i32* %k, align 4, !tbaa !12
  %46 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom41
  store i32 %45, i32* %arrayidx42, align 4, !tbaa !12
  %47 = load i32, i32* %i, align 4, !tbaa !12
  %48 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %49 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom43 = sext i32 %49 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %48, i64 %idxprom43
  store i32 %47, i32* %arrayidx44, align 4, !tbaa !12
  br label %for.inc45

for.inc45:                                        ; preds = %for.body35
  %50 = load i32, i32* %i, align 4, !tbaa !12
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, i32* %i, align 4, !tbaa !12
  br label %for.cond33, !llvm.loop !25

for.end47:                                        ; preds = %for.cond33
  %51 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %div = sdiv i32 %51, 32
  %add48 = add nsw i32 2, %div
  store i32 %add48, i32* %nBhtab, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc55, %for.end47
  %52 = load i32, i32* %i, align 4, !tbaa !12
  %53 = load i32, i32* %nBhtab, align 4, !tbaa !12
  %cmp50 = icmp slt i32 %52, %53
  br i1 %cmp50, label %for.body52, label %for.end57

for.body52:                                       ; preds = %for.cond49
  %54 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %55 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom53 = sext i32 %55 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %54, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4, !tbaa !12
  br label %for.inc55

for.inc55:                                        ; preds = %for.body52
  %56 = load i32, i32* %i, align 4, !tbaa !12
  %inc56 = add nsw i32 %56, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !12
  br label %for.cond49, !llvm.loop !26

for.end57:                                        ; preds = %for.cond49
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc68, %for.end57
  %57 = load i32, i32* %i, align 4, !tbaa !12
  %cmp59 = icmp slt i32 %57, 256
  br i1 %cmp59, label %for.body61, label %for.end70

for.body61:                                       ; preds = %for.cond58
  %58 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom62
  %59 = load i32, i32* %arrayidx63, align 4, !tbaa !12
  %and = and i32 %59, 31
  %shl = shl i32 1, %and
  %60 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %61 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom64 = sext i32 %61 to i64
  %arrayidx65 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i64 0, i64 %idxprom64
  %62 = load i32, i32* %arrayidx65, align 4, !tbaa !12
  %shr = ashr i32 %62, 5
  %idxprom66 = sext i32 %shr to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %60, i64 %idxprom66
  %63 = load i32, i32* %arrayidx67, align 4, !tbaa !12
  %or = or i32 %63, %shl
  store i32 %or, i32* %arrayidx67, align 4, !tbaa !12
  br label %for.inc68

for.inc68:                                        ; preds = %for.body61
  %64 = load i32, i32* %i, align 4, !tbaa !12
  %inc69 = add nsw i32 %64, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !12
  br label %for.cond58, !llvm.loop !27

for.end70:                                        ; preds = %for.cond58
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc96, %for.end70
  %65 = load i32, i32* %i, align 4, !tbaa !12
  %cmp72 = icmp slt i32 %65, 32
  br i1 %cmp72, label %for.body74, label %for.end98

for.body74:                                       ; preds = %for.cond71
  %66 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %67 = load i32, i32* %i, align 4, !tbaa !12
  %mul = mul nsw i32 2, %67
  %add75 = add nsw i32 %66, %mul
  %and76 = and i32 %add75, 31
  %shl77 = shl i32 1, %and76
  %68 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %69 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %70 = load i32, i32* %i, align 4, !tbaa !12
  %mul78 = mul nsw i32 2, %70
  %add79 = add nsw i32 %69, %mul78
  %shr80 = ashr i32 %add79, 5
  %idxprom81 = sext i32 %shr80 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %68, i64 %idxprom81
  %71 = load i32, i32* %arrayidx82, align 4, !tbaa !12
  %or83 = or i32 %71, %shl77
  store i32 %or83, i32* %arrayidx82, align 4, !tbaa !12
  %72 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %73 = load i32, i32* %i, align 4, !tbaa !12
  %mul84 = mul nsw i32 2, %73
  %add85 = add nsw i32 %72, %mul84
  %add86 = add nsw i32 %add85, 1
  %and87 = and i32 %add86, 31
  %shl88 = shl i32 1, %and87
  %neg = xor i32 %shl88, -1
  %74 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %75 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %76 = load i32, i32* %i, align 4, !tbaa !12
  %mul89 = mul nsw i32 2, %76
  %add90 = add nsw i32 %75, %mul89
  %add91 = add nsw i32 %add90, 1
  %shr92 = ashr i32 %add91, 5
  %idxprom93 = sext i32 %shr92 to i64
  %arrayidx94 = getelementptr inbounds i32, i32* %74, i64 %idxprom93
  %77 = load i32, i32* %arrayidx94, align 4, !tbaa !12
  %and95 = and i32 %77, %neg
  store i32 %and95, i32* %arrayidx94, align 4, !tbaa !12
  br label %for.inc96

for.inc96:                                        ; preds = %for.body74
  %78 = load i32, i32* %i, align 4, !tbaa !12
  %inc97 = add nsw i32 %78, 1
  store i32 %inc97, i32* %i, align 4, !tbaa !12
  br label %for.cond71, !llvm.loop !28

for.end98:                                        ; preds = %for.cond71
  store i32 1, i32* %H, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end267, %for.end98
  br label %while.body

while.body:                                       ; preds = %while.cond
  %79 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp99 = icmp sge i32 %79, 4
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %while.body
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %81 = load i32, i32* %H, align 4, !tbaa !12
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %while.body
  store i32 0, i32* %j, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc126, %if.end103
  %82 = load i32, i32* %i, align 4, !tbaa !12
  %83 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp105 = icmp slt i32 %82, %83
  br i1 %cmp105, label %for.body107, label %for.end128

for.body107:                                      ; preds = %for.cond104
  %84 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %85 = load i32, i32* %i, align 4, !tbaa !12
  %shr108 = ashr i32 %85, 5
  %idxprom109 = sext i32 %shr108 to i64
  %arrayidx110 = getelementptr inbounds i32, i32* %84, i64 %idxprom109
  %86 = load i32, i32* %arrayidx110, align 4, !tbaa !12
  %87 = load i32, i32* %i, align 4, !tbaa !12
  %and111 = and i32 %87, 31
  %shl112 = shl i32 1, %and111
  %and113 = and i32 %86, %shl112
  %tobool = icmp ne i32 %and113, 0
  br i1 %tobool, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.body107
  %88 = load i32, i32* %i, align 4, !tbaa !12
  store i32 %88, i32* %j, align 4, !tbaa !12
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.body107
  %89 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %90 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom116 = sext i32 %90 to i64
  %arrayidx117 = getelementptr inbounds i32, i32* %89, i64 %idxprom116
  %91 = load i32, i32* %arrayidx117, align 4, !tbaa !12
  %92 = load i32, i32* %H, align 4, !tbaa !12
  %sub118 = sub i32 %91, %92
  store i32 %sub118, i32* %k, align 4, !tbaa !12
  %93 = load i32, i32* %k, align 4, !tbaa !12
  %cmp119 = icmp slt i32 %93, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end115
  %94 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %95 = load i32, i32* %k, align 4, !tbaa !12
  %add122 = add nsw i32 %95, %94
  store i32 %add122, i32* %k, align 4, !tbaa !12
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end115
  %96 = load i32, i32* %j, align 4, !tbaa !12
  %97 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %98 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom124 = sext i32 %98 to i64
  %arrayidx125 = getelementptr inbounds i32, i32* %97, i64 %idxprom124
  store i32 %96, i32* %arrayidx125, align 4, !tbaa !12
  br label %for.inc126

for.inc126:                                       ; preds = %if.end123
  %99 = load i32, i32* %i, align 4, !tbaa !12
  %inc127 = add nsw i32 %99, 1
  store i32 %inc127, i32* %i, align 4, !tbaa !12
  br label %for.cond104, !llvm.loop !29

for.end128:                                       ; preds = %for.cond104
  store i32 0, i32* %nNotDone, align 4, !tbaa !12
  store i32 -1, i32* %r, align 4, !tbaa !12
  br label %while.cond129

while.cond129:                                    ; preds = %if.end254, %for.end128
  br label %while.body130

while.body130:                                    ; preds = %while.cond129
  %100 = load i32, i32* %r, align 4, !tbaa !12
  %add131 = add nsw i32 %100, 1
  store i32 %add131, i32* %k, align 4, !tbaa !12
  br label %while.cond132

while.cond132:                                    ; preds = %while.body142, %while.body130
  %101 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %102 = load i32, i32* %k, align 4, !tbaa !12
  %shr133 = ashr i32 %102, 5
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i32, i32* %101, i64 %idxprom134
  %103 = load i32, i32* %arrayidx135, align 4, !tbaa !12
  %104 = load i32, i32* %k, align 4, !tbaa !12
  %and136 = and i32 %104, 31
  %shl137 = shl i32 1, %and136
  %and138 = and i32 %103, %shl137
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond132
  %105 = load i32, i32* %k, align 4, !tbaa !12
  %and140 = and i32 %105, 31
  %tobool141 = icmp ne i32 %and140, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond132
  %106 = phi i1 [ false, %while.cond132 ], [ %tobool141, %land.rhs ]
  br i1 %106, label %while.body142, label %while.end

while.body142:                                    ; preds = %land.end
  %107 = load i32, i32* %k, align 4, !tbaa !12
  %inc143 = add nsw i32 %107, 1
  store i32 %inc143, i32* %k, align 4, !tbaa !12
  br label %while.cond132, !llvm.loop !30

while.end:                                        ; preds = %land.end
  %108 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %109 = load i32, i32* %k, align 4, !tbaa !12
  %shr144 = ashr i32 %109, 5
  %idxprom145 = sext i32 %shr144 to i64
  %arrayidx146 = getelementptr inbounds i32, i32* %108, i64 %idxprom145
  %110 = load i32, i32* %arrayidx146, align 4, !tbaa !12
  %111 = load i32, i32* %k, align 4, !tbaa !12
  %and147 = and i32 %111, 31
  %shl148 = shl i32 1, %and147
  %and149 = and i32 %110, %shl148
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then151, label %if.end172

if.then151:                                       ; preds = %while.end
  br label %while.cond152

while.cond152:                                    ; preds = %while.body158, %if.then151
  %112 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %113 = load i32, i32* %k, align 4, !tbaa !12
  %shr153 = ashr i32 %113, 5
  %idxprom154 = sext i32 %shr153 to i64
  %arrayidx155 = getelementptr inbounds i32, i32* %112, i64 %idxprom154
  %114 = load i32, i32* %arrayidx155, align 4, !tbaa !12
  %cmp156 = icmp eq i32 %114, -1
  br i1 %cmp156, label %while.body158, label %while.end160

while.body158:                                    ; preds = %while.cond152
  %115 = load i32, i32* %k, align 4, !tbaa !12
  %add159 = add nsw i32 %115, 32
  store i32 %add159, i32* %k, align 4, !tbaa !12
  br label %while.cond152, !llvm.loop !31

while.end160:                                     ; preds = %while.cond152
  br label %while.cond161

while.cond161:                                    ; preds = %while.body169, %while.end160
  %116 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %117 = load i32, i32* %k, align 4, !tbaa !12
  %shr162 = ashr i32 %117, 5
  %idxprom163 = sext i32 %shr162 to i64
  %arrayidx164 = getelementptr inbounds i32, i32* %116, i64 %idxprom163
  %118 = load i32, i32* %arrayidx164, align 4, !tbaa !12
  %119 = load i32, i32* %k, align 4, !tbaa !12
  %and165 = and i32 %119, 31
  %shl166 = shl i32 1, %and165
  %and167 = and i32 %118, %shl166
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %while.body169, label %while.end171

while.body169:                                    ; preds = %while.cond161
  %120 = load i32, i32* %k, align 4, !tbaa !12
  %inc170 = add nsw i32 %120, 1
  store i32 %inc170, i32* %k, align 4, !tbaa !12
  br label %while.cond161, !llvm.loop !32

while.end171:                                     ; preds = %while.cond161
  br label %if.end172

if.end172:                                        ; preds = %while.end171, %while.end
  %121 = load i32, i32* %k, align 4, !tbaa !12
  %sub173 = sub nsw i32 %121, 1
  store i32 %sub173, i32* %l, align 4, !tbaa !12
  %122 = load i32, i32* %l, align 4, !tbaa !12
  %123 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp174 = icmp sge i32 %122, %123
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end172
  br label %while.end255

if.end177:                                        ; preds = %if.end172
  br label %while.cond178

while.cond178:                                    ; preds = %while.body190, %if.end177
  %124 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %125 = load i32, i32* %k, align 4, !tbaa !12
  %shr179 = ashr i32 %125, 5
  %idxprom180 = sext i32 %shr179 to i64
  %arrayidx181 = getelementptr inbounds i32, i32* %124, i64 %idxprom180
  %126 = load i32, i32* %arrayidx181, align 4, !tbaa !12
  %127 = load i32, i32* %k, align 4, !tbaa !12
  %and182 = and i32 %127, 31
  %shl183 = shl i32 1, %and182
  %and184 = and i32 %126, %shl183
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %land.end189, label %land.rhs186

land.rhs186:                                      ; preds = %while.cond178
  %128 = load i32, i32* %k, align 4, !tbaa !12
  %and187 = and i32 %128, 31
  %tobool188 = icmp ne i32 %and187, 0
  br label %land.end189

land.end189:                                      ; preds = %land.rhs186, %while.cond178
  %129 = phi i1 [ false, %while.cond178 ], [ %tobool188, %land.rhs186 ]
  br i1 %129, label %while.body190, label %while.end192

while.body190:                                    ; preds = %land.end189
  %130 = load i32, i32* %k, align 4, !tbaa !12
  %inc191 = add nsw i32 %130, 1
  store i32 %inc191, i32* %k, align 4, !tbaa !12
  br label %while.cond178, !llvm.loop !33

while.end192:                                     ; preds = %land.end189
  %131 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %132 = load i32, i32* %k, align 4, !tbaa !12
  %shr193 = ashr i32 %132, 5
  %idxprom194 = sext i32 %shr193 to i64
  %arrayidx195 = getelementptr inbounds i32, i32* %131, i64 %idxprom194
  %133 = load i32, i32* %arrayidx195, align 4, !tbaa !12
  %134 = load i32, i32* %k, align 4, !tbaa !12
  %and196 = and i32 %134, 31
  %shl197 = shl i32 1, %and196
  %and198 = and i32 %133, %shl197
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.end221, label %if.then200

if.then200:                                       ; preds = %while.end192
  br label %while.cond201

while.cond201:                                    ; preds = %while.body207, %if.then200
  %135 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %136 = load i32, i32* %k, align 4, !tbaa !12
  %shr202 = ashr i32 %136, 5
  %idxprom203 = sext i32 %shr202 to i64
  %arrayidx204 = getelementptr inbounds i32, i32* %135, i64 %idxprom203
  %137 = load i32, i32* %arrayidx204, align 4, !tbaa !12
  %cmp205 = icmp eq i32 %137, 0
  br i1 %cmp205, label %while.body207, label %while.end209

while.body207:                                    ; preds = %while.cond201
  %138 = load i32, i32* %k, align 4, !tbaa !12
  %add208 = add nsw i32 %138, 32
  store i32 %add208, i32* %k, align 4, !tbaa !12
  br label %while.cond201, !llvm.loop !34

while.end209:                                     ; preds = %while.cond201
  br label %while.cond210

while.cond210:                                    ; preds = %while.body218, %while.end209
  %139 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %140 = load i32, i32* %k, align 4, !tbaa !12
  %shr211 = ashr i32 %140, 5
  %idxprom212 = sext i32 %shr211 to i64
  %arrayidx213 = getelementptr inbounds i32, i32* %139, i64 %idxprom212
  %141 = load i32, i32* %arrayidx213, align 4, !tbaa !12
  %142 = load i32, i32* %k, align 4, !tbaa !12
  %and214 = and i32 %142, 31
  %shl215 = shl i32 1, %and214
  %and216 = and i32 %141, %shl215
  %tobool217 = icmp ne i32 %and216, 0
  %lnot = xor i1 %tobool217, true
  br i1 %lnot, label %while.body218, label %while.end220

while.body218:                                    ; preds = %while.cond210
  %143 = load i32, i32* %k, align 4, !tbaa !12
  %inc219 = add nsw i32 %143, 1
  store i32 %inc219, i32* %k, align 4, !tbaa !12
  br label %while.cond210, !llvm.loop !35

while.end220:                                     ; preds = %while.cond210
  br label %if.end221

if.end221:                                        ; preds = %while.end220, %while.end192
  %144 = load i32, i32* %k, align 4, !tbaa !12
  %sub222 = sub nsw i32 %144, 1
  store i32 %sub222, i32* %r, align 4, !tbaa !12
  %145 = load i32, i32* %r, align 4, !tbaa !12
  %146 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp223 = icmp sge i32 %145, %146
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end221
  br label %while.end255

if.end226:                                        ; preds = %if.end221
  %147 = load i32, i32* %r, align 4, !tbaa !12
  %148 = load i32, i32* %l, align 4, !tbaa !12
  %cmp227 = icmp sgt i32 %147, %148
  br i1 %cmp227, label %if.then229, label %if.end254

if.then229:                                       ; preds = %if.end226
  %149 = load i32, i32* %r, align 4, !tbaa !12
  %150 = load i32, i32* %l, align 4, !tbaa !12
  %sub230 = sub nsw i32 %149, %150
  %add231 = add nsw i32 %sub230, 1
  %151 = load i32, i32* %nNotDone, align 4, !tbaa !12
  %add232 = add nsw i32 %151, %add231
  store i32 %add232, i32* %nNotDone, align 4, !tbaa !12
  %152 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %153 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %154 = load i32, i32* %l, align 4, !tbaa !12
  %155 = load i32, i32* %r, align 4, !tbaa !12
  call void @fallbackQSort3(i32* %152, i32* %153, i32 %154, i32 %155)
  store i32 -1, i32* %cc, align 4, !tbaa !12
  %156 = load i32, i32* %l, align 4, !tbaa !12
  store i32 %156, i32* %i, align 4, !tbaa !12
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc251, %if.then229
  %157 = load i32, i32* %i, align 4, !tbaa !12
  %158 = load i32, i32* %r, align 4, !tbaa !12
  %cmp234 = icmp sle i32 %157, %158
  br i1 %cmp234, label %for.body236, label %for.end253

for.body236:                                      ; preds = %for.cond233
  %159 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %160 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %161 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom237 = sext i32 %161 to i64
  %arrayidx238 = getelementptr inbounds i32, i32* %160, i64 %idxprom237
  %162 = load i32, i32* %arrayidx238, align 4, !tbaa !12
  %idxprom239 = zext i32 %162 to i64
  %arrayidx240 = getelementptr inbounds i32, i32* %159, i64 %idxprom239
  %163 = load i32, i32* %arrayidx240, align 4, !tbaa !12
  store i32 %163, i32* %cc1, align 4, !tbaa !12
  %164 = load i32, i32* %cc, align 4, !tbaa !12
  %165 = load i32, i32* %cc1, align 4, !tbaa !12
  %cmp241 = icmp ne i32 %164, %165
  br i1 %cmp241, label %if.then243, label %if.end250

if.then243:                                       ; preds = %for.body236
  %166 = load i32, i32* %i, align 4, !tbaa !12
  %and244 = and i32 %166, 31
  %shl245 = shl i32 1, %and244
  %167 = load i32*, i32** %bhtab.addr, align 8, !tbaa !2
  %168 = load i32, i32* %i, align 4, !tbaa !12
  %shr246 = ashr i32 %168, 5
  %idxprom247 = sext i32 %shr246 to i64
  %arrayidx248 = getelementptr inbounds i32, i32* %167, i64 %idxprom247
  %169 = load i32, i32* %arrayidx248, align 4, !tbaa !12
  %or249 = or i32 %169, %shl245
  store i32 %or249, i32* %arrayidx248, align 4, !tbaa !12
  %170 = load i32, i32* %cc1, align 4, !tbaa !12
  store i32 %170, i32* %cc, align 4, !tbaa !12
  br label %if.end250

if.end250:                                        ; preds = %if.then243, %for.body236
  br label %for.inc251

for.inc251:                                       ; preds = %if.end250
  %171 = load i32, i32* %i, align 4, !tbaa !12
  %inc252 = add nsw i32 %171, 1
  store i32 %inc252, i32* %i, align 4, !tbaa !12
  br label %for.cond233, !llvm.loop !36

for.end253:                                       ; preds = %for.cond233
  br label %if.end254

if.end254:                                        ; preds = %for.end253, %if.end226
  br label %while.cond129, !llvm.loop !37

while.end255:                                     ; preds = %if.then225, %if.then176
  %172 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp256 = icmp sge i32 %172, 4
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %while.end255
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %174 = load i32, i32* %nNotDone, align 4, !tbaa !12
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %while.end255
  %175 = load i32, i32* %H, align 4, !tbaa !12
  %mul261 = mul nsw i32 %175, 2
  store i32 %mul261, i32* %H, align 4, !tbaa !12
  %176 = load i32, i32* %H, align 4, !tbaa !12
  %177 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp262 = icmp sgt i32 %176, %177
  br i1 %cmp262, label %if.then266, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end260
  %178 = load i32, i32* %nNotDone, align 4, !tbaa !12
  %cmp264 = icmp eq i32 %178, 0
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %lor.lhs.false, %if.end260
  br label %while.end268

if.end267:                                        ; preds = %lor.lhs.false
  br label %while.cond, !llvm.loop !38

while.end268:                                     ; preds = %if.then266
  %179 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp269 = icmp sge i32 %179, 4
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %while.end268
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %while.end268
  store i32 0, i32* %j, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc293, %if.end273
  %181 = load i32, i32* %i, align 4, !tbaa !12
  %182 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp275 = icmp slt i32 %181, %182
  br i1 %cmp275, label %for.body277, label %for.end295

for.body277:                                      ; preds = %for.cond274
  br label %while.cond278

while.cond278:                                    ; preds = %while.body283, %for.body277
  %183 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom279 = sext i32 %183 to i64
  %arrayidx280 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i64 0, i64 %idxprom279
  %184 = load i32, i32* %arrayidx280, align 4, !tbaa !12
  %cmp281 = icmp eq i32 %184, 0
  br i1 %cmp281, label %while.body283, label %while.end285

while.body283:                                    ; preds = %while.cond278
  %185 = load i32, i32* %j, align 4, !tbaa !12
  %inc284 = add nsw i32 %185, 1
  store i32 %inc284, i32* %j, align 4, !tbaa !12
  br label %while.cond278, !llvm.loop !39

while.end285:                                     ; preds = %while.cond278
  %186 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom286 = sext i32 %186 to i64
  %arrayidx287 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i64 0, i64 %idxprom286
  %187 = load i32, i32* %arrayidx287, align 4, !tbaa !12
  %dec = add nsw i32 %187, -1
  store i32 %dec, i32* %arrayidx287, align 4, !tbaa !12
  %188 = load i32, i32* %j, align 4, !tbaa !12
  %conv288 = trunc i32 %188 to i8
  %189 = load i8*, i8** %eclass8, align 8, !tbaa !2
  %190 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %191 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom289 = sext i32 %191 to i64
  %arrayidx290 = getelementptr inbounds i32, i32* %190, i64 %idxprom289
  %192 = load i32, i32* %arrayidx290, align 4, !tbaa !12
  %idxprom291 = zext i32 %192 to i64
  %arrayidx292 = getelementptr inbounds i8, i8* %189, i64 %idxprom291
  store i8 %conv288, i8* %arrayidx292, align 1, !tbaa !21
  br label %for.inc293

for.inc293:                                       ; preds = %while.end285
  %193 = load i32, i32* %i, align 4, !tbaa !12
  %inc294 = add nsw i32 %193, 1
  store i32 %inc294, i32* %i, align 4, !tbaa !12
  br label %for.cond274, !llvm.loop !40

for.end295:                                       ; preds = %for.cond274
  %194 = load i32, i32* %j, align 4, !tbaa !12
  %cmp296 = icmp slt i32 %194, 256
  br i1 %cmp296, label %if.end299, label %if.then298

if.then298:                                       ; preds = %for.end295
  call void @BZ2_bz__AssertH__fail(i32 1005)
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %for.end295
  %195 = bitcast i8** %eclass8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %195) #4
  %196 = bitcast i32* %nBhtab to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %196) #4
  %197 = bitcast i32* %nNotDone to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %197) #4
  %198 = bitcast i32* %cc1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %198) #4
  %199 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %199) #4
  %200 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %200) #4
  %201 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %201) #4
  %202 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %202) #4
  %203 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %203) #4
  %204 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %204) #4
  %205 = bitcast i32* %H to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %205) #4
  %206 = bitcast [256 x i32]* %ftabCopy to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %206) #4
  %207 = bitcast [257 x i32]* %ftab to i8*
  call void @llvm.lifetime.end.p0i8(i64 1028, i8* %207) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mainSort(i32* %ptr, i8* %block, i16* %quadrant, i32* %ftab, i32 %nblock, i32 %verb, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %ftab.addr = alloca i32*, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ss = alloca i32, align 4
  %sb = alloca i32, align 4
  %runningOrder = alloca [256 x i32], align 16
  %bigDone = alloca [256 x i8], align 16
  %copyStart = alloca [256 x i32], align 16
  %copyEnd = alloca [256 x i32], align 16
  %c1 = alloca i8, align 1
  %numQSorted = alloca i32, align 4
  %s = alloca i16, align 2
  %vv = alloca i32, align 4
  %h = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %bbStart = alloca i32, align 4
  %bbSize = alloca i32, align 4
  %shifts = alloca i32, align 4
  %a2update = alloca i32, align 4
  %qVal = alloca i16, align 2
  store i32* %ptr, i32** %ptr.addr, align 8, !tbaa !2
  store i8* %block, i8** %block.addr, align 8, !tbaa !2
  store i16* %quadrant, i16** %quadrant.addr, align 8, !tbaa !2
  store i32* %ftab, i32** %ftab.addr, align 8, !tbaa !2
  store i32 %nblock, i32* %nblock.addr, align 4, !tbaa !12
  store i32 %verb, i32* %verb.addr, align 4, !tbaa !12
  store i32* %budget, i32** %budget.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = bitcast [256 x i32]* %runningOrder to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %5) #4
  %6 = bitcast [256 x i8]* %bigDone to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %6) #4
  %7 = bitcast [256 x i32]* %copyStart to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %7) #4
  %8 = bitcast [256 x i32]* %copyEnd to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %8) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c1) #4
  %9 = bitcast i32* %numQSorted to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i16* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %10) #4
  %11 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp = icmp sge i32 %11, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 65536, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !12
  %cmp1 = icmp sge i32 %13, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !12
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx2, align 1, !tbaa !21
  %conv = zext i8 %18 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, i32* %j, align 4, !tbaa !12
  %19 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %19, 1
  store i32 %sub, i32* %i, align 4, !tbaa !12
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc58, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !12
  %cmp4 = icmp sge i32 %20, 3
  br i1 %cmp4, label %for.body6, label %for.end60

for.body6:                                        ; preds = %for.cond3
  %21 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %21, i64 %idxprom7
  store i16 0, i16* %arrayidx8, align 2, !tbaa !42
  %23 = load i32, i32* %j, align 4, !tbaa !12
  %shr = ashr i32 %23, 8
  %24 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %25 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %24, i64 %idxprom9
  %26 = load i8, i8* %arrayidx10, align 1, !tbaa !21
  %conv11 = zext i8 %26 to i16
  %conv12 = zext i16 %conv11 to i32
  %shl13 = shl i32 %conv12, 8
  %or = or i32 %shr, %shl13
  store i32 %or, i32* %j, align 4, !tbaa !12
  %27 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %28 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %27, i64 %idxprom14
  %29 = load i32, i32* %arrayidx15, align 4, !tbaa !12
  %inc = add i32 %29, 1
  store i32 %inc, i32* %arrayidx15, align 4, !tbaa !12
  %30 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %sub16 = sub nsw i32 %31, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i16, i16* %30, i64 %idxprom17
  store i16 0, i16* %arrayidx18, align 2, !tbaa !42
  %32 = load i32, i32* %j, align 4, !tbaa !12
  %shr19 = ashr i32 %32, 8
  %33 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %34 = load i32, i32* %i, align 4, !tbaa !12
  %sub20 = sub nsw i32 %34, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %33, i64 %idxprom21
  %35 = load i8, i8* %arrayidx22, align 1, !tbaa !21
  %conv23 = zext i8 %35 to i16
  %conv24 = zext i16 %conv23 to i32
  %shl25 = shl i32 %conv24, 8
  %or26 = or i32 %shr19, %shl25
  store i32 %or26, i32* %j, align 4, !tbaa !12
  %36 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %37 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %36, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4, !tbaa !12
  %inc29 = add i32 %38, 1
  store i32 %inc29, i32* %arrayidx28, align 4, !tbaa !12
  %39 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %40 = load i32, i32* %i, align 4, !tbaa !12
  %sub30 = sub nsw i32 %40, 2
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i16, i16* %39, i64 %idxprom31
  store i16 0, i16* %arrayidx32, align 2, !tbaa !42
  %41 = load i32, i32* %j, align 4, !tbaa !12
  %shr33 = ashr i32 %41, 8
  %42 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %43 = load i32, i32* %i, align 4, !tbaa !12
  %sub34 = sub nsw i32 %43, 2
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 %idxprom35
  %44 = load i8, i8* %arrayidx36, align 1, !tbaa !21
  %conv37 = zext i8 %44 to i16
  %conv38 = zext i16 %conv37 to i32
  %shl39 = shl i32 %conv38, 8
  %or40 = or i32 %shr33, %shl39
  store i32 %or40, i32* %j, align 4, !tbaa !12
  %45 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %46 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %45, i64 %idxprom41
  %47 = load i32, i32* %arrayidx42, align 4, !tbaa !12
  %inc43 = add i32 %47, 1
  store i32 %inc43, i32* %arrayidx42, align 4, !tbaa !12
  %48 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %49 = load i32, i32* %i, align 4, !tbaa !12
  %sub44 = sub nsw i32 %49, 3
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i16, i16* %48, i64 %idxprom45
  store i16 0, i16* %arrayidx46, align 2, !tbaa !42
  %50 = load i32, i32* %j, align 4, !tbaa !12
  %shr47 = ashr i32 %50, 8
  %51 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %52 = load i32, i32* %i, align 4, !tbaa !12
  %sub48 = sub nsw i32 %52, 3
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8, i8* %51, i64 %idxprom49
  %53 = load i8, i8* %arrayidx50, align 1, !tbaa !21
  %conv51 = zext i8 %53 to i16
  %conv52 = zext i16 %conv51 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %shr47, %shl53
  store i32 %or54, i32* %j, align 4, !tbaa !12
  %54 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %55 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom55 = sext i32 %55 to i64
  %arrayidx56 = getelementptr inbounds i32, i32* %54, i64 %idxprom55
  %56 = load i32, i32* %arrayidx56, align 4, !tbaa !12
  %inc57 = add i32 %56, 1
  store i32 %inc57, i32* %arrayidx56, align 4, !tbaa !12
  br label %for.inc58

for.inc58:                                        ; preds = %for.body6
  %57 = load i32, i32* %i, align 4, !tbaa !12
  %sub59 = sub nsw i32 %57, 4
  store i32 %sub59, i32* %i, align 4, !tbaa !12
  br label %for.cond3, !llvm.loop !44

for.end60:                                        ; preds = %for.cond3
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc77, %for.end60
  %58 = load i32, i32* %i, align 4, !tbaa !12
  %cmp62 = icmp sge i32 %58, 0
  br i1 %cmp62, label %for.body64, label %for.end79

for.body64:                                       ; preds = %for.cond61
  %59 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %60 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom65 = sext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds i16, i16* %59, i64 %idxprom65
  store i16 0, i16* %arrayidx66, align 2, !tbaa !42
  %61 = load i32, i32* %j, align 4, !tbaa !12
  %shr67 = ashr i32 %61, 8
  %62 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %63 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom68 = sext i32 %63 to i64
  %arrayidx69 = getelementptr inbounds i8, i8* %62, i64 %idxprom68
  %64 = load i8, i8* %arrayidx69, align 1, !tbaa !21
  %conv70 = zext i8 %64 to i16
  %conv71 = zext i16 %conv70 to i32
  %shl72 = shl i32 %conv71, 8
  %or73 = or i32 %shr67, %shl72
  store i32 %or73, i32* %j, align 4, !tbaa !12
  %65 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %66 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom74 = sext i32 %66 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %65, i64 %idxprom74
  %67 = load i32, i32* %arrayidx75, align 4, !tbaa !12
  %inc76 = add i32 %67, 1
  store i32 %inc76, i32* %arrayidx75, align 4, !tbaa !12
  br label %for.inc77

for.inc77:                                        ; preds = %for.body64
  %68 = load i32, i32* %i, align 4, !tbaa !12
  %dec78 = add nsw i32 %68, -1
  store i32 %dec78, i32* %i, align 4, !tbaa !12
  br label %for.cond61, !llvm.loop !45

for.end79:                                        ; preds = %for.cond61
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %for.end79
  %69 = load i32, i32* %i, align 4, !tbaa !12
  %cmp81 = icmp slt i32 %69, 34
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %70 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %71 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds i8, i8* %70, i64 %idxprom84
  %72 = load i8, i8* %arrayidx85, align 1, !tbaa !21
  %73 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %74 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %75 = load i32, i32* %i, align 4, !tbaa !12
  %add = add nsw i32 %74, %75
  %idxprom86 = sext i32 %add to i64
  %arrayidx87 = getelementptr inbounds i8, i8* %73, i64 %idxprom86
  store i8 %72, i8* %arrayidx87, align 1, !tbaa !21
  %76 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %77 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %78 = load i32, i32* %i, align 4, !tbaa !12
  %add88 = add nsw i32 %77, %78
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i16, i16* %76, i64 %idxprom89
  store i16 0, i16* %arrayidx90, align 2, !tbaa !42
  br label %for.inc91

for.inc91:                                        ; preds = %for.body83
  %79 = load i32, i32* %i, align 4, !tbaa !12
  %inc92 = add nsw i32 %79, 1
  store i32 %inc92, i32* %i, align 4, !tbaa !12
  br label %for.cond80, !llvm.loop !46

for.end93:                                        ; preds = %for.cond80
  %80 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp94 = icmp sge i32 %80, 4
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %for.end93
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %for.end93
  store i32 1, i32* %i, align 4, !tbaa !12
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc109, %if.end98
  %82 = load i32, i32* %i, align 4, !tbaa !12
  %cmp100 = icmp sle i32 %82, 65536
  br i1 %cmp100, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond99
  %83 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %84 = load i32, i32* %i, align 4, !tbaa !12
  %sub103 = sub nsw i32 %84, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i32, i32* %83, i64 %idxprom104
  %85 = load i32, i32* %arrayidx105, align 4, !tbaa !12
  %86 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %87 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom106 = sext i32 %87 to i64
  %arrayidx107 = getelementptr inbounds i32, i32* %86, i64 %idxprom106
  %88 = load i32, i32* %arrayidx107, align 4, !tbaa !12
  %add108 = add i32 %88, %85
  store i32 %add108, i32* %arrayidx107, align 4, !tbaa !12
  br label %for.inc109

for.inc109:                                       ; preds = %for.body102
  %89 = load i32, i32* %i, align 4, !tbaa !12
  %inc110 = add nsw i32 %89, 1
  store i32 %inc110, i32* %i, align 4, !tbaa !12
  br label %for.cond99, !llvm.loop !47

for.end111:                                       ; preds = %for.cond99
  %90 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx112, align 1, !tbaa !21
  %conv113 = zext i8 %91 to i32
  %shl114 = shl i32 %conv113, 8
  %conv115 = trunc i32 %shl114 to i16
  store i16 %conv115, i16* %s, align 2, !tbaa !42
  %92 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %sub116 = sub nsw i32 %92, 1
  store i32 %sub116, i32* %i, align 4, !tbaa !12
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc187, %for.end111
  %93 = load i32, i32* %i, align 4, !tbaa !12
  %cmp118 = icmp sge i32 %93, 3
  br i1 %cmp118, label %for.body120, label %for.end189

for.body120:                                      ; preds = %for.cond117
  %94 = load i16, i16* %s, align 2, !tbaa !42
  %conv121 = zext i16 %94 to i32
  %shr122 = ashr i32 %conv121, 8
  %95 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %96 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom123 = sext i32 %96 to i64
  %arrayidx124 = getelementptr inbounds i8, i8* %95, i64 %idxprom123
  %97 = load i8, i8* %arrayidx124, align 1, !tbaa !21
  %conv125 = zext i8 %97 to i32
  %shl126 = shl i32 %conv125, 8
  %or127 = or i32 %shr122, %shl126
  %conv128 = trunc i32 %or127 to i16
  store i16 %conv128, i16* %s, align 2, !tbaa !42
  %98 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %99 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom129 = zext i16 %99 to i64
  %arrayidx130 = getelementptr inbounds i32, i32* %98, i64 %idxprom129
  %100 = load i32, i32* %arrayidx130, align 4, !tbaa !12
  %sub131 = sub i32 %100, 1
  store i32 %sub131, i32* %j, align 4, !tbaa !12
  %101 = load i32, i32* %j, align 4, !tbaa !12
  %102 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %103 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom132 = zext i16 %103 to i64
  %arrayidx133 = getelementptr inbounds i32, i32* %102, i64 %idxprom132
  store i32 %101, i32* %arrayidx133, align 4, !tbaa !12
  %104 = load i32, i32* %i, align 4, !tbaa !12
  %105 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %106 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom134 = sext i32 %106 to i64
  %arrayidx135 = getelementptr inbounds i32, i32* %105, i64 %idxprom134
  store i32 %104, i32* %arrayidx135, align 4, !tbaa !12
  %107 = load i16, i16* %s, align 2, !tbaa !42
  %conv136 = zext i16 %107 to i32
  %shr137 = ashr i32 %conv136, 8
  %108 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %109 = load i32, i32* %i, align 4, !tbaa !12
  %sub138 = sub nsw i32 %109, 1
  %idxprom139 = sext i32 %sub138 to i64
  %arrayidx140 = getelementptr inbounds i8, i8* %108, i64 %idxprom139
  %110 = load i8, i8* %arrayidx140, align 1, !tbaa !21
  %conv141 = zext i8 %110 to i32
  %shl142 = shl i32 %conv141, 8
  %or143 = or i32 %shr137, %shl142
  %conv144 = trunc i32 %or143 to i16
  store i16 %conv144, i16* %s, align 2, !tbaa !42
  %111 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %112 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom145 = zext i16 %112 to i64
  %arrayidx146 = getelementptr inbounds i32, i32* %111, i64 %idxprom145
  %113 = load i32, i32* %arrayidx146, align 4, !tbaa !12
  %sub147 = sub i32 %113, 1
  store i32 %sub147, i32* %j, align 4, !tbaa !12
  %114 = load i32, i32* %j, align 4, !tbaa !12
  %115 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %116 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom148 = zext i16 %116 to i64
  %arrayidx149 = getelementptr inbounds i32, i32* %115, i64 %idxprom148
  store i32 %114, i32* %arrayidx149, align 4, !tbaa !12
  %117 = load i32, i32* %i, align 4, !tbaa !12
  %sub150 = sub nsw i32 %117, 1
  %118 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %119 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom151 = sext i32 %119 to i64
  %arrayidx152 = getelementptr inbounds i32, i32* %118, i64 %idxprom151
  store i32 %sub150, i32* %arrayidx152, align 4, !tbaa !12
  %120 = load i16, i16* %s, align 2, !tbaa !42
  %conv153 = zext i16 %120 to i32
  %shr154 = ashr i32 %conv153, 8
  %121 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %122 = load i32, i32* %i, align 4, !tbaa !12
  %sub155 = sub nsw i32 %122, 2
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds i8, i8* %121, i64 %idxprom156
  %123 = load i8, i8* %arrayidx157, align 1, !tbaa !21
  %conv158 = zext i8 %123 to i32
  %shl159 = shl i32 %conv158, 8
  %or160 = or i32 %shr154, %shl159
  %conv161 = trunc i32 %or160 to i16
  store i16 %conv161, i16* %s, align 2, !tbaa !42
  %124 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %125 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom162 = zext i16 %125 to i64
  %arrayidx163 = getelementptr inbounds i32, i32* %124, i64 %idxprom162
  %126 = load i32, i32* %arrayidx163, align 4, !tbaa !12
  %sub164 = sub i32 %126, 1
  store i32 %sub164, i32* %j, align 4, !tbaa !12
  %127 = load i32, i32* %j, align 4, !tbaa !12
  %128 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %129 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom165 = zext i16 %129 to i64
  %arrayidx166 = getelementptr inbounds i32, i32* %128, i64 %idxprom165
  store i32 %127, i32* %arrayidx166, align 4, !tbaa !12
  %130 = load i32, i32* %i, align 4, !tbaa !12
  %sub167 = sub nsw i32 %130, 2
  %131 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %132 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom168 = sext i32 %132 to i64
  %arrayidx169 = getelementptr inbounds i32, i32* %131, i64 %idxprom168
  store i32 %sub167, i32* %arrayidx169, align 4, !tbaa !12
  %133 = load i16, i16* %s, align 2, !tbaa !42
  %conv170 = zext i16 %133 to i32
  %shr171 = ashr i32 %conv170, 8
  %134 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %135 = load i32, i32* %i, align 4, !tbaa !12
  %sub172 = sub nsw i32 %135, 3
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i8, i8* %134, i64 %idxprom173
  %136 = load i8, i8* %arrayidx174, align 1, !tbaa !21
  %conv175 = zext i8 %136 to i32
  %shl176 = shl i32 %conv175, 8
  %or177 = or i32 %shr171, %shl176
  %conv178 = trunc i32 %or177 to i16
  store i16 %conv178, i16* %s, align 2, !tbaa !42
  %137 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %138 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom179 = zext i16 %138 to i64
  %arrayidx180 = getelementptr inbounds i32, i32* %137, i64 %idxprom179
  %139 = load i32, i32* %arrayidx180, align 4, !tbaa !12
  %sub181 = sub i32 %139, 1
  store i32 %sub181, i32* %j, align 4, !tbaa !12
  %140 = load i32, i32* %j, align 4, !tbaa !12
  %141 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %142 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom182 = zext i16 %142 to i64
  %arrayidx183 = getelementptr inbounds i32, i32* %141, i64 %idxprom182
  store i32 %140, i32* %arrayidx183, align 4, !tbaa !12
  %143 = load i32, i32* %i, align 4, !tbaa !12
  %sub184 = sub nsw i32 %143, 3
  %144 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %145 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom185 = sext i32 %145 to i64
  %arrayidx186 = getelementptr inbounds i32, i32* %144, i64 %idxprom185
  store i32 %sub184, i32* %arrayidx186, align 4, !tbaa !12
  br label %for.inc187

for.inc187:                                       ; preds = %for.body120
  %146 = load i32, i32* %i, align 4, !tbaa !12
  %sub188 = sub nsw i32 %146, 4
  store i32 %sub188, i32* %i, align 4, !tbaa !12
  br label %for.cond117, !llvm.loop !48

for.end189:                                       ; preds = %for.cond117
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc209, %for.end189
  %147 = load i32, i32* %i, align 4, !tbaa !12
  %cmp191 = icmp sge i32 %147, 0
  br i1 %cmp191, label %for.body193, label %for.end211

for.body193:                                      ; preds = %for.cond190
  %148 = load i16, i16* %s, align 2, !tbaa !42
  %conv194 = zext i16 %148 to i32
  %shr195 = ashr i32 %conv194, 8
  %149 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %150 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom196 = sext i32 %150 to i64
  %arrayidx197 = getelementptr inbounds i8, i8* %149, i64 %idxprom196
  %151 = load i8, i8* %arrayidx197, align 1, !tbaa !21
  %conv198 = zext i8 %151 to i32
  %shl199 = shl i32 %conv198, 8
  %or200 = or i32 %shr195, %shl199
  %conv201 = trunc i32 %or200 to i16
  store i16 %conv201, i16* %s, align 2, !tbaa !42
  %152 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %153 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom202 = zext i16 %153 to i64
  %arrayidx203 = getelementptr inbounds i32, i32* %152, i64 %idxprom202
  %154 = load i32, i32* %arrayidx203, align 4, !tbaa !12
  %sub204 = sub i32 %154, 1
  store i32 %sub204, i32* %j, align 4, !tbaa !12
  %155 = load i32, i32* %j, align 4, !tbaa !12
  %156 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %157 = load i16, i16* %s, align 2, !tbaa !42
  %idxprom205 = zext i16 %157 to i64
  %arrayidx206 = getelementptr inbounds i32, i32* %156, i64 %idxprom205
  store i32 %155, i32* %arrayidx206, align 4, !tbaa !12
  %158 = load i32, i32* %i, align 4, !tbaa !12
  %159 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %160 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom207 = sext i32 %160 to i64
  %arrayidx208 = getelementptr inbounds i32, i32* %159, i64 %idxprom207
  store i32 %158, i32* %arrayidx208, align 4, !tbaa !12
  br label %for.inc209

for.inc209:                                       ; preds = %for.body193
  %161 = load i32, i32* %i, align 4, !tbaa !12
  %dec210 = add nsw i32 %161, -1
  store i32 %dec210, i32* %i, align 4, !tbaa !12
  br label %for.cond190, !llvm.loop !49

for.end211:                                       ; preds = %for.cond190
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc220, %for.end211
  %162 = load i32, i32* %i, align 4, !tbaa !12
  %cmp213 = icmp sle i32 %162, 255
  br i1 %cmp213, label %for.body215, label %for.end222

for.body215:                                      ; preds = %for.cond212
  %163 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom216 = sext i32 %163 to i64
  %arrayidx217 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i64 0, i64 %idxprom216
  store i8 0, i8* %arrayidx217, align 1, !tbaa !21
  %164 = load i32, i32* %i, align 4, !tbaa !12
  %165 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom218 = sext i32 %165 to i64
  %arrayidx219 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom218
  store i32 %164, i32* %arrayidx219, align 4, !tbaa !12
  br label %for.inc220

for.inc220:                                       ; preds = %for.body215
  %166 = load i32, i32* %i, align 4, !tbaa !12
  %inc221 = add nsw i32 %166, 1
  store i32 %inc221, i32* %i, align 4, !tbaa !12
  br label %for.cond212, !llvm.loop !50

for.end222:                                       ; preds = %for.cond212
  %167 = bitcast i32* %vv to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %167) #4
  %168 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %168) #4
  store i32 1, i32* %h, align 4, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end222
  %169 = load i32, i32* %h, align 4, !tbaa !12
  %mul = mul nsw i32 3, %169
  %add223 = add nsw i32 %mul, 1
  store i32 %add223, i32* %h, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %170 = load i32, i32* %h, align 4, !tbaa !12
  %cmp224 = icmp sle i32 %170, 256
  br i1 %cmp224, label %do.body, label %do.end, !llvm.loop !51

do.end:                                           ; preds = %do.cond
  br label %do.body226

do.body226:                                       ; preds = %do.cond273, %do.end
  %171 = load i32, i32* %h, align 4, !tbaa !12
  %div = sdiv i32 %171, 3
  store i32 %div, i32* %h, align 4, !tbaa !12
  %172 = load i32, i32* %h, align 4, !tbaa !12
  store i32 %172, i32* %i, align 4, !tbaa !12
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc270, %do.body226
  %173 = load i32, i32* %i, align 4, !tbaa !12
  %cmp228 = icmp sle i32 %173, 255
  br i1 %cmp228, label %for.body230, label %for.end272

for.body230:                                      ; preds = %for.cond227
  %174 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom231 = sext i32 %174 to i64
  %arrayidx232 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom231
  %175 = load i32, i32* %arrayidx232, align 4, !tbaa !12
  store i32 %175, i32* %vv, align 4, !tbaa !12
  %176 = load i32, i32* %i, align 4, !tbaa !12
  store i32 %176, i32* %j, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end267, %for.body230
  %177 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %178 = load i32, i32* %j, align 4, !tbaa !12
  %179 = load i32, i32* %h, align 4, !tbaa !12
  %sub233 = sub nsw i32 %178, %179
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom234
  %180 = load i32, i32* %arrayidx235, align 4, !tbaa !12
  %add236 = add nsw i32 %180, 1
  %shl237 = shl i32 %add236, 8
  %idxprom238 = sext i32 %shl237 to i64
  %arrayidx239 = getelementptr inbounds i32, i32* %177, i64 %idxprom238
  %181 = load i32, i32* %arrayidx239, align 4, !tbaa !12
  %182 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %183 = load i32, i32* %j, align 4, !tbaa !12
  %184 = load i32, i32* %h, align 4, !tbaa !12
  %sub240 = sub nsw i32 %183, %184
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom241
  %185 = load i32, i32* %arrayidx242, align 4, !tbaa !12
  %shl243 = shl i32 %185, 8
  %idxprom244 = sext i32 %shl243 to i64
  %arrayidx245 = getelementptr inbounds i32, i32* %182, i64 %idxprom244
  %186 = load i32, i32* %arrayidx245, align 4, !tbaa !12
  %sub246 = sub i32 %181, %186
  %187 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %188 = load i32, i32* %vv, align 4, !tbaa !12
  %add247 = add nsw i32 %188, 1
  %shl248 = shl i32 %add247, 8
  %idxprom249 = sext i32 %shl248 to i64
  %arrayidx250 = getelementptr inbounds i32, i32* %187, i64 %idxprom249
  %189 = load i32, i32* %arrayidx250, align 4, !tbaa !12
  %190 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %191 = load i32, i32* %vv, align 4, !tbaa !12
  %shl251 = shl i32 %191, 8
  %idxprom252 = sext i32 %shl251 to i64
  %arrayidx253 = getelementptr inbounds i32, i32* %190, i64 %idxprom252
  %192 = load i32, i32* %arrayidx253, align 4, !tbaa !12
  %sub254 = sub i32 %189, %192
  %cmp255 = icmp ugt i32 %sub246, %sub254
  br i1 %cmp255, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %193 = load i32, i32* %j, align 4, !tbaa !12
  %194 = load i32, i32* %h, align 4, !tbaa !12
  %sub257 = sub nsw i32 %193, %194
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom258
  %195 = load i32, i32* %arrayidx259, align 4, !tbaa !12
  %196 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom260 = sext i32 %196 to i64
  %arrayidx261 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom260
  store i32 %195, i32* %arrayidx261, align 4, !tbaa !12
  %197 = load i32, i32* %j, align 4, !tbaa !12
  %198 = load i32, i32* %h, align 4, !tbaa !12
  %sub262 = sub nsw i32 %197, %198
  store i32 %sub262, i32* %j, align 4, !tbaa !12
  %199 = load i32, i32* %j, align 4, !tbaa !12
  %200 = load i32, i32* %h, align 4, !tbaa !12
  %sub263 = sub nsw i32 %200, 1
  %cmp264 = icmp sle i32 %199, %sub263
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %while.body
  br label %zero

if.end267:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !52

while.end:                                        ; preds = %while.cond
  br label %zero

zero:                                             ; preds = %while.end, %if.then266
  %201 = load i32, i32* %vv, align 4, !tbaa !12
  %202 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom268 = sext i32 %202 to i64
  %arrayidx269 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom268
  store i32 %201, i32* %arrayidx269, align 4, !tbaa !12
  br label %for.inc270

for.inc270:                                       ; preds = %zero
  %203 = load i32, i32* %i, align 4, !tbaa !12
  %inc271 = add nsw i32 %203, 1
  store i32 %inc271, i32* %i, align 4, !tbaa !12
  br label %for.cond227, !llvm.loop !53

for.end272:                                       ; preds = %for.cond227
  br label %do.cond273

do.cond273:                                       ; preds = %for.end272
  %204 = load i32, i32* %h, align 4, !tbaa !12
  %cmp274 = icmp ne i32 %204, 1
  br i1 %cmp274, label %do.body226, label %do.end276, !llvm.loop !54

do.end276:                                        ; preds = %do.cond273
  %205 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %205) #4
  %206 = bitcast i32* %vv to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %206) #4
  store i32 0, i32* %numQSorted, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc507, %do.end276
  %207 = load i32, i32* %i, align 4, !tbaa !12
  %cmp278 = icmp sle i32 %207, 255
  br i1 %cmp278, label %for.body280, label %for.end509

for.body280:                                      ; preds = %for.cond277
  %208 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom281 = sext i32 %208 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i64 0, i64 %idxprom281
  %209 = load i32, i32* %arrayidx282, align 4, !tbaa !12
  store i32 %209, i32* %ss, align 4, !tbaa !12
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc327, %for.body280
  %210 = load i32, i32* %j, align 4, !tbaa !12
  %cmp284 = icmp sle i32 %210, 255
  br i1 %cmp284, label %for.body286, label %for.end329

for.body286:                                      ; preds = %for.cond283
  %211 = load i32, i32* %j, align 4, !tbaa !12
  %212 = load i32, i32* %ss, align 4, !tbaa !12
  %cmp287 = icmp ne i32 %211, %212
  br i1 %cmp287, label %if.then289, label %if.end326

if.then289:                                       ; preds = %for.body286
  %213 = load i32, i32* %ss, align 4, !tbaa !12
  %shl290 = shl i32 %213, 8
  %214 = load i32, i32* %j, align 4, !tbaa !12
  %add291 = add nsw i32 %shl290, %214
  store i32 %add291, i32* %sb, align 4, !tbaa !12
  %215 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %216 = load i32, i32* %sb, align 4, !tbaa !12
  %idxprom292 = sext i32 %216 to i64
  %arrayidx293 = getelementptr inbounds i32, i32* %215, i64 %idxprom292
  %217 = load i32, i32* %arrayidx293, align 4, !tbaa !12
  %and = and i32 %217, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end322, label %if.then294

if.then294:                                       ; preds = %if.then289
  %218 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %218) #4
  %219 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %220 = load i32, i32* %sb, align 4, !tbaa !12
  %idxprom295 = sext i32 %220 to i64
  %arrayidx296 = getelementptr inbounds i32, i32* %219, i64 %idxprom295
  %221 = load i32, i32* %arrayidx296, align 4, !tbaa !12
  %and297 = and i32 %221, -2097153
  store i32 %and297, i32* %lo, align 4, !tbaa !12
  %222 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %222) #4
  %223 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %224 = load i32, i32* %sb, align 4, !tbaa !12
  %add298 = add nsw i32 %224, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds i32, i32* %223, i64 %idxprom299
  %225 = load i32, i32* %arrayidx300, align 4, !tbaa !12
  %and301 = and i32 %225, -2097153
  %sub302 = sub i32 %and301, 1
  store i32 %sub302, i32* %hi, align 4, !tbaa !12
  %226 = load i32, i32* %hi, align 4, !tbaa !12
  %227 = load i32, i32* %lo, align 4, !tbaa !12
  %cmp303 = icmp sgt i32 %226, %227
  br i1 %cmp303, label %if.then305, label %if.end320

if.then305:                                       ; preds = %if.then294
  %228 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp306 = icmp sge i32 %228, 4
  br i1 %cmp306, label %if.then308, label %if.end312

if.then308:                                       ; preds = %if.then305
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %230 = load i32, i32* %ss, align 4, !tbaa !12
  %231 = load i32, i32* %j, align 4, !tbaa !12
  %232 = load i32, i32* %numQSorted, align 4, !tbaa !12
  %233 = load i32, i32* %hi, align 4, !tbaa !12
  %234 = load i32, i32* %lo, align 4, !tbaa !12
  %sub309 = sub nsw i32 %233, %234
  %add310 = add nsw i32 %sub309, 1
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %230, i32 %231, i32 %232, i32 %add310)
  br label %if.end312

if.end312:                                        ; preds = %if.then308, %if.then305
  %235 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %236 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %237 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %238 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %239 = load i32, i32* %lo, align 4, !tbaa !12
  %240 = load i32, i32* %hi, align 4, !tbaa !12
  %241 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  call void @mainQSort3(i32* %235, i8* %236, i16* %237, i32 %238, i32 %239, i32 %240, i32 2, i32* %241)
  %242 = load i32, i32* %hi, align 4, !tbaa !12
  %243 = load i32, i32* %lo, align 4, !tbaa !12
  %sub313 = sub nsw i32 %242, %243
  %add314 = add nsw i32 %sub313, 1
  %244 = load i32, i32* %numQSorted, align 4, !tbaa !12
  %add315 = add nsw i32 %244, %add314
  store i32 %add315, i32* %numQSorted, align 4, !tbaa !12
  %245 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %246 = load i32, i32* %245, align 4, !tbaa !12
  %cmp316 = icmp slt i32 %246, 0
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.end312
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end319:                                        ; preds = %if.end312
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.then294
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end320, %if.then318
  %247 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %247) #4
  %248 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %248) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup516 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end322

if.end322:                                        ; preds = %cleanup.cont, %if.then289
  %249 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %250 = load i32, i32* %sb, align 4, !tbaa !12
  %idxprom323 = sext i32 %250 to i64
  %arrayidx324 = getelementptr inbounds i32, i32* %249, i64 %idxprom323
  %251 = load i32, i32* %arrayidx324, align 4, !tbaa !12
  %or325 = or i32 %251, 2097152
  store i32 %or325, i32* %arrayidx324, align 4, !tbaa !12
  br label %if.end326

if.end326:                                        ; preds = %if.end322, %for.body286
  br label %for.inc327

for.inc327:                                       ; preds = %if.end326
  %252 = load i32, i32* %j, align 4, !tbaa !12
  %inc328 = add nsw i32 %252, 1
  store i32 %inc328, i32* %j, align 4, !tbaa !12
  br label %for.cond283, !llvm.loop !55

for.end329:                                       ; preds = %for.cond283
  %253 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom330 = sext i32 %253 to i64
  %arrayidx331 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i64 0, i64 %idxprom330
  %254 = load i8, i8* %arrayidx331, align 1, !tbaa !21
  %tobool332 = icmp ne i8 %254, 0
  br i1 %tobool332, label %if.then333, label %if.end334

if.then333:                                       ; preds = %for.end329
  call void @BZ2_bz__AssertH__fail(i32 1006)
  br label %if.end334

if.end334:                                        ; preds = %if.then333, %for.end329
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond335

for.cond335:                                      ; preds = %for.inc355, %if.end334
  %255 = load i32, i32* %j, align 4, !tbaa !12
  %cmp336 = icmp sle i32 %255, 255
  br i1 %cmp336, label %for.body338, label %for.end357

for.body338:                                      ; preds = %for.cond335
  %256 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %257 = load i32, i32* %j, align 4, !tbaa !12
  %shl339 = shl i32 %257, 8
  %258 = load i32, i32* %ss, align 4, !tbaa !12
  %add340 = add nsw i32 %shl339, %258
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds i32, i32* %256, i64 %idxprom341
  %259 = load i32, i32* %arrayidx342, align 4, !tbaa !12
  %and343 = and i32 %259, -2097153
  %260 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom344 = sext i32 %260 to i64
  %arrayidx345 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i64 0, i64 %idxprom344
  store i32 %and343, i32* %arrayidx345, align 4, !tbaa !12
  %261 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %262 = load i32, i32* %j, align 4, !tbaa !12
  %shl346 = shl i32 %262, 8
  %263 = load i32, i32* %ss, align 4, !tbaa !12
  %add347 = add nsw i32 %shl346, %263
  %add348 = add nsw i32 %add347, 1
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds i32, i32* %261, i64 %idxprom349
  %264 = load i32, i32* %arrayidx350, align 4, !tbaa !12
  %and351 = and i32 %264, -2097153
  %sub352 = sub i32 %and351, 1
  %265 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom353 = sext i32 %265 to i64
  %arrayidx354 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i64 0, i64 %idxprom353
  store i32 %sub352, i32* %arrayidx354, align 4, !tbaa !12
  br label %for.inc355

for.inc355:                                       ; preds = %for.body338
  %266 = load i32, i32* %j, align 4, !tbaa !12
  %inc356 = add nsw i32 %266, 1
  store i32 %inc356, i32* %j, align 4, !tbaa !12
  br label %for.cond335, !llvm.loop !56

for.end357:                                       ; preds = %for.cond335
  %267 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %268 = load i32, i32* %ss, align 4, !tbaa !12
  %shl358 = shl i32 %268, 8
  %idxprom359 = sext i32 %shl358 to i64
  %arrayidx360 = getelementptr inbounds i32, i32* %267, i64 %idxprom359
  %269 = load i32, i32* %arrayidx360, align 4, !tbaa !12
  %and361 = and i32 %269, -2097153
  store i32 %and361, i32* %j, align 4, !tbaa !12
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc388, %for.end357
  %270 = load i32, i32* %j, align 4, !tbaa !12
  %271 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom363 = sext i32 %271 to i64
  %arrayidx364 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i64 0, i64 %idxprom363
  %272 = load i32, i32* %arrayidx364, align 4, !tbaa !12
  %cmp365 = icmp slt i32 %270, %272
  br i1 %cmp365, label %for.body367, label %for.end390

for.body367:                                      ; preds = %for.cond362
  %273 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %274 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom368 = sext i32 %274 to i64
  %arrayidx369 = getelementptr inbounds i32, i32* %273, i64 %idxprom368
  %275 = load i32, i32* %arrayidx369, align 4, !tbaa !12
  %sub370 = sub i32 %275, 1
  store i32 %sub370, i32* %k, align 4, !tbaa !12
  %276 = load i32, i32* %k, align 4, !tbaa !12
  %cmp371 = icmp slt i32 %276, 0
  br i1 %cmp371, label %if.then373, label %if.end375

if.then373:                                       ; preds = %for.body367
  %277 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %278 = load i32, i32* %k, align 4, !tbaa !12
  %add374 = add nsw i32 %278, %277
  store i32 %add374, i32* %k, align 4, !tbaa !12
  br label %if.end375

if.end375:                                        ; preds = %if.then373, %for.body367
  %279 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %280 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom376 = sext i32 %280 to i64
  %arrayidx377 = getelementptr inbounds i8, i8* %279, i64 %idxprom376
  %281 = load i8, i8* %arrayidx377, align 1, !tbaa !21
  store i8 %281, i8* %c1, align 1, !tbaa !21
  %282 = load i8, i8* %c1, align 1, !tbaa !21
  %idxprom378 = zext i8 %282 to i64
  %arrayidx379 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i64 0, i64 %idxprom378
  %283 = load i8, i8* %arrayidx379, align 1, !tbaa !21
  %tobool380 = icmp ne i8 %283, 0
  br i1 %tobool380, label %if.end387, label %if.then381

if.then381:                                       ; preds = %if.end375
  %284 = load i32, i32* %k, align 4, !tbaa !12
  %285 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %286 = load i8, i8* %c1, align 1, !tbaa !21
  %idxprom382 = zext i8 %286 to i64
  %arrayidx383 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i64 0, i64 %idxprom382
  %287 = load i32, i32* %arrayidx383, align 4, !tbaa !12
  %inc384 = add nsw i32 %287, 1
  store i32 %inc384, i32* %arrayidx383, align 4, !tbaa !12
  %idxprom385 = sext i32 %287 to i64
  %arrayidx386 = getelementptr inbounds i32, i32* %285, i64 %idxprom385
  store i32 %284, i32* %arrayidx386, align 4, !tbaa !12
  br label %if.end387

if.end387:                                        ; preds = %if.then381, %if.end375
  br label %for.inc388

for.inc388:                                       ; preds = %if.end387
  %288 = load i32, i32* %j, align 4, !tbaa !12
  %inc389 = add nsw i32 %288, 1
  store i32 %inc389, i32* %j, align 4, !tbaa !12
  br label %for.cond362, !llvm.loop !57

for.end390:                                       ; preds = %for.cond362
  %289 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %290 = load i32, i32* %ss, align 4, !tbaa !12
  %add391 = add nsw i32 %290, 1
  %shl392 = shl i32 %add391, 8
  %idxprom393 = sext i32 %shl392 to i64
  %arrayidx394 = getelementptr inbounds i32, i32* %289, i64 %idxprom393
  %291 = load i32, i32* %arrayidx394, align 4, !tbaa !12
  %and395 = and i32 %291, -2097153
  %sub396 = sub i32 %and395, 1
  store i32 %sub396, i32* %j, align 4, !tbaa !12
  br label %for.cond397

for.cond397:                                      ; preds = %for.inc423, %for.end390
  %292 = load i32, i32* %j, align 4, !tbaa !12
  %293 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom398 = sext i32 %293 to i64
  %arrayidx399 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i64 0, i64 %idxprom398
  %294 = load i32, i32* %arrayidx399, align 4, !tbaa !12
  %cmp400 = icmp sgt i32 %292, %294
  br i1 %cmp400, label %for.body402, label %for.end425

for.body402:                                      ; preds = %for.cond397
  %295 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %296 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom403 = sext i32 %296 to i64
  %arrayidx404 = getelementptr inbounds i32, i32* %295, i64 %idxprom403
  %297 = load i32, i32* %arrayidx404, align 4, !tbaa !12
  %sub405 = sub i32 %297, 1
  store i32 %sub405, i32* %k, align 4, !tbaa !12
  %298 = load i32, i32* %k, align 4, !tbaa !12
  %cmp406 = icmp slt i32 %298, 0
  br i1 %cmp406, label %if.then408, label %if.end410

if.then408:                                       ; preds = %for.body402
  %299 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %300 = load i32, i32* %k, align 4, !tbaa !12
  %add409 = add nsw i32 %300, %299
  store i32 %add409, i32* %k, align 4, !tbaa !12
  br label %if.end410

if.end410:                                        ; preds = %if.then408, %for.body402
  %301 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %302 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom411 = sext i32 %302 to i64
  %arrayidx412 = getelementptr inbounds i8, i8* %301, i64 %idxprom411
  %303 = load i8, i8* %arrayidx412, align 1, !tbaa !21
  store i8 %303, i8* %c1, align 1, !tbaa !21
  %304 = load i8, i8* %c1, align 1, !tbaa !21
  %idxprom413 = zext i8 %304 to i64
  %arrayidx414 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i64 0, i64 %idxprom413
  %305 = load i8, i8* %arrayidx414, align 1, !tbaa !21
  %tobool415 = icmp ne i8 %305, 0
  br i1 %tobool415, label %if.end422, label %if.then416

if.then416:                                       ; preds = %if.end410
  %306 = load i32, i32* %k, align 4, !tbaa !12
  %307 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %308 = load i8, i8* %c1, align 1, !tbaa !21
  %idxprom417 = zext i8 %308 to i64
  %arrayidx418 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i64 0, i64 %idxprom417
  %309 = load i32, i32* %arrayidx418, align 4, !tbaa !12
  %dec419 = add nsw i32 %309, -1
  store i32 %dec419, i32* %arrayidx418, align 4, !tbaa !12
  %idxprom420 = sext i32 %309 to i64
  %arrayidx421 = getelementptr inbounds i32, i32* %307, i64 %idxprom420
  store i32 %306, i32* %arrayidx421, align 4, !tbaa !12
  br label %if.end422

if.end422:                                        ; preds = %if.then416, %if.end410
  br label %for.inc423

for.inc423:                                       ; preds = %if.end422
  %310 = load i32, i32* %j, align 4, !tbaa !12
  %dec424 = add nsw i32 %310, -1
  store i32 %dec424, i32* %j, align 4, !tbaa !12
  br label %for.cond397, !llvm.loop !58

for.end425:                                       ; preds = %for.cond397
  %311 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom426 = sext i32 %311 to i64
  %arrayidx427 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i64 0, i64 %idxprom426
  %312 = load i32, i32* %arrayidx427, align 4, !tbaa !12
  %sub428 = sub nsw i32 %312, 1
  %313 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom429 = sext i32 %313 to i64
  %arrayidx430 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i64 0, i64 %idxprom429
  %314 = load i32, i32* %arrayidx430, align 4, !tbaa !12
  %cmp431 = icmp eq i32 %sub428, %314
  br i1 %cmp431, label %if.end443, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end425
  %315 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom433 = sext i32 %315 to i64
  %arrayidx434 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i64 0, i64 %idxprom433
  %316 = load i32, i32* %arrayidx434, align 4, !tbaa !12
  %cmp435 = icmp eq i32 %316, 0
  br i1 %cmp435, label %land.lhs.true, label %if.then442

land.lhs.true:                                    ; preds = %lor.lhs.false
  %317 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom437 = sext i32 %317 to i64
  %arrayidx438 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i64 0, i64 %idxprom437
  %318 = load i32, i32* %arrayidx438, align 4, !tbaa !12
  %319 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %sub439 = sub nsw i32 %319, 1
  %cmp440 = icmp eq i32 %318, %sub439
  br i1 %cmp440, label %if.end443, label %if.then442

if.then442:                                       ; preds = %land.lhs.true, %lor.lhs.false
  call void @BZ2_bz__AssertH__fail(i32 1007)
  br label %if.end443

if.end443:                                        ; preds = %if.then442, %land.lhs.true, %for.end425
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond444

for.cond444:                                      ; preds = %for.inc453, %if.end443
  %320 = load i32, i32* %j, align 4, !tbaa !12
  %cmp445 = icmp sle i32 %320, 255
  br i1 %cmp445, label %for.body447, label %for.end455

for.body447:                                      ; preds = %for.cond444
  %321 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %322 = load i32, i32* %j, align 4, !tbaa !12
  %shl448 = shl i32 %322, 8
  %323 = load i32, i32* %ss, align 4, !tbaa !12
  %add449 = add nsw i32 %shl448, %323
  %idxprom450 = sext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds i32, i32* %321, i64 %idxprom450
  %324 = load i32, i32* %arrayidx451, align 4, !tbaa !12
  %or452 = or i32 %324, 2097152
  store i32 %or452, i32* %arrayidx451, align 4, !tbaa !12
  br label %for.inc453

for.inc453:                                       ; preds = %for.body447
  %325 = load i32, i32* %j, align 4, !tbaa !12
  %inc454 = add nsw i32 %325, 1
  store i32 %inc454, i32* %j, align 4, !tbaa !12
  br label %for.cond444, !llvm.loop !59

for.end455:                                       ; preds = %for.cond444
  %326 = load i32, i32* %ss, align 4, !tbaa !12
  %idxprom456 = sext i32 %326 to i64
  %arrayidx457 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i64 0, i64 %idxprom456
  store i8 1, i8* %arrayidx457, align 1, !tbaa !21
  %327 = load i32, i32* %i, align 4, !tbaa !12
  %cmp458 = icmp slt i32 %327, 255
  br i1 %cmp458, label %if.then460, label %if.end506

if.then460:                                       ; preds = %for.end455
  %328 = bitcast i32* %bbStart to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %328) #4
  %329 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %330 = load i32, i32* %ss, align 4, !tbaa !12
  %shl461 = shl i32 %330, 8
  %idxprom462 = sext i32 %shl461 to i64
  %arrayidx463 = getelementptr inbounds i32, i32* %329, i64 %idxprom462
  %331 = load i32, i32* %arrayidx463, align 4, !tbaa !12
  %and464 = and i32 %331, -2097153
  store i32 %and464, i32* %bbStart, align 4, !tbaa !12
  %332 = bitcast i32* %bbSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %332) #4
  %333 = load i32*, i32** %ftab.addr, align 8, !tbaa !2
  %334 = load i32, i32* %ss, align 4, !tbaa !12
  %add465 = add nsw i32 %334, 1
  %shl466 = shl i32 %add465, 8
  %idxprom467 = sext i32 %shl466 to i64
  %arrayidx468 = getelementptr inbounds i32, i32* %333, i64 %idxprom467
  %335 = load i32, i32* %arrayidx468, align 4, !tbaa !12
  %and469 = and i32 %335, -2097153
  %336 = load i32, i32* %bbStart, align 4, !tbaa !12
  %sub470 = sub i32 %and469, %336
  store i32 %sub470, i32* %bbSize, align 4, !tbaa !12
  %337 = bitcast i32* %shifts to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %337) #4
  store i32 0, i32* %shifts, align 4, !tbaa !12
  br label %while.cond471

while.cond471:                                    ; preds = %while.body475, %if.then460
  %338 = load i32, i32* %bbSize, align 4, !tbaa !12
  %339 = load i32, i32* %shifts, align 4, !tbaa !12
  %shr472 = ashr i32 %338, %339
  %cmp473 = icmp sgt i32 %shr472, 65534
  br i1 %cmp473, label %while.body475, label %while.end477

while.body475:                                    ; preds = %while.cond471
  %340 = load i32, i32* %shifts, align 4, !tbaa !12
  %inc476 = add nsw i32 %340, 1
  store i32 %inc476, i32* %shifts, align 4, !tbaa !12
  br label %while.cond471, !llvm.loop !60

while.end477:                                     ; preds = %while.cond471
  %341 = load i32, i32* %bbSize, align 4, !tbaa !12
  %sub478 = sub nsw i32 %341, 1
  store i32 %sub478, i32* %j, align 4, !tbaa !12
  br label %for.cond479

for.cond479:                                      ; preds = %for.inc497, %while.end477
  %342 = load i32, i32* %j, align 4, !tbaa !12
  %cmp480 = icmp sge i32 %342, 0
  br i1 %cmp480, label %for.body482, label %for.end499

for.body482:                                      ; preds = %for.cond479
  %343 = bitcast i32* %a2update to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %343) #4
  %344 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %345 = load i32, i32* %bbStart, align 4, !tbaa !12
  %346 = load i32, i32* %j, align 4, !tbaa !12
  %add483 = add nsw i32 %345, %346
  %idxprom484 = sext i32 %add483 to i64
  %arrayidx485 = getelementptr inbounds i32, i32* %344, i64 %idxprom484
  %347 = load i32, i32* %arrayidx485, align 4, !tbaa !12
  store i32 %347, i32* %a2update, align 4, !tbaa !12
  %348 = bitcast i16* %qVal to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %348) #4
  %349 = load i32, i32* %j, align 4, !tbaa !12
  %350 = load i32, i32* %shifts, align 4, !tbaa !12
  %shr486 = ashr i32 %349, %350
  %conv487 = trunc i32 %shr486 to i16
  store i16 %conv487, i16* %qVal, align 2, !tbaa !42
  %351 = load i16, i16* %qVal, align 2, !tbaa !42
  %352 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %353 = load i32, i32* %a2update, align 4, !tbaa !12
  %idxprom488 = sext i32 %353 to i64
  %arrayidx489 = getelementptr inbounds i16, i16* %352, i64 %idxprom488
  store i16 %351, i16* %arrayidx489, align 2, !tbaa !42
  %354 = load i32, i32* %a2update, align 4, !tbaa !12
  %cmp490 = icmp slt i32 %354, 34
  br i1 %cmp490, label %if.then492, label %if.end496

if.then492:                                       ; preds = %for.body482
  %355 = load i16, i16* %qVal, align 2, !tbaa !42
  %356 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %357 = load i32, i32* %a2update, align 4, !tbaa !12
  %358 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %add493 = add nsw i32 %357, %358
  %idxprom494 = sext i32 %add493 to i64
  %arrayidx495 = getelementptr inbounds i16, i16* %356, i64 %idxprom494
  store i16 %355, i16* %arrayidx495, align 2, !tbaa !42
  br label %if.end496

if.end496:                                        ; preds = %if.then492, %for.body482
  %359 = bitcast i16* %qVal to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %359) #4
  %360 = bitcast i32* %a2update to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %360) #4
  br label %for.inc497

for.inc497:                                       ; preds = %if.end496
  %361 = load i32, i32* %j, align 4, !tbaa !12
  %dec498 = add nsw i32 %361, -1
  store i32 %dec498, i32* %j, align 4, !tbaa !12
  br label %for.cond479, !llvm.loop !61

for.end499:                                       ; preds = %for.cond479
  %362 = load i32, i32* %bbSize, align 4, !tbaa !12
  %sub500 = sub nsw i32 %362, 1
  %363 = load i32, i32* %shifts, align 4, !tbaa !12
  %shr501 = ashr i32 %sub500, %363
  %cmp502 = icmp sle i32 %shr501, 65535
  br i1 %cmp502, label %if.end505, label %if.then504

if.then504:                                       ; preds = %for.end499
  call void @BZ2_bz__AssertH__fail(i32 1002)
  br label %if.end505

if.end505:                                        ; preds = %if.then504, %for.end499
  %364 = bitcast i32* %shifts to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %364) #4
  %365 = bitcast i32* %bbSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %365) #4
  %366 = bitcast i32* %bbStart to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %366) #4
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %for.end455
  br label %for.inc507

for.inc507:                                       ; preds = %if.end506
  %367 = load i32, i32* %i, align 4, !tbaa !12
  %inc508 = add nsw i32 %367, 1
  store i32 %inc508, i32* %i, align 4, !tbaa !12
  br label %for.cond277, !llvm.loop !62

for.end509:                                       ; preds = %for.cond277
  %368 = load i32, i32* %verb.addr, align 4, !tbaa !12
  %cmp510 = icmp sge i32 %368, 4
  br i1 %cmp510, label %if.then512, label %if.end515

if.then512:                                       ; preds = %for.end509
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %370 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %371 = load i32, i32* %numQSorted, align 4, !tbaa !12
  %372 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %373 = load i32, i32* %numQSorted, align 4, !tbaa !12
  %sub513 = sub nsw i32 %372, %373
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %370, i32 %371, i32 %sub513)
  br label %if.end515

if.end515:                                        ; preds = %if.then512, %for.end509
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup516

cleanup516:                                       ; preds = %if.end515, %cleanup
  %374 = bitcast i16* %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %374) #4
  %375 = bitcast i32* %numQSorted to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %375) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c1) #4
  %376 = bitcast [256 x i32]* %copyEnd to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %376) #4
  %377 = bitcast [256 x i32]* %copyStart to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %377) #4
  %378 = bitcast [256 x i8]* %bigDone to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %378) #4
  %379 = bitcast [256 x i32]* %runningOrder to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %379) #4
  %380 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %380) #4
  %381 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %381) #4
  %382 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %382) #4
  %383 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %383) #4
  %384 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %384) #4
  %cleanup.dest528 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest528, label %unreachable [
    i32 0, label %cleanup.cont529
    i32 1, label %cleanup.cont529
  ]

cleanup.cont529:                                  ; preds = %cleanup516, %cleanup516
  ret void

unreachable:                                      ; preds = %cleanup516
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @fallbackQSort3(i32* %fmap, i32* %eclass, i32 %loSt, i32 %hiSt) #0 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %med = alloca i32, align 4
  %r = alloca i32, align 4
  %r3 = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %zztmp = alloca i32, align 4
  %zztmp73 = alloca i32, align 4
  %zztmp93 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp117 = alloca i32, align 4
  %yyp1139 = alloca i32, align 4
  %yyp2140 = alloca i32, align 4
  %yyn143 = alloca i32, align 4
  %zztmp147 = alloca i32, align 4
  store i32* %fmap, i32** %fmap.addr, align 8, !tbaa !2
  store i32* %eclass, i32** %eclass.addr, align 8, !tbaa !2
  store i32 %loSt, i32* %loSt.addr, align 4, !tbaa !12
  store i32 %hiSt, i32* %hiSt.addr, align 4, !tbaa !12
  %0 = bitcast i32* %unLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  %1 = bitcast i32* %unHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast i32* %ltLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %gtHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = bitcast i32* %sp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %med to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %r3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast [100 x i32]* %stackLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %12) #4
  %13 = bitcast [100 x i32]* %stackHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %13) #4
  store i32 0, i32* %r, align 4, !tbaa !12
  store i32 0, i32* %sp, align 4, !tbaa !12
  %14 = load i32, i32* %loSt.addr, align 4, !tbaa !12
  %15 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom
  store i32 %14, i32* %arrayidx, align 4, !tbaa !12
  %16 = load i32, i32* %hiSt.addr, align 4, !tbaa !12
  %17 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom1 = sext i32 %17 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom1
  store i32 %16, i32* %arrayidx2, align 4, !tbaa !12
  %18 = load i32, i32* %sp, align 4, !tbaa !12
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %sp, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end191, %if.then106, %if.then9, %entry
  %19 = load i32, i32* %sp, align 4, !tbaa !12
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %while.body, label %while.end192

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %sp, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %20, 100
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 1004)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %21 = load i32, i32* %sp, align 4, !tbaa !12
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %sp, align 4, !tbaa !12
  %22 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom4 = sext i32 %22 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom4
  %23 = load i32, i32* %arrayidx5, align 4, !tbaa !12
  store i32 %23, i32* %lo, align 4, !tbaa !12
  %24 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom6 = sext i32 %24 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom6
  %25 = load i32, i32* %arrayidx7, align 4, !tbaa !12
  store i32 %25, i32* %hi, align 4, !tbaa !12
  %26 = load i32, i32* %hi, align 4, !tbaa !12
  %27 = load i32, i32* %lo, align 4, !tbaa !12
  %sub = sub nsw i32 %26, %27
  %cmp8 = icmp slt i32 %sub, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %28 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %29 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %30 = load i32, i32* %lo, align 4, !tbaa !12
  %31 = load i32, i32* %hi, align 4, !tbaa !12
  call void @fallbackSimpleSort(i32* %28, i32* %29, i32 %30, i32 %31)
  br label %while.cond, !llvm.loop !63

if.end10:                                         ; preds = %if.end
  %32 = load i32, i32* %r, align 4, !tbaa !12
  %mul = mul i32 %32, 7621
  %add = add i32 %mul, 1
  %rem = urem i32 %add, 32768
  store i32 %rem, i32* %r, align 4, !tbaa !12
  %33 = load i32, i32* %r, align 4, !tbaa !12
  %rem11 = urem i32 %33, 3
  store i32 %rem11, i32* %r3, align 4, !tbaa !12
  %34 = load i32, i32* %r3, align 4, !tbaa !12
  %cmp12 = icmp eq i32 %34, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %35 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %36 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %37 = load i32, i32* %lo, align 4, !tbaa !12
  %idxprom14 = sext i32 %37 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %36, i64 %idxprom14
  %38 = load i32, i32* %arrayidx15, align 4, !tbaa !12
  %idxprom16 = zext i32 %38 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %35, i64 %idxprom16
  %39 = load i32, i32* %arrayidx17, align 4, !tbaa !12
  store i32 %39, i32* %med, align 4, !tbaa !12
  br label %if.end31

if.else:                                          ; preds = %if.end10
  %40 = load i32, i32* %r3, align 4, !tbaa !12
  %cmp18 = icmp eq i32 %40, 1
  br i1 %cmp18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else
  %41 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %42 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %43 = load i32, i32* %lo, align 4, !tbaa !12
  %44 = load i32, i32* %hi, align 4, !tbaa !12
  %add20 = add nsw i32 %43, %44
  %shr = ashr i32 %add20, 1
  %idxprom21 = sext i32 %shr to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %42, i64 %idxprom21
  %45 = load i32, i32* %arrayidx22, align 4, !tbaa !12
  %idxprom23 = zext i32 %45 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %41, i64 %idxprom23
  %46 = load i32, i32* %arrayidx24, align 4, !tbaa !12
  store i32 %46, i32* %med, align 4, !tbaa !12
  br label %if.end30

if.else25:                                        ; preds = %if.else
  %47 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %48 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %49 = load i32, i32* %hi, align 4, !tbaa !12
  %idxprom26 = sext i32 %49 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %48, i64 %idxprom26
  %50 = load i32, i32* %arrayidx27, align 4, !tbaa !12
  %idxprom28 = zext i32 %50 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %47, i64 %idxprom28
  %51 = load i32, i32* %arrayidx29, align 4, !tbaa !12
  store i32 %51, i32* %med, align 4, !tbaa !12
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then19
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then13
  %52 = load i32, i32* %lo, align 4, !tbaa !12
  store i32 %52, i32* %ltLo, align 4, !tbaa !12
  store i32 %52, i32* %unLo, align 4, !tbaa !12
  %53 = load i32, i32* %hi, align 4, !tbaa !12
  store i32 %53, i32* %gtHi, align 4, !tbaa !12
  store i32 %53, i32* %unHi, align 4, !tbaa !12
  br label %while.cond32

while.cond32:                                     ; preds = %if.end92, %if.end31
  br label %while.body33

while.body33:                                     ; preds = %while.cond32
  br label %while.cond34

while.cond34:                                     ; preds = %if.end59, %if.then45, %while.body33
  br label %while.body35

while.body35:                                     ; preds = %while.cond34
  %54 = load i32, i32* %unLo, align 4, !tbaa !12
  %55 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp36 = icmp sgt i32 %54, %55
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.body35
  br label %while.end

if.end38:                                         ; preds = %while.body35
  %56 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %57 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %58 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom39 = sext i32 %58 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %57, i64 %idxprom39
  %59 = load i32, i32* %arrayidx40, align 4, !tbaa !12
  %idxprom41 = zext i32 %59 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 %idxprom41
  %60 = load i32, i32* %arrayidx42, align 4, !tbaa !12
  %61 = load i32, i32* %med, align 4, !tbaa !12
  %sub43 = sub nsw i32 %60, %61
  store i32 %sub43, i32* %n, align 4, !tbaa !12
  %62 = load i32, i32* %n, align 4, !tbaa !12
  %cmp44 = icmp eq i32 %62, 0
  br i1 %cmp44, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end38
  %63 = bitcast i32* %zztmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %63) #4
  %64 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %65 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom46 = sext i32 %65 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %64, i64 %idxprom46
  %66 = load i32, i32* %arrayidx47, align 4, !tbaa !12
  store i32 %66, i32* %zztmp, align 4, !tbaa !12
  %67 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %68 = load i32, i32* %ltLo, align 4, !tbaa !12
  %idxprom48 = sext i32 %68 to i64
  %arrayidx49 = getelementptr inbounds i32, i32* %67, i64 %idxprom48
  %69 = load i32, i32* %arrayidx49, align 4, !tbaa !12
  %70 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %71 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom50 = sext i32 %71 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %70, i64 %idxprom50
  store i32 %69, i32* %arrayidx51, align 4, !tbaa !12
  %72 = load i32, i32* %zztmp, align 4, !tbaa !12
  %73 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %74 = load i32, i32* %ltLo, align 4, !tbaa !12
  %idxprom52 = sext i32 %74 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %73, i64 %idxprom52
  store i32 %72, i32* %arrayidx53, align 4, !tbaa !12
  %75 = bitcast i32* %zztmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #4
  %76 = load i32, i32* %ltLo, align 4, !tbaa !12
  %inc54 = add nsw i32 %76, 1
  store i32 %inc54, i32* %ltLo, align 4, !tbaa !12
  %77 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc55 = add nsw i32 %77, 1
  store i32 %inc55, i32* %unLo, align 4, !tbaa !12
  br label %while.cond34, !llvm.loop !64

if.end56:                                         ; preds = %if.end38
  %78 = load i32, i32* %n, align 4, !tbaa !12
  %cmp57 = icmp sgt i32 %78, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end56
  br label %while.end

if.end59:                                         ; preds = %if.end56
  %79 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc60 = add nsw i32 %79, 1
  store i32 %inc60, i32* %unLo, align 4, !tbaa !12
  br label %while.cond34, !llvm.loop !64

while.end:                                        ; preds = %if.then58, %if.then37
  br label %while.cond61

while.cond61:                                     ; preds = %if.end87, %if.then72, %while.end
  br label %while.body62

while.body62:                                     ; preds = %while.cond61
  %80 = load i32, i32* %unLo, align 4, !tbaa !12
  %81 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp63 = icmp sgt i32 %80, %81
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %while.body62
  br label %while.end89

if.end65:                                         ; preds = %while.body62
  %82 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %83 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %84 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom66 = sext i32 %84 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %83, i64 %idxprom66
  %85 = load i32, i32* %arrayidx67, align 4, !tbaa !12
  %idxprom68 = zext i32 %85 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %82, i64 %idxprom68
  %86 = load i32, i32* %arrayidx69, align 4, !tbaa !12
  %87 = load i32, i32* %med, align 4, !tbaa !12
  %sub70 = sub nsw i32 %86, %87
  store i32 %sub70, i32* %n, align 4, !tbaa !12
  %88 = load i32, i32* %n, align 4, !tbaa !12
  %cmp71 = icmp eq i32 %88, 0
  br i1 %cmp71, label %if.then72, label %if.end84

if.then72:                                        ; preds = %if.end65
  %89 = bitcast i32* %zztmp73 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %89) #4
  %90 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %91 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom74 = sext i32 %91 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %90, i64 %idxprom74
  %92 = load i32, i32* %arrayidx75, align 4, !tbaa !12
  store i32 %92, i32* %zztmp73, align 4, !tbaa !12
  %93 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %94 = load i32, i32* %gtHi, align 4, !tbaa !12
  %idxprom76 = sext i32 %94 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %93, i64 %idxprom76
  %95 = load i32, i32* %arrayidx77, align 4, !tbaa !12
  %96 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %97 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom78 = sext i32 %97 to i64
  %arrayidx79 = getelementptr inbounds i32, i32* %96, i64 %idxprom78
  store i32 %95, i32* %arrayidx79, align 4, !tbaa !12
  %98 = load i32, i32* %zztmp73, align 4, !tbaa !12
  %99 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %100 = load i32, i32* %gtHi, align 4, !tbaa !12
  %idxprom80 = sext i32 %100 to i64
  %arrayidx81 = getelementptr inbounds i32, i32* %99, i64 %idxprom80
  store i32 %98, i32* %arrayidx81, align 4, !tbaa !12
  %101 = bitcast i32* %zztmp73 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4
  %102 = load i32, i32* %gtHi, align 4, !tbaa !12
  %dec82 = add nsw i32 %102, -1
  store i32 %dec82, i32* %gtHi, align 4, !tbaa !12
  %103 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec83 = add nsw i32 %103, -1
  store i32 %dec83, i32* %unHi, align 4, !tbaa !12
  br label %while.cond61, !llvm.loop !65

if.end84:                                         ; preds = %if.end65
  %104 = load i32, i32* %n, align 4, !tbaa !12
  %cmp85 = icmp slt i32 %104, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end84
  br label %while.end89

if.end87:                                         ; preds = %if.end84
  %105 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec88 = add nsw i32 %105, -1
  store i32 %dec88, i32* %unHi, align 4, !tbaa !12
  br label %while.cond61, !llvm.loop !65

while.end89:                                      ; preds = %if.then86, %if.then64
  %106 = load i32, i32* %unLo, align 4, !tbaa !12
  %107 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp90 = icmp sgt i32 %106, %107
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.end89
  br label %while.end104

if.end92:                                         ; preds = %while.end89
  %108 = bitcast i32* %zztmp93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #4
  %109 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %110 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom94 = sext i32 %110 to i64
  %arrayidx95 = getelementptr inbounds i32, i32* %109, i64 %idxprom94
  %111 = load i32, i32* %arrayidx95, align 4, !tbaa !12
  store i32 %111, i32* %zztmp93, align 4, !tbaa !12
  %112 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %113 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom96 = sext i32 %113 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* %112, i64 %idxprom96
  %114 = load i32, i32* %arrayidx97, align 4, !tbaa !12
  %115 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %116 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom98 = sext i32 %116 to i64
  %arrayidx99 = getelementptr inbounds i32, i32* %115, i64 %idxprom98
  store i32 %114, i32* %arrayidx99, align 4, !tbaa !12
  %117 = load i32, i32* %zztmp93, align 4, !tbaa !12
  %118 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %119 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom100 = sext i32 %119 to i64
  %arrayidx101 = getelementptr inbounds i32, i32* %118, i64 %idxprom100
  store i32 %117, i32* %arrayidx101, align 4, !tbaa !12
  %120 = bitcast i32* %zztmp93 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #4
  %121 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc102 = add nsw i32 %121, 1
  store i32 %inc102, i32* %unLo, align 4, !tbaa !12
  %122 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec103 = add nsw i32 %122, -1
  store i32 %dec103, i32* %unHi, align 4, !tbaa !12
  br label %while.cond32, !llvm.loop !66

while.end104:                                     ; preds = %if.then91
  %123 = load i32, i32* %gtHi, align 4, !tbaa !12
  %124 = load i32, i32* %ltLo, align 4, !tbaa !12
  %cmp105 = icmp slt i32 %123, %124
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %while.end104
  br label %while.cond, !llvm.loop !63

if.end107:                                        ; preds = %while.end104
  %125 = load i32, i32* %ltLo, align 4, !tbaa !12
  %126 = load i32, i32* %lo, align 4, !tbaa !12
  %sub108 = sub nsw i32 %125, %126
  %127 = load i32, i32* %unLo, align 4, !tbaa !12
  %128 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub109 = sub nsw i32 %127, %128
  %cmp110 = icmp slt i32 %sub108, %sub109
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end107
  %129 = load i32, i32* %ltLo, align 4, !tbaa !12
  %130 = load i32, i32* %lo, align 4, !tbaa !12
  %sub111 = sub nsw i32 %129, %130
  br label %cond.end

cond.false:                                       ; preds = %if.end107
  %131 = load i32, i32* %unLo, align 4, !tbaa !12
  %132 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub112 = sub nsw i32 %131, %132
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub111, %cond.true ], [ %sub112, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !12
  %133 = bitcast i32* %yyp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %133) #4
  %134 = load i32, i32* %lo, align 4, !tbaa !12
  store i32 %134, i32* %yyp1, align 4, !tbaa !12
  %135 = bitcast i32* %yyp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %135) #4
  %136 = load i32, i32* %unLo, align 4, !tbaa !12
  %137 = load i32, i32* %n, align 4, !tbaa !12
  %sub113 = sub nsw i32 %136, %137
  store i32 %sub113, i32* %yyp2, align 4, !tbaa !12
  %138 = bitcast i32* %yyn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %138) #4
  %139 = load i32, i32* %n, align 4, !tbaa !12
  store i32 %139, i32* %yyn, align 4, !tbaa !12
  br label %while.cond114

while.cond114:                                    ; preds = %while.body116, %cond.end
  %140 = load i32, i32* %yyn, align 4, !tbaa !12
  %cmp115 = icmp sgt i32 %140, 0
  br i1 %cmp115, label %while.body116, label %while.end129

while.body116:                                    ; preds = %while.cond114
  %141 = bitcast i32* %zztmp117 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %141) #4
  %142 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %143 = load i32, i32* %yyp1, align 4, !tbaa !12
  %idxprom118 = sext i32 %143 to i64
  %arrayidx119 = getelementptr inbounds i32, i32* %142, i64 %idxprom118
  %144 = load i32, i32* %arrayidx119, align 4, !tbaa !12
  store i32 %144, i32* %zztmp117, align 4, !tbaa !12
  %145 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %146 = load i32, i32* %yyp2, align 4, !tbaa !12
  %idxprom120 = sext i32 %146 to i64
  %arrayidx121 = getelementptr inbounds i32, i32* %145, i64 %idxprom120
  %147 = load i32, i32* %arrayidx121, align 4, !tbaa !12
  %148 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %149 = load i32, i32* %yyp1, align 4, !tbaa !12
  %idxprom122 = sext i32 %149 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %148, i64 %idxprom122
  store i32 %147, i32* %arrayidx123, align 4, !tbaa !12
  %150 = load i32, i32* %zztmp117, align 4, !tbaa !12
  %151 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %152 = load i32, i32* %yyp2, align 4, !tbaa !12
  %idxprom124 = sext i32 %152 to i64
  %arrayidx125 = getelementptr inbounds i32, i32* %151, i64 %idxprom124
  store i32 %150, i32* %arrayidx125, align 4, !tbaa !12
  %153 = bitcast i32* %zztmp117 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %153) #4
  %154 = load i32, i32* %yyp1, align 4, !tbaa !12
  %inc126 = add nsw i32 %154, 1
  store i32 %inc126, i32* %yyp1, align 4, !tbaa !12
  %155 = load i32, i32* %yyp2, align 4, !tbaa !12
  %inc127 = add nsw i32 %155, 1
  store i32 %inc127, i32* %yyp2, align 4, !tbaa !12
  %156 = load i32, i32* %yyn, align 4, !tbaa !12
  %dec128 = add nsw i32 %156, -1
  store i32 %dec128, i32* %yyn, align 4, !tbaa !12
  br label %while.cond114, !llvm.loop !67

while.end129:                                     ; preds = %while.cond114
  %157 = bitcast i32* %yyn to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #4
  %158 = bitcast i32* %yyp2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #4
  %159 = bitcast i32* %yyp1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #4
  %160 = load i32, i32* %hi, align 4, !tbaa !12
  %161 = load i32, i32* %gtHi, align 4, !tbaa !12
  %sub130 = sub nsw i32 %160, %161
  %162 = load i32, i32* %gtHi, align 4, !tbaa !12
  %163 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub131 = sub nsw i32 %162, %163
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true133, label %cond.false135

cond.true133:                                     ; preds = %while.end129
  %164 = load i32, i32* %hi, align 4, !tbaa !12
  %165 = load i32, i32* %gtHi, align 4, !tbaa !12
  %sub134 = sub nsw i32 %164, %165
  br label %cond.end137

cond.false135:                                    ; preds = %while.end129
  %166 = load i32, i32* %gtHi, align 4, !tbaa !12
  %167 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub136 = sub nsw i32 %166, %167
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false135, %cond.true133
  %cond138 = phi i32 [ %sub134, %cond.true133 ], [ %sub136, %cond.false135 ]
  store i32 %cond138, i32* %m, align 4, !tbaa !12
  %168 = bitcast i32* %yyp1139 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %168) #4
  %169 = load i32, i32* %unLo, align 4, !tbaa !12
  store i32 %169, i32* %yyp1139, align 4, !tbaa !12
  %170 = bitcast i32* %yyp2140 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %170) #4
  %171 = load i32, i32* %hi, align 4, !tbaa !12
  %172 = load i32, i32* %m, align 4, !tbaa !12
  %sub141 = sub nsw i32 %171, %172
  %add142 = add nsw i32 %sub141, 1
  store i32 %add142, i32* %yyp2140, align 4, !tbaa !12
  %173 = bitcast i32* %yyn143 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %173) #4
  %174 = load i32, i32* %m, align 4, !tbaa !12
  store i32 %174, i32* %yyn143, align 4, !tbaa !12
  br label %while.cond144

while.cond144:                                    ; preds = %while.body146, %cond.end137
  %175 = load i32, i32* %yyn143, align 4, !tbaa !12
  %cmp145 = icmp sgt i32 %175, 0
  br i1 %cmp145, label %while.body146, label %while.end159

while.body146:                                    ; preds = %while.cond144
  %176 = bitcast i32* %zztmp147 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %176) #4
  %177 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %178 = load i32, i32* %yyp1139, align 4, !tbaa !12
  %idxprom148 = sext i32 %178 to i64
  %arrayidx149 = getelementptr inbounds i32, i32* %177, i64 %idxprom148
  %179 = load i32, i32* %arrayidx149, align 4, !tbaa !12
  store i32 %179, i32* %zztmp147, align 4, !tbaa !12
  %180 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %181 = load i32, i32* %yyp2140, align 4, !tbaa !12
  %idxprom150 = sext i32 %181 to i64
  %arrayidx151 = getelementptr inbounds i32, i32* %180, i64 %idxprom150
  %182 = load i32, i32* %arrayidx151, align 4, !tbaa !12
  %183 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %184 = load i32, i32* %yyp1139, align 4, !tbaa !12
  %idxprom152 = sext i32 %184 to i64
  %arrayidx153 = getelementptr inbounds i32, i32* %183, i64 %idxprom152
  store i32 %182, i32* %arrayidx153, align 4, !tbaa !12
  %185 = load i32, i32* %zztmp147, align 4, !tbaa !12
  %186 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %187 = load i32, i32* %yyp2140, align 4, !tbaa !12
  %idxprom154 = sext i32 %187 to i64
  %arrayidx155 = getelementptr inbounds i32, i32* %186, i64 %idxprom154
  store i32 %185, i32* %arrayidx155, align 4, !tbaa !12
  %188 = bitcast i32* %zztmp147 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %188) #4
  %189 = load i32, i32* %yyp1139, align 4, !tbaa !12
  %inc156 = add nsw i32 %189, 1
  store i32 %inc156, i32* %yyp1139, align 4, !tbaa !12
  %190 = load i32, i32* %yyp2140, align 4, !tbaa !12
  %inc157 = add nsw i32 %190, 1
  store i32 %inc157, i32* %yyp2140, align 4, !tbaa !12
  %191 = load i32, i32* %yyn143, align 4, !tbaa !12
  %dec158 = add nsw i32 %191, -1
  store i32 %dec158, i32* %yyn143, align 4, !tbaa !12
  br label %while.cond144, !llvm.loop !68

while.end159:                                     ; preds = %while.cond144
  %192 = bitcast i32* %yyn143 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %192) #4
  %193 = bitcast i32* %yyp2140 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %193) #4
  %194 = bitcast i32* %yyp1139 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %194) #4
  %195 = load i32, i32* %lo, align 4, !tbaa !12
  %196 = load i32, i32* %unLo, align 4, !tbaa !12
  %add160 = add nsw i32 %195, %196
  %197 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub161 = sub nsw i32 %add160, %197
  %sub162 = sub nsw i32 %sub161, 1
  store i32 %sub162, i32* %n, align 4, !tbaa !12
  %198 = load i32, i32* %hi, align 4, !tbaa !12
  %199 = load i32, i32* %gtHi, align 4, !tbaa !12
  %200 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub163 = sub nsw i32 %199, %200
  %sub164 = sub nsw i32 %198, %sub163
  %add165 = add nsw i32 %sub164, 1
  store i32 %add165, i32* %m, align 4, !tbaa !12
  %201 = load i32, i32* %n, align 4, !tbaa !12
  %202 = load i32, i32* %lo, align 4, !tbaa !12
  %sub166 = sub nsw i32 %201, %202
  %203 = load i32, i32* %hi, align 4, !tbaa !12
  %204 = load i32, i32* %m, align 4, !tbaa !12
  %sub167 = sub nsw i32 %203, %204
  %cmp168 = icmp sgt i32 %sub166, %sub167
  br i1 %cmp168, label %if.then169, label %if.else180

if.then169:                                       ; preds = %while.end159
  %205 = load i32, i32* %lo, align 4, !tbaa !12
  %206 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom170 = sext i32 %206 to i64
  %arrayidx171 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom170
  store i32 %205, i32* %arrayidx171, align 4, !tbaa !12
  %207 = load i32, i32* %n, align 4, !tbaa !12
  %208 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom172 = sext i32 %208 to i64
  %arrayidx173 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom172
  store i32 %207, i32* %arrayidx173, align 4, !tbaa !12
  %209 = load i32, i32* %sp, align 4, !tbaa !12
  %inc174 = add nsw i32 %209, 1
  store i32 %inc174, i32* %sp, align 4, !tbaa !12
  %210 = load i32, i32* %m, align 4, !tbaa !12
  %211 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom175 = sext i32 %211 to i64
  %arrayidx176 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom175
  store i32 %210, i32* %arrayidx176, align 4, !tbaa !12
  %212 = load i32, i32* %hi, align 4, !tbaa !12
  %213 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom177 = sext i32 %213 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom177
  store i32 %212, i32* %arrayidx178, align 4, !tbaa !12
  %214 = load i32, i32* %sp, align 4, !tbaa !12
  %inc179 = add nsw i32 %214, 1
  store i32 %inc179, i32* %sp, align 4, !tbaa !12
  br label %if.end191

if.else180:                                       ; preds = %while.end159
  %215 = load i32, i32* %m, align 4, !tbaa !12
  %216 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom181 = sext i32 %216 to i64
  %arrayidx182 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom181
  store i32 %215, i32* %arrayidx182, align 4, !tbaa !12
  %217 = load i32, i32* %hi, align 4, !tbaa !12
  %218 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom183 = sext i32 %218 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom183
  store i32 %217, i32* %arrayidx184, align 4, !tbaa !12
  %219 = load i32, i32* %sp, align 4, !tbaa !12
  %inc185 = add nsw i32 %219, 1
  store i32 %inc185, i32* %sp, align 4, !tbaa !12
  %220 = load i32, i32* %lo, align 4, !tbaa !12
  %221 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom186 = sext i32 %221 to i64
  %arrayidx187 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom186
  store i32 %220, i32* %arrayidx187, align 4, !tbaa !12
  %222 = load i32, i32* %n, align 4, !tbaa !12
  %223 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom188 = sext i32 %223 to i64
  %arrayidx189 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom188
  store i32 %222, i32* %arrayidx189, align 4, !tbaa !12
  %224 = load i32, i32* %sp, align 4, !tbaa !12
  %inc190 = add nsw i32 %224, 1
  store i32 %inc190, i32* %sp, align 4, !tbaa !12
  br label %if.end191

if.end191:                                        ; preds = %if.else180, %if.then169
  br label %while.cond, !llvm.loop !63

while.end192:                                     ; preds = %while.cond
  %225 = bitcast [100 x i32]* %stackHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %225) #4
  %226 = bitcast [100 x i32]* %stackLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %226) #4
  %227 = bitcast i32* %r3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %227) #4
  %228 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %228) #4
  %229 = bitcast i32* %med to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %229) #4
  %230 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %230) #4
  %231 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %231) #4
  %232 = bitcast i32* %sp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %232) #4
  %233 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %233) #4
  %234 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %234) #4
  %235 = bitcast i32* %gtHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %235) #4
  %236 = bitcast i32* %ltLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %236) #4
  %237 = bitcast i32* %unHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %237) #4
  %238 = bitcast i32* %unLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %238) #4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fallbackSimpleSort(i32* %fmap, i32* %eclass, i32 %lo, i32 %hi) #3 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ec_tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %fmap, i32** %fmap.addr, align 8, !tbaa !2
  store i32* %eclass, i32** %eclass.addr, align 8, !tbaa !2
  store i32 %lo, i32* %lo.addr, align 4, !tbaa !12
  store i32 %hi, i32* %hi.addr, align 4, !tbaa !12
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %ec_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %5 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %7 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %6, %7
  %cmp1 = icmp sgt i32 %sub, 3
  br i1 %cmp1, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %8 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %sub3 = sub nsw i32 %8, 4
  store i32 %sub3, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.then2
  %9 = load i32, i32* %i, align 4, !tbaa !12
  %10 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %cmp4 = icmp sge i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %12 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !12
  store i32 %13, i32* %tmp, align 4, !tbaa !12
  %14 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %15 = load i32, i32* %tmp, align 4, !tbaa !12
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4, !tbaa !12
  store i32 %16, i32* %ec_tmp, align 4, !tbaa !12
  %17 = load i32, i32* %i, align 4, !tbaa !12
  %add = add nsw i32 %17, 4
  store i32 %add, i32* %j, align 4, !tbaa !12
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4, !tbaa !12
  %19 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp8 = icmp sle i32 %18, %19
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond7
  %20 = load i32, i32* %ec_tmp, align 4, !tbaa !12
  %21 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %22 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %23 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom9
  %24 = load i32, i32* %arrayidx10, align 4, !tbaa !12
  %idxprom11 = zext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  %25 = load i32, i32* %arrayidx12, align 4, !tbaa !12
  %cmp13 = icmp ugt i32 %20, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond7
  %26 = phi i1 [ false, %for.cond7 ], [ %cmp13, %land.rhs ]
  br i1 %26, label %for.body14, label %for.end

for.body14:                                       ; preds = %land.end
  %27 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %28 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom15 = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %27, i64 %idxprom15
  %29 = load i32, i32* %arrayidx16, align 4, !tbaa !12
  %30 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %31 = load i32, i32* %j, align 4, !tbaa !12
  %sub17 = sub nsw i32 %31, 4
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 %idxprom18
  store i32 %29, i32* %arrayidx19, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %32 = load i32, i32* %j, align 4, !tbaa !12
  %add20 = add nsw i32 %32, 4
  store i32 %add20, i32* %j, align 4, !tbaa !12
  br label %for.cond7, !llvm.loop !69

for.end:                                          ; preds = %land.end
  %33 = load i32, i32* %tmp, align 4, !tbaa !12
  %34 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %35 = load i32, i32* %j, align 4, !tbaa !12
  %sub21 = sub nsw i32 %35, 4
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  store i32 %33, i32* %arrayidx23, align 4, !tbaa !12
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %36 = load i32, i32* %i, align 4, !tbaa !12
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !70

for.end25:                                        ; preds = %for.cond
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %if.end
  %37 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %sub27 = sub nsw i32 %37, 1
  store i32 %sub27, i32* %i, align 4, !tbaa !12
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc56, %if.end26
  %38 = load i32, i32* %i, align 4, !tbaa !12
  %39 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %cmp29 = icmp sge i32 %38, %39
  br i1 %cmp29, label %for.body30, label %for.end58

for.body30:                                       ; preds = %for.cond28
  %40 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %41 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom31 = sext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %40, i64 %idxprom31
  %42 = load i32, i32* %arrayidx32, align 4, !tbaa !12
  store i32 %42, i32* %tmp, align 4, !tbaa !12
  %43 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %44 = load i32, i32* %tmp, align 4, !tbaa !12
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %43, i64 %idxprom33
  %45 = load i32, i32* %arrayidx34, align 4, !tbaa !12
  store i32 %45, i32* %ec_tmp, align 4, !tbaa !12
  %46 = load i32, i32* %i, align 4, !tbaa !12
  %add35 = add nsw i32 %46, 1
  store i32 %add35, i32* %j, align 4, !tbaa !12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.body30
  %47 = load i32, i32* %j, align 4, !tbaa !12
  %48 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp37 = icmp sle i32 %47, %48
  br i1 %cmp37, label %land.rhs38, label %land.end44

land.rhs38:                                       ; preds = %for.cond36
  %49 = load i32, i32* %ec_tmp, align 4, !tbaa !12
  %50 = load i32*, i32** %eclass.addr, align 8, !tbaa !2
  %51 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %52 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom39 = sext i32 %52 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %51, i64 %idxprom39
  %53 = load i32, i32* %arrayidx40, align 4, !tbaa !12
  %idxprom41 = zext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %50, i64 %idxprom41
  %54 = load i32, i32* %arrayidx42, align 4, !tbaa !12
  %cmp43 = icmp ugt i32 %49, %54
  br label %land.end44

land.end44:                                       ; preds = %land.rhs38, %for.cond36
  %55 = phi i1 [ false, %for.cond36 ], [ %cmp43, %land.rhs38 ]
  br i1 %55, label %for.body45, label %for.end52

for.body45:                                       ; preds = %land.end44
  %56 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %57 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom46 = sext i32 %57 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %56, i64 %idxprom46
  %58 = load i32, i32* %arrayidx47, align 4, !tbaa !12
  %59 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %60 = load i32, i32* %j, align 4, !tbaa !12
  %sub48 = sub nsw i32 %60, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %59, i64 %idxprom49
  store i32 %58, i32* %arrayidx50, align 4, !tbaa !12
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %61 = load i32, i32* %j, align 4, !tbaa !12
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %j, align 4, !tbaa !12
  br label %for.cond36, !llvm.loop !71

for.end52:                                        ; preds = %land.end44
  %62 = load i32, i32* %tmp, align 4, !tbaa !12
  %63 = load i32*, i32** %fmap.addr, align 8, !tbaa !2
  %64 = load i32, i32* %j, align 4, !tbaa !12
  %sub53 = sub nsw i32 %64, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds i32, i32* %63, i64 %idxprom54
  store i32 %62, i32* %arrayidx55, align 4, !tbaa !12
  br label %for.inc56

for.inc56:                                        ; preds = %for.end52
  %65 = load i32, i32* %i, align 4, !tbaa !12
  %dec57 = add nsw i32 %65, -1
  store i32 %dec57, i32* %i, align 4, !tbaa !12
  br label %for.cond28, !llvm.loop !72

for.end58:                                        ; preds = %for.cond28
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end58, %if.then
  %66 = bitcast i32* %ec_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4
  %67 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #4
  %68 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #4
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @mainQSort3(i32* %ptr, i8* %block, i16* %quadrant, i32 %nblock, i32 %loSt, i32 %hiSt, i32 %dSt, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %dSt.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %med = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %d = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %stackD = alloca [100 x i32], align 16
  %nextLo = alloca [3 x i32], align 4
  %nextHi = alloca [3 x i32], align 4
  %nextD = alloca [3 x i32], align 4
  %cleanup.dest.slot = alloca i32, align 4
  %zztmp = alloca i32, align 4
  %zztmp84 = alloca i32, align 4
  %zztmp106 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp141 = alloca i32, align 4
  %yyp1164 = alloca i32, align 4
  %yyp2165 = alloca i32, align 4
  %yyn168 = alloca i32, align 4
  %zztmp173 = alloca i32, align 4
  %tz = alloca i32, align 4
  %tz235 = alloca i32, align 4
  %tz258 = alloca i32, align 4
  store i32* %ptr, i32** %ptr.addr, align 8, !tbaa !2
  store i8* %block, i8** %block.addr, align 8, !tbaa !2
  store i16* %quadrant, i16** %quadrant.addr, align 8, !tbaa !2
  store i32 %nblock, i32* %nblock.addr, align 4, !tbaa !12
  store i32 %loSt, i32* %loSt.addr, align 4, !tbaa !12
  store i32 %hiSt, i32* %hiSt.addr, align 4, !tbaa !12
  store i32 %dSt, i32* %dSt.addr, align 4, !tbaa !12
  store i32* %budget, i32** %budget.addr, align 8, !tbaa !2
  %0 = bitcast i32* %unLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  %1 = bitcast i32* %unHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast i32* %ltLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %gtHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = bitcast i32* %med to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  %7 = bitcast i32* %sp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast [100 x i32]* %stackLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %11) #4
  %12 = bitcast [100 x i32]* %stackHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %12) #4
  %13 = bitcast [100 x i32]* %stackD to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %13) #4
  %14 = bitcast [3 x i32]* %nextLo to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %14) #4
  %15 = bitcast [3 x i32]* %nextHi to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %15) #4
  %16 = bitcast [3 x i32]* %nextD to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %16) #4
  store i32 0, i32* %sp, align 4, !tbaa !12
  %17 = load i32, i32* %loSt.addr, align 4, !tbaa !12
  %18 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom
  store i32 %17, i32* %arrayidx, align 4, !tbaa !12
  %19 = load i32, i32* %hiSt.addr, align 4, !tbaa !12
  %20 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom1 = sext i32 %20 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom1
  store i32 %19, i32* %arrayidx2, align 4, !tbaa !12
  %21 = load i32, i32* %dSt.addr, align 4, !tbaa !12
  %22 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom3 = sext i32 %22 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom3
  store i32 %21, i32* %arrayidx4, align 4, !tbaa !12
  %23 = load i32, i32* %sp, align 4, !tbaa !12
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %sp, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %if.end271, %if.then120, %if.end17, %entry
  %24 = load i32, i32* %sp, align 4, !tbaa !12
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %while.body, label %while.end302

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %sp, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %25, 100
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 1001)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %26 = load i32, i32* %sp, align 4, !tbaa !12
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %sp, align 4, !tbaa !12
  %27 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom6 = sext i32 %27 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom6
  %28 = load i32, i32* %arrayidx7, align 4, !tbaa !12
  store i32 %28, i32* %lo, align 4, !tbaa !12
  %29 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom8 = sext i32 %29 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom8
  %30 = load i32, i32* %arrayidx9, align 4, !tbaa !12
  store i32 %30, i32* %hi, align 4, !tbaa !12
  %31 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom10 = sext i32 %31 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom10
  %32 = load i32, i32* %arrayidx11, align 4, !tbaa !12
  store i32 %32, i32* %d, align 4, !tbaa !12
  %33 = load i32, i32* %hi, align 4, !tbaa !12
  %34 = load i32, i32* %lo, align 4, !tbaa !12
  %sub = sub nsw i32 %33, %34
  %cmp12 = icmp slt i32 %sub, 20
  br i1 %cmp12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %35 = load i32, i32* %d, align 4, !tbaa !12
  %cmp13 = icmp sgt i32 %35, 14
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %36 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %37 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %38 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %39 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %40 = load i32, i32* %lo, align 4, !tbaa !12
  %41 = load i32, i32* %hi, align 4, !tbaa !12
  %42 = load i32, i32* %d, align 4, !tbaa !12
  %43 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  call void @mainSimpleSort(i32* %36, i8* %37, i16* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32* %43)
  %44 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %45 = load i32, i32* %44, align 4, !tbaa !12
  %cmp15 = icmp slt i32 %45, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  br label %while.cond, !llvm.loop !73

if.end18:                                         ; preds = %lor.lhs.false
  %46 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %47 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %48 = load i32, i32* %lo, align 4, !tbaa !12
  %idxprom19 = sext i32 %48 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %47, i64 %idxprom19
  %49 = load i32, i32* %arrayidx20, align 4, !tbaa !12
  %50 = load i32, i32* %d, align 4, !tbaa !12
  %add = add i32 %49, %50
  %idxprom21 = zext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %46, i64 %idxprom21
  %51 = load i8, i8* %arrayidx22, align 1, !tbaa !21
  %52 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %53 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %54 = load i32, i32* %hi, align 4, !tbaa !12
  %idxprom23 = sext i32 %54 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %53, i64 %idxprom23
  %55 = load i32, i32* %arrayidx24, align 4, !tbaa !12
  %56 = load i32, i32* %d, align 4, !tbaa !12
  %add25 = add i32 %55, %56
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %52, i64 %idxprom26
  %57 = load i8, i8* %arrayidx27, align 1, !tbaa !21
  %58 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %59 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %60 = load i32, i32* %lo, align 4, !tbaa !12
  %61 = load i32, i32* %hi, align 4, !tbaa !12
  %add28 = add nsw i32 %60, %61
  %shr = ashr i32 %add28, 1
  %idxprom29 = sext i32 %shr to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %59, i64 %idxprom29
  %62 = load i32, i32* %arrayidx30, align 4, !tbaa !12
  %63 = load i32, i32* %d, align 4, !tbaa !12
  %add31 = add i32 %62, %63
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %58, i64 %idxprom32
  %64 = load i8, i8* %arrayidx33, align 1, !tbaa !21
  %call = call zeroext i8 @mmed3(i8 zeroext %51, i8 zeroext %57, i8 zeroext %64)
  %conv = zext i8 %call to i32
  store i32 %conv, i32* %med, align 4, !tbaa !12
  %65 = load i32, i32* %lo, align 4, !tbaa !12
  store i32 %65, i32* %ltLo, align 4, !tbaa !12
  store i32 %65, i32* %unLo, align 4, !tbaa !12
  %66 = load i32, i32* %hi, align 4, !tbaa !12
  store i32 %66, i32* %gtHi, align 4, !tbaa !12
  store i32 %66, i32* %unHi, align 4, !tbaa !12
  br label %while.cond34

while.cond34:                                     ; preds = %if.end105, %if.end18
  br label %while.body35

while.body35:                                     ; preds = %while.cond34
  br label %while.cond36

while.cond36:                                     ; preds = %if.end66, %if.then51, %while.body35
  br label %while.body37

while.body37:                                     ; preds = %while.cond36
  %67 = load i32, i32* %unLo, align 4, !tbaa !12
  %68 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp38 = icmp sgt i32 %67, %68
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.body37
  br label %while.end

if.end41:                                         ; preds = %while.body37
  %69 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %70 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %71 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom42 = sext i32 %71 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %70, i64 %idxprom42
  %72 = load i32, i32* %arrayidx43, align 4, !tbaa !12
  %73 = load i32, i32* %d, align 4, !tbaa !12
  %add44 = add i32 %72, %73
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, i8* %69, i64 %idxprom45
  %74 = load i8, i8* %arrayidx46, align 1, !tbaa !21
  %conv47 = zext i8 %74 to i32
  %75 = load i32, i32* %med, align 4, !tbaa !12
  %sub48 = sub nsw i32 %conv47, %75
  store i32 %sub48, i32* %n, align 4, !tbaa !12
  %76 = load i32, i32* %n, align 4, !tbaa !12
  %cmp49 = icmp eq i32 %76, 0
  br i1 %cmp49, label %if.then51, label %if.end62

if.then51:                                        ; preds = %if.end41
  %77 = bitcast i32* %zztmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %77) #4
  %78 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %79 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom52 = sext i32 %79 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %78, i64 %idxprom52
  %80 = load i32, i32* %arrayidx53, align 4, !tbaa !12
  store i32 %80, i32* %zztmp, align 4, !tbaa !12
  %81 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %82 = load i32, i32* %ltLo, align 4, !tbaa !12
  %idxprom54 = sext i32 %82 to i64
  %arrayidx55 = getelementptr inbounds i32, i32* %81, i64 %idxprom54
  %83 = load i32, i32* %arrayidx55, align 4, !tbaa !12
  %84 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %85 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom56 = sext i32 %85 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %84, i64 %idxprom56
  store i32 %83, i32* %arrayidx57, align 4, !tbaa !12
  %86 = load i32, i32* %zztmp, align 4, !tbaa !12
  %87 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %88 = load i32, i32* %ltLo, align 4, !tbaa !12
  %idxprom58 = sext i32 %88 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %87, i64 %idxprom58
  store i32 %86, i32* %arrayidx59, align 4, !tbaa !12
  %89 = bitcast i32* %zztmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4
  %90 = load i32, i32* %ltLo, align 4, !tbaa !12
  %inc60 = add nsw i32 %90, 1
  store i32 %inc60, i32* %ltLo, align 4, !tbaa !12
  %91 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc61 = add nsw i32 %91, 1
  store i32 %inc61, i32* %unLo, align 4, !tbaa !12
  br label %while.cond36, !llvm.loop !74

if.end62:                                         ; preds = %if.end41
  %92 = load i32, i32* %n, align 4, !tbaa !12
  %cmp63 = icmp sgt i32 %92, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %while.end

if.end66:                                         ; preds = %if.end62
  %93 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc67 = add nsw i32 %93, 1
  store i32 %inc67, i32* %unLo, align 4, !tbaa !12
  br label %while.cond36, !llvm.loop !74

while.end:                                        ; preds = %if.then65, %if.then40
  br label %while.cond68

while.cond68:                                     ; preds = %if.end99, %if.then83, %while.end
  br label %while.body69

while.body69:                                     ; preds = %while.cond68
  %94 = load i32, i32* %unLo, align 4, !tbaa !12
  %95 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp70 = icmp sgt i32 %94, %95
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %while.body69
  br label %while.end101

if.end73:                                         ; preds = %while.body69
  %96 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %97 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %98 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom74 = sext i32 %98 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %97, i64 %idxprom74
  %99 = load i32, i32* %arrayidx75, align 4, !tbaa !12
  %100 = load i32, i32* %d, align 4, !tbaa !12
  %add76 = add i32 %99, %100
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i8, i8* %96, i64 %idxprom77
  %101 = load i8, i8* %arrayidx78, align 1, !tbaa !21
  %conv79 = zext i8 %101 to i32
  %102 = load i32, i32* %med, align 4, !tbaa !12
  %sub80 = sub nsw i32 %conv79, %102
  store i32 %sub80, i32* %n, align 4, !tbaa !12
  %103 = load i32, i32* %n, align 4, !tbaa !12
  %cmp81 = icmp eq i32 %103, 0
  br i1 %cmp81, label %if.then83, label %if.end95

if.then83:                                        ; preds = %if.end73
  %104 = bitcast i32* %zztmp84 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %104) #4
  %105 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %106 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom85 = sext i32 %106 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %105, i64 %idxprom85
  %107 = load i32, i32* %arrayidx86, align 4, !tbaa !12
  store i32 %107, i32* %zztmp84, align 4, !tbaa !12
  %108 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %109 = load i32, i32* %gtHi, align 4, !tbaa !12
  %idxprom87 = sext i32 %109 to i64
  %arrayidx88 = getelementptr inbounds i32, i32* %108, i64 %idxprom87
  %110 = load i32, i32* %arrayidx88, align 4, !tbaa !12
  %111 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %112 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom89 = sext i32 %112 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %111, i64 %idxprom89
  store i32 %110, i32* %arrayidx90, align 4, !tbaa !12
  %113 = load i32, i32* %zztmp84, align 4, !tbaa !12
  %114 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %115 = load i32, i32* %gtHi, align 4, !tbaa !12
  %idxprom91 = sext i32 %115 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %114, i64 %idxprom91
  store i32 %113, i32* %arrayidx92, align 4, !tbaa !12
  %116 = bitcast i32* %zztmp84 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #4
  %117 = load i32, i32* %gtHi, align 4, !tbaa !12
  %dec93 = add nsw i32 %117, -1
  store i32 %dec93, i32* %gtHi, align 4, !tbaa !12
  %118 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec94 = add nsw i32 %118, -1
  store i32 %dec94, i32* %unHi, align 4, !tbaa !12
  br label %while.cond68, !llvm.loop !75

if.end95:                                         ; preds = %if.end73
  %119 = load i32, i32* %n, align 4, !tbaa !12
  %cmp96 = icmp slt i32 %119, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  br label %while.end101

if.end99:                                         ; preds = %if.end95
  %120 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec100 = add nsw i32 %120, -1
  store i32 %dec100, i32* %unHi, align 4, !tbaa !12
  br label %while.cond68, !llvm.loop !75

while.end101:                                     ; preds = %if.then98, %if.then72
  %121 = load i32, i32* %unLo, align 4, !tbaa !12
  %122 = load i32, i32* %unHi, align 4, !tbaa !12
  %cmp102 = icmp sgt i32 %121, %122
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %while.end101
  br label %while.end117

if.end105:                                        ; preds = %while.end101
  %123 = bitcast i32* %zztmp106 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %123) #4
  %124 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %125 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom107 = sext i32 %125 to i64
  %arrayidx108 = getelementptr inbounds i32, i32* %124, i64 %idxprom107
  %126 = load i32, i32* %arrayidx108, align 4, !tbaa !12
  store i32 %126, i32* %zztmp106, align 4, !tbaa !12
  %127 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %128 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom109 = sext i32 %128 to i64
  %arrayidx110 = getelementptr inbounds i32, i32* %127, i64 %idxprom109
  %129 = load i32, i32* %arrayidx110, align 4, !tbaa !12
  %130 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %131 = load i32, i32* %unLo, align 4, !tbaa !12
  %idxprom111 = sext i32 %131 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %130, i64 %idxprom111
  store i32 %129, i32* %arrayidx112, align 4, !tbaa !12
  %132 = load i32, i32* %zztmp106, align 4, !tbaa !12
  %133 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %134 = load i32, i32* %unHi, align 4, !tbaa !12
  %idxprom113 = sext i32 %134 to i64
  %arrayidx114 = getelementptr inbounds i32, i32* %133, i64 %idxprom113
  store i32 %132, i32* %arrayidx114, align 4, !tbaa !12
  %135 = bitcast i32* %zztmp106 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %135) #4
  %136 = load i32, i32* %unLo, align 4, !tbaa !12
  %inc115 = add nsw i32 %136, 1
  store i32 %inc115, i32* %unLo, align 4, !tbaa !12
  %137 = load i32, i32* %unHi, align 4, !tbaa !12
  %dec116 = add nsw i32 %137, -1
  store i32 %dec116, i32* %unHi, align 4, !tbaa !12
  br label %while.cond34, !llvm.loop !76

while.end117:                                     ; preds = %if.then104
  %138 = load i32, i32* %gtHi, align 4, !tbaa !12
  %139 = load i32, i32* %ltLo, align 4, !tbaa !12
  %cmp118 = icmp slt i32 %138, %139
  br i1 %cmp118, label %if.then120, label %if.end129

if.then120:                                       ; preds = %while.end117
  %140 = load i32, i32* %lo, align 4, !tbaa !12
  %141 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom121 = sext i32 %141 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom121
  store i32 %140, i32* %arrayidx122, align 4, !tbaa !12
  %142 = load i32, i32* %hi, align 4, !tbaa !12
  %143 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom123 = sext i32 %143 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom123
  store i32 %142, i32* %arrayidx124, align 4, !tbaa !12
  %144 = load i32, i32* %d, align 4, !tbaa !12
  %add125 = add nsw i32 %144, 1
  %145 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom126 = sext i32 %145 to i64
  %arrayidx127 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom126
  store i32 %add125, i32* %arrayidx127, align 4, !tbaa !12
  %146 = load i32, i32* %sp, align 4, !tbaa !12
  %inc128 = add nsw i32 %146, 1
  store i32 %inc128, i32* %sp, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !73

if.end129:                                        ; preds = %while.end117
  %147 = load i32, i32* %ltLo, align 4, !tbaa !12
  %148 = load i32, i32* %lo, align 4, !tbaa !12
  %sub130 = sub nsw i32 %147, %148
  %149 = load i32, i32* %unLo, align 4, !tbaa !12
  %150 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub131 = sub nsw i32 %149, %150
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end129
  %151 = load i32, i32* %ltLo, align 4, !tbaa !12
  %152 = load i32, i32* %lo, align 4, !tbaa !12
  %sub134 = sub nsw i32 %151, %152
  br label %cond.end

cond.false:                                       ; preds = %if.end129
  %153 = load i32, i32* %unLo, align 4, !tbaa !12
  %154 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub135 = sub nsw i32 %153, %154
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub134, %cond.true ], [ %sub135, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !12
  %155 = bitcast i32* %yyp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %155) #4
  %156 = load i32, i32* %lo, align 4, !tbaa !12
  store i32 %156, i32* %yyp1, align 4, !tbaa !12
  %157 = bitcast i32* %yyp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %157) #4
  %158 = load i32, i32* %unLo, align 4, !tbaa !12
  %159 = load i32, i32* %n, align 4, !tbaa !12
  %sub136 = sub nsw i32 %158, %159
  store i32 %sub136, i32* %yyp2, align 4, !tbaa !12
  %160 = bitcast i32* %yyn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %160) #4
  %161 = load i32, i32* %n, align 4, !tbaa !12
  store i32 %161, i32* %yyn, align 4, !tbaa !12
  br label %while.cond137

while.cond137:                                    ; preds = %while.body140, %cond.end
  %162 = load i32, i32* %yyn, align 4, !tbaa !12
  %cmp138 = icmp sgt i32 %162, 0
  br i1 %cmp138, label %while.body140, label %while.end153

while.body140:                                    ; preds = %while.cond137
  %163 = bitcast i32* %zztmp141 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %163) #4
  %164 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %165 = load i32, i32* %yyp1, align 4, !tbaa !12
  %idxprom142 = sext i32 %165 to i64
  %arrayidx143 = getelementptr inbounds i32, i32* %164, i64 %idxprom142
  %166 = load i32, i32* %arrayidx143, align 4, !tbaa !12
  store i32 %166, i32* %zztmp141, align 4, !tbaa !12
  %167 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %168 = load i32, i32* %yyp2, align 4, !tbaa !12
  %idxprom144 = sext i32 %168 to i64
  %arrayidx145 = getelementptr inbounds i32, i32* %167, i64 %idxprom144
  %169 = load i32, i32* %arrayidx145, align 4, !tbaa !12
  %170 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %171 = load i32, i32* %yyp1, align 4, !tbaa !12
  %idxprom146 = sext i32 %171 to i64
  %arrayidx147 = getelementptr inbounds i32, i32* %170, i64 %idxprom146
  store i32 %169, i32* %arrayidx147, align 4, !tbaa !12
  %172 = load i32, i32* %zztmp141, align 4, !tbaa !12
  %173 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %174 = load i32, i32* %yyp2, align 4, !tbaa !12
  %idxprom148 = sext i32 %174 to i64
  %arrayidx149 = getelementptr inbounds i32, i32* %173, i64 %idxprom148
  store i32 %172, i32* %arrayidx149, align 4, !tbaa !12
  %175 = bitcast i32* %zztmp141 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %175) #4
  %176 = load i32, i32* %yyp1, align 4, !tbaa !12
  %inc150 = add nsw i32 %176, 1
  store i32 %inc150, i32* %yyp1, align 4, !tbaa !12
  %177 = load i32, i32* %yyp2, align 4, !tbaa !12
  %inc151 = add nsw i32 %177, 1
  store i32 %inc151, i32* %yyp2, align 4, !tbaa !12
  %178 = load i32, i32* %yyn, align 4, !tbaa !12
  %dec152 = add nsw i32 %178, -1
  store i32 %dec152, i32* %yyn, align 4, !tbaa !12
  br label %while.cond137, !llvm.loop !77

while.end153:                                     ; preds = %while.cond137
  %179 = bitcast i32* %yyn to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %179) #4
  %180 = bitcast i32* %yyp2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %180) #4
  %181 = bitcast i32* %yyp1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %181) #4
  %182 = load i32, i32* %hi, align 4, !tbaa !12
  %183 = load i32, i32* %gtHi, align 4, !tbaa !12
  %sub154 = sub nsw i32 %182, %183
  %184 = load i32, i32* %gtHi, align 4, !tbaa !12
  %185 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub155 = sub nsw i32 %184, %185
  %cmp156 = icmp slt i32 %sub154, %sub155
  br i1 %cmp156, label %cond.true158, label %cond.false160

cond.true158:                                     ; preds = %while.end153
  %186 = load i32, i32* %hi, align 4, !tbaa !12
  %187 = load i32, i32* %gtHi, align 4, !tbaa !12
  %sub159 = sub nsw i32 %186, %187
  br label %cond.end162

cond.false160:                                    ; preds = %while.end153
  %188 = load i32, i32* %gtHi, align 4, !tbaa !12
  %189 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub161 = sub nsw i32 %188, %189
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true158
  %cond163 = phi i32 [ %sub159, %cond.true158 ], [ %sub161, %cond.false160 ]
  store i32 %cond163, i32* %m, align 4, !tbaa !12
  %190 = bitcast i32* %yyp1164 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %190) #4
  %191 = load i32, i32* %unLo, align 4, !tbaa !12
  store i32 %191, i32* %yyp1164, align 4, !tbaa !12
  %192 = bitcast i32* %yyp2165 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %192) #4
  %193 = load i32, i32* %hi, align 4, !tbaa !12
  %194 = load i32, i32* %m, align 4, !tbaa !12
  %sub166 = sub nsw i32 %193, %194
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, i32* %yyp2165, align 4, !tbaa !12
  %195 = bitcast i32* %yyn168 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %195) #4
  %196 = load i32, i32* %m, align 4, !tbaa !12
  store i32 %196, i32* %yyn168, align 4, !tbaa !12
  br label %while.cond169

while.cond169:                                    ; preds = %while.body172, %cond.end162
  %197 = load i32, i32* %yyn168, align 4, !tbaa !12
  %cmp170 = icmp sgt i32 %197, 0
  br i1 %cmp170, label %while.body172, label %while.end185

while.body172:                                    ; preds = %while.cond169
  %198 = bitcast i32* %zztmp173 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %198) #4
  %199 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %200 = load i32, i32* %yyp1164, align 4, !tbaa !12
  %idxprom174 = sext i32 %200 to i64
  %arrayidx175 = getelementptr inbounds i32, i32* %199, i64 %idxprom174
  %201 = load i32, i32* %arrayidx175, align 4, !tbaa !12
  store i32 %201, i32* %zztmp173, align 4, !tbaa !12
  %202 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %203 = load i32, i32* %yyp2165, align 4, !tbaa !12
  %idxprom176 = sext i32 %203 to i64
  %arrayidx177 = getelementptr inbounds i32, i32* %202, i64 %idxprom176
  %204 = load i32, i32* %arrayidx177, align 4, !tbaa !12
  %205 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %206 = load i32, i32* %yyp1164, align 4, !tbaa !12
  %idxprom178 = sext i32 %206 to i64
  %arrayidx179 = getelementptr inbounds i32, i32* %205, i64 %idxprom178
  store i32 %204, i32* %arrayidx179, align 4, !tbaa !12
  %207 = load i32, i32* %zztmp173, align 4, !tbaa !12
  %208 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %209 = load i32, i32* %yyp2165, align 4, !tbaa !12
  %idxprom180 = sext i32 %209 to i64
  %arrayidx181 = getelementptr inbounds i32, i32* %208, i64 %idxprom180
  store i32 %207, i32* %arrayidx181, align 4, !tbaa !12
  %210 = bitcast i32* %zztmp173 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %210) #4
  %211 = load i32, i32* %yyp1164, align 4, !tbaa !12
  %inc182 = add nsw i32 %211, 1
  store i32 %inc182, i32* %yyp1164, align 4, !tbaa !12
  %212 = load i32, i32* %yyp2165, align 4, !tbaa !12
  %inc183 = add nsw i32 %212, 1
  store i32 %inc183, i32* %yyp2165, align 4, !tbaa !12
  %213 = load i32, i32* %yyn168, align 4, !tbaa !12
  %dec184 = add nsw i32 %213, -1
  store i32 %dec184, i32* %yyn168, align 4, !tbaa !12
  br label %while.cond169, !llvm.loop !78

while.end185:                                     ; preds = %while.cond169
  %214 = bitcast i32* %yyn168 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214) #4
  %215 = bitcast i32* %yyp2165 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %215) #4
  %216 = bitcast i32* %yyp1164 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %216) #4
  %217 = load i32, i32* %lo, align 4, !tbaa !12
  %218 = load i32, i32* %unLo, align 4, !tbaa !12
  %add186 = add nsw i32 %217, %218
  %219 = load i32, i32* %ltLo, align 4, !tbaa !12
  %sub187 = sub nsw i32 %add186, %219
  %sub188 = sub nsw i32 %sub187, 1
  store i32 %sub188, i32* %n, align 4, !tbaa !12
  %220 = load i32, i32* %hi, align 4, !tbaa !12
  %221 = load i32, i32* %gtHi, align 4, !tbaa !12
  %222 = load i32, i32* %unHi, align 4, !tbaa !12
  %sub189 = sub nsw i32 %221, %222
  %sub190 = sub nsw i32 %220, %sub189
  %add191 = add nsw i32 %sub190, 1
  store i32 %add191, i32* %m, align 4, !tbaa !12
  %223 = load i32, i32* %lo, align 4, !tbaa !12
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  store i32 %223, i32* %arrayidx192, align 4, !tbaa !12
  %224 = load i32, i32* %n, align 4, !tbaa !12
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  store i32 %224, i32* %arrayidx193, align 4, !tbaa !12
  %225 = load i32, i32* %d, align 4, !tbaa !12
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  store i32 %225, i32* %arrayidx194, align 4, !tbaa !12
  %226 = load i32, i32* %m, align 4, !tbaa !12
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  store i32 %226, i32* %arrayidx195, align 4, !tbaa !12
  %227 = load i32, i32* %hi, align 4, !tbaa !12
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  store i32 %227, i32* %arrayidx196, align 4, !tbaa !12
  %228 = load i32, i32* %d, align 4, !tbaa !12
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  store i32 %228, i32* %arrayidx197, align 4, !tbaa !12
  %229 = load i32, i32* %n, align 4, !tbaa !12
  %add198 = add nsw i32 %229, 1
  %arrayidx199 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 2
  store i32 %add198, i32* %arrayidx199, align 4, !tbaa !12
  %230 = load i32, i32* %m, align 4, !tbaa !12
  %sub200 = sub nsw i32 %230, 1
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 2
  store i32 %sub200, i32* %arrayidx201, align 4, !tbaa !12
  %231 = load i32, i32* %d, align 4, !tbaa !12
  %add202 = add nsw i32 %231, 1
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 2
  store i32 %add202, i32* %arrayidx203, align 4, !tbaa !12
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  %232 = load i32, i32* %arrayidx204, align 4, !tbaa !12
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  %233 = load i32, i32* %arrayidx205, align 4, !tbaa !12
  %sub206 = sub nsw i32 %232, %233
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %234 = load i32, i32* %arrayidx207, align 4, !tbaa !12
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %235 = load i32, i32* %arrayidx208, align 4, !tbaa !12
  %sub209 = sub nsw i32 %234, %235
  %cmp210 = icmp slt i32 %sub206, %sub209
  br i1 %cmp210, label %if.then212, label %if.end225

if.then212:                                       ; preds = %while.end185
  %236 = bitcast i32* %tz to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %236) #4
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  %237 = load i32, i32* %arrayidx213, align 4, !tbaa !12
  store i32 %237, i32* %tz, align 4, !tbaa !12
  %arrayidx214 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %238 = load i32, i32* %arrayidx214, align 4, !tbaa !12
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  store i32 %238, i32* %arrayidx215, align 4, !tbaa !12
  %239 = load i32, i32* %tz, align 4, !tbaa !12
  %arrayidx216 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  store i32 %239, i32* %arrayidx216, align 4, !tbaa !12
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  %240 = load i32, i32* %arrayidx217, align 4, !tbaa !12
  store i32 %240, i32* %tz, align 4, !tbaa !12
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %241 = load i32, i32* %arrayidx218, align 4, !tbaa !12
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  store i32 %241, i32* %arrayidx219, align 4, !tbaa !12
  %242 = load i32, i32* %tz, align 4, !tbaa !12
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  store i32 %242, i32* %arrayidx220, align 4, !tbaa !12
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  %243 = load i32, i32* %arrayidx221, align 4, !tbaa !12
  store i32 %243, i32* %tz, align 4, !tbaa !12
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  %244 = load i32, i32* %arrayidx222, align 4, !tbaa !12
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  store i32 %244, i32* %arrayidx223, align 4, !tbaa !12
  %245 = load i32, i32* %tz, align 4, !tbaa !12
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  store i32 %245, i32* %arrayidx224, align 4, !tbaa !12
  %246 = bitcast i32* %tz to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %246) #4
  br label %if.end225

if.end225:                                        ; preds = %if.then212, %while.end185
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %247 = load i32, i32* %arrayidx226, align 4, !tbaa !12
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %248 = load i32, i32* %arrayidx227, align 4, !tbaa !12
  %sub228 = sub nsw i32 %247, %248
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 2
  %249 = load i32, i32* %arrayidx229, align 4, !tbaa !12
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 2
  %250 = load i32, i32* %arrayidx230, align 4, !tbaa !12
  %sub231 = sub nsw i32 %249, %250
  %cmp232 = icmp slt i32 %sub228, %sub231
  br i1 %cmp232, label %if.then234, label %if.end248

if.then234:                                       ; preds = %if.end225
  %251 = bitcast i32* %tz235 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %251) #4
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %252 = load i32, i32* %arrayidx236, align 4, !tbaa !12
  store i32 %252, i32* %tz235, align 4, !tbaa !12
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 2
  %253 = load i32, i32* %arrayidx237, align 4, !tbaa !12
  %arrayidx238 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  store i32 %253, i32* %arrayidx238, align 4, !tbaa !12
  %254 = load i32, i32* %tz235, align 4, !tbaa !12
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 2
  store i32 %254, i32* %arrayidx239, align 4, !tbaa !12
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %255 = load i32, i32* %arrayidx240, align 4, !tbaa !12
  store i32 %255, i32* %tz235, align 4, !tbaa !12
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 2
  %256 = load i32, i32* %arrayidx241, align 4, !tbaa !12
  %arrayidx242 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  store i32 %256, i32* %arrayidx242, align 4, !tbaa !12
  %257 = load i32, i32* %tz235, align 4, !tbaa !12
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 2
  store i32 %257, i32* %arrayidx243, align 4, !tbaa !12
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  %258 = load i32, i32* %arrayidx244, align 4, !tbaa !12
  store i32 %258, i32* %tz235, align 4, !tbaa !12
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 2
  %259 = load i32, i32* %arrayidx245, align 4, !tbaa !12
  %arrayidx246 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  store i32 %259, i32* %arrayidx246, align 4, !tbaa !12
  %260 = load i32, i32* %tz235, align 4, !tbaa !12
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 2
  store i32 %260, i32* %arrayidx247, align 4, !tbaa !12
  %261 = bitcast i32* %tz235 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %261) #4
  br label %if.end248

if.end248:                                        ; preds = %if.then234, %if.end225
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  %262 = load i32, i32* %arrayidx249, align 4, !tbaa !12
  %arrayidx250 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  %263 = load i32, i32* %arrayidx250, align 4, !tbaa !12
  %sub251 = sub nsw i32 %262, %263
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %264 = load i32, i32* %arrayidx252, align 4, !tbaa !12
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %265 = load i32, i32* %arrayidx253, align 4, !tbaa !12
  %sub254 = sub nsw i32 %264, %265
  %cmp255 = icmp slt i32 %sub251, %sub254
  br i1 %cmp255, label %if.then257, label %if.end271

if.then257:                                       ; preds = %if.end248
  %266 = bitcast i32* %tz258 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %266) #4
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  %267 = load i32, i32* %arrayidx259, align 4, !tbaa !12
  store i32 %267, i32* %tz258, align 4, !tbaa !12
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %268 = load i32, i32* %arrayidx260, align 4, !tbaa !12
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  store i32 %268, i32* %arrayidx261, align 4, !tbaa !12
  %269 = load i32, i32* %tz258, align 4, !tbaa !12
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  store i32 %269, i32* %arrayidx262, align 4, !tbaa !12
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  %270 = load i32, i32* %arrayidx263, align 4, !tbaa !12
  store i32 %270, i32* %tz258, align 4, !tbaa !12
  %arrayidx264 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %271 = load i32, i32* %arrayidx264, align 4, !tbaa !12
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  store i32 %271, i32* %arrayidx265, align 4, !tbaa !12
  %272 = load i32, i32* %tz258, align 4, !tbaa !12
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  store i32 %272, i32* %arrayidx266, align 4, !tbaa !12
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  %273 = load i32, i32* %arrayidx267, align 4, !tbaa !12
  store i32 %273, i32* %tz258, align 4, !tbaa !12
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  %274 = load i32, i32* %arrayidx268, align 4, !tbaa !12
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  store i32 %274, i32* %arrayidx269, align 4, !tbaa !12
  %275 = load i32, i32* %tz258, align 4, !tbaa !12
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  store i32 %275, i32* %arrayidx270, align 4, !tbaa !12
  %276 = bitcast i32* %tz258 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %276) #4
  br label %if.end271

if.end271:                                        ; preds = %if.then257, %if.end248
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 0
  %277 = load i32, i32* %arrayidx272, align 4, !tbaa !12
  %278 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom273 = sext i32 %278 to i64
  %arrayidx274 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom273
  store i32 %277, i32* %arrayidx274, align 4, !tbaa !12
  %arrayidx275 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 0
  %279 = load i32, i32* %arrayidx275, align 4, !tbaa !12
  %280 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom276 = sext i32 %280 to i64
  %arrayidx277 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom276
  store i32 %279, i32* %arrayidx277, align 4, !tbaa !12
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 0
  %281 = load i32, i32* %arrayidx278, align 4, !tbaa !12
  %282 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom279 = sext i32 %282 to i64
  %arrayidx280 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom279
  store i32 %281, i32* %arrayidx280, align 4, !tbaa !12
  %283 = load i32, i32* %sp, align 4, !tbaa !12
  %inc281 = add nsw i32 %283, 1
  store i32 %inc281, i32* %sp, align 4, !tbaa !12
  %arrayidx282 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 1
  %284 = load i32, i32* %arrayidx282, align 4, !tbaa !12
  %285 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom283 = sext i32 %285 to i64
  %arrayidx284 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom283
  store i32 %284, i32* %arrayidx284, align 4, !tbaa !12
  %arrayidx285 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 1
  %286 = load i32, i32* %arrayidx285, align 4, !tbaa !12
  %287 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom286 = sext i32 %287 to i64
  %arrayidx287 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom286
  store i32 %286, i32* %arrayidx287, align 4, !tbaa !12
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 1
  %288 = load i32, i32* %arrayidx288, align 4, !tbaa !12
  %289 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom289 = sext i32 %289 to i64
  %arrayidx290 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom289
  store i32 %288, i32* %arrayidx290, align 4, !tbaa !12
  %290 = load i32, i32* %sp, align 4, !tbaa !12
  %inc291 = add nsw i32 %290, 1
  store i32 %inc291, i32* %sp, align 4, !tbaa !12
  %arrayidx292 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i64 0, i64 2
  %291 = load i32, i32* %arrayidx292, align 4, !tbaa !12
  %292 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom293 = sext i32 %292 to i64
  %arrayidx294 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i64 0, i64 %idxprom293
  store i32 %291, i32* %arrayidx294, align 4, !tbaa !12
  %arrayidx295 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i64 0, i64 2
  %293 = load i32, i32* %arrayidx295, align 4, !tbaa !12
  %294 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom296 = sext i32 %294 to i64
  %arrayidx297 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i64 0, i64 %idxprom296
  store i32 %293, i32* %arrayidx297, align 4, !tbaa !12
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i64 0, i64 2
  %295 = load i32, i32* %arrayidx298, align 4, !tbaa !12
  %296 = load i32, i32* %sp, align 4, !tbaa !12
  %idxprom299 = sext i32 %296 to i64
  %arrayidx300 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i64 0, i64 %idxprom299
  store i32 %295, i32* %arrayidx300, align 4, !tbaa !12
  %297 = load i32, i32* %sp, align 4, !tbaa !12
  %inc301 = add nsw i32 %297, 1
  store i32 %inc301, i32* %sp, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !73

while.end302:                                     ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end302, %if.then16
  %298 = bitcast [3 x i32]* %nextD to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %298) #4
  %299 = bitcast [3 x i32]* %nextHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %299) #4
  %300 = bitcast [3 x i32]* %nextLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %300) #4
  %301 = bitcast [100 x i32]* %stackD to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %301) #4
  %302 = bitcast [100 x i32]* %stackHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %302) #4
  %303 = bitcast [100 x i32]* %stackLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %303) #4
  %304 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %304) #4
  %305 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %305) #4
  %306 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %306) #4
  %307 = bitcast i32* %sp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %307) #4
  %308 = bitcast i32* %med to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %308) #4
  %309 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %309) #4
  %310 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %310) #4
  %311 = bitcast i32* %gtHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %311) #4
  %312 = bitcast i32* %ltLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %312) #4
  %313 = bitcast i32* %unHi to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %313) #4
  %314 = bitcast i32* %unLo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %314) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @mainSimpleSort(i32* %ptr, i8* %block, i16* %quadrant, i32 %nblock, i32 %lo, i32 %hi, i32 %d, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %bigN = alloca i32, align 4
  %hp = alloca i32, align 4
  %v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %ptr, i32** %ptr.addr, align 8, !tbaa !2
  store i8* %block, i8** %block.addr, align 8, !tbaa !2
  store i16* %quadrant, i16** %quadrant.addr, align 8, !tbaa !2
  store i32 %nblock, i32* %nblock.addr, align 4, !tbaa !12
  store i32 %lo, i32* %lo.addr, align 4, !tbaa !12
  store i32 %hi, i32* %hi.addr, align 4, !tbaa !12
  store i32 %d, i32* %d.addr, align 4, !tbaa !12
  store i32* %budget, i32** %budget.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4
  %3 = bitcast i32* %bigN to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  %5 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4
  %6 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %7 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %6, %7
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %bigN, align 4, !tbaa !12
  %8 = load i32, i32* %bigN, align 4, !tbaa !12
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %hp, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* %hp, align 4, !tbaa !12
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [14 x i32], [14 x i32]* @incs, i64 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %11 = load i32, i32* %bigN, align 4, !tbaa !12
  %cmp1 = icmp slt i32 %10, %11
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %hp, align 4, !tbaa !12
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %hp, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !79

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %hp, align 4, !tbaa !12
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %hp, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %14 = load i32, i32* %hp, align 4, !tbaa !12
  %cmp2 = icmp sge i32 %14, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %hp, align 4, !tbaa !12
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32], [14 x i32]* @incs, i64 0, i64 %idxprom3
  %16 = load i32, i32* %arrayidx4, align 4, !tbaa !12
  store i32 %16, i32* %h, align 4, !tbaa !12
  %17 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %18 = load i32, i32* %h, align 4, !tbaa !12
  %add5 = add nsw i32 %17, %18
  store i32 %add5, i32* %i, align 4, !tbaa !12
  br label %while.cond6

while.cond6:                                      ; preds = %if.end95, %for.body
  br label %while.body7

while.body7:                                      ; preds = %while.cond6
  %19 = load i32, i32* %i, align 4, !tbaa !12
  %20 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp8 = icmp sgt i32 %19, %20
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body7
  br label %while.end96

if.end10:                                         ; preds = %while.body7
  %21 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4, !tbaa !12
  store i32 %23, i32* %v, align 4, !tbaa !12
  %24 = load i32, i32* %i, align 4, !tbaa !12
  store i32 %24, i32* %j, align 4, !tbaa !12
  br label %while.cond13

while.cond13:                                     ; preds = %if.end30, %if.end10
  %25 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %26 = load i32, i32* %j, align 4, !tbaa !12
  %27 = load i32, i32* %h, align 4, !tbaa !12
  %sub14 = sub nsw i32 %26, %27
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %28 = load i32, i32* %arrayidx16, align 4, !tbaa !12
  %29 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add17 = add i32 %28, %29
  %30 = load i32, i32* %v, align 4, !tbaa !12
  %31 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add18 = add i32 %30, %31
  %32 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %33 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %34 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %35 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %call = call zeroext i8 @mainGtU(i32 %add17, i32 %add18, i8* %32, i16* %33, i32 %34, i32* %35)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %while.body19, label %while.end31

while.body19:                                     ; preds = %while.cond13
  %36 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %37 = load i32, i32* %j, align 4, !tbaa !12
  %38 = load i32, i32* %h, align 4, !tbaa !12
  %sub20 = sub nsw i32 %37, %38
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %36, i64 %idxprom21
  %39 = load i32, i32* %arrayidx22, align 4, !tbaa !12
  %40 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %41 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom23 = sext i32 %41 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %40, i64 %idxprom23
  store i32 %39, i32* %arrayidx24, align 4, !tbaa !12
  %42 = load i32, i32* %j, align 4, !tbaa !12
  %43 = load i32, i32* %h, align 4, !tbaa !12
  %sub25 = sub nsw i32 %42, %43
  store i32 %sub25, i32* %j, align 4, !tbaa !12
  %44 = load i32, i32* %j, align 4, !tbaa !12
  %45 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %46 = load i32, i32* %h, align 4, !tbaa !12
  %add26 = add nsw i32 %45, %46
  %sub27 = sub nsw i32 %add26, 1
  %cmp28 = icmp sle i32 %44, %sub27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.body19
  br label %while.end31

if.end30:                                         ; preds = %while.body19
  br label %while.cond13, !llvm.loop !80

while.end31:                                      ; preds = %if.then29, %while.cond13
  %47 = load i32, i32* %v, align 4, !tbaa !12
  %48 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %49 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom32 = sext i32 %49 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %48, i64 %idxprom32
  store i32 %47, i32* %arrayidx33, align 4, !tbaa !12
  %50 = load i32, i32* %i, align 4, !tbaa !12
  %inc34 = add nsw i32 %50, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !12
  %51 = load i32, i32* %i, align 4, !tbaa !12
  %52 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp35 = icmp sgt i32 %51, %52
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end31
  br label %while.end96

if.end37:                                         ; preds = %while.end31
  %53 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %54 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom38 = sext i32 %54 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %53, i64 %idxprom38
  %55 = load i32, i32* %arrayidx39, align 4, !tbaa !12
  store i32 %55, i32* %v, align 4, !tbaa !12
  %56 = load i32, i32* %i, align 4, !tbaa !12
  store i32 %56, i32* %j, align 4, !tbaa !12
  br label %while.cond40

while.cond40:                                     ; preds = %if.end59, %if.end37
  %57 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %58 = load i32, i32* %j, align 4, !tbaa !12
  %59 = load i32, i32* %h, align 4, !tbaa !12
  %sub41 = sub nsw i32 %58, %59
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %57, i64 %idxprom42
  %60 = load i32, i32* %arrayidx43, align 4, !tbaa !12
  %61 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add44 = add i32 %60, %61
  %62 = load i32, i32* %v, align 4, !tbaa !12
  %63 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add45 = add i32 %62, %63
  %64 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %65 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %66 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %67 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %call46 = call zeroext i8 @mainGtU(i32 %add44, i32 %add45, i8* %64, i16* %65, i32 %66, i32* %67)
  %tobool47 = icmp ne i8 %call46, 0
  br i1 %tobool47, label %while.body48, label %while.end60

while.body48:                                     ; preds = %while.cond40
  %68 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %69 = load i32, i32* %j, align 4, !tbaa !12
  %70 = load i32, i32* %h, align 4, !tbaa !12
  %sub49 = sub nsw i32 %69, %70
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %68, i64 %idxprom50
  %71 = load i32, i32* %arrayidx51, align 4, !tbaa !12
  %72 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %73 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom52 = sext i32 %73 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %72, i64 %idxprom52
  store i32 %71, i32* %arrayidx53, align 4, !tbaa !12
  %74 = load i32, i32* %j, align 4, !tbaa !12
  %75 = load i32, i32* %h, align 4, !tbaa !12
  %sub54 = sub nsw i32 %74, %75
  store i32 %sub54, i32* %j, align 4, !tbaa !12
  %76 = load i32, i32* %j, align 4, !tbaa !12
  %77 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %78 = load i32, i32* %h, align 4, !tbaa !12
  %add55 = add nsw i32 %77, %78
  %sub56 = sub nsw i32 %add55, 1
  %cmp57 = icmp sle i32 %76, %sub56
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %while.body48
  br label %while.end60

if.end59:                                         ; preds = %while.body48
  br label %while.cond40, !llvm.loop !81

while.end60:                                      ; preds = %if.then58, %while.cond40
  %79 = load i32, i32* %v, align 4, !tbaa !12
  %80 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %81 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom61 = sext i32 %81 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %80, i64 %idxprom61
  store i32 %79, i32* %arrayidx62, align 4, !tbaa !12
  %82 = load i32, i32* %i, align 4, !tbaa !12
  %inc63 = add nsw i32 %82, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !12
  %83 = load i32, i32* %i, align 4, !tbaa !12
  %84 = load i32, i32* %hi.addr, align 4, !tbaa !12
  %cmp64 = icmp sgt i32 %83, %84
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.end60
  br label %while.end96

if.end66:                                         ; preds = %while.end60
  %85 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %86 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom67 = sext i32 %86 to i64
  %arrayidx68 = getelementptr inbounds i32, i32* %85, i64 %idxprom67
  %87 = load i32, i32* %arrayidx68, align 4, !tbaa !12
  store i32 %87, i32* %v, align 4, !tbaa !12
  %88 = load i32, i32* %i, align 4, !tbaa !12
  store i32 %88, i32* %j, align 4, !tbaa !12
  br label %while.cond69

while.cond69:                                     ; preds = %if.end88, %if.end66
  %89 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %90 = load i32, i32* %j, align 4, !tbaa !12
  %91 = load i32, i32* %h, align 4, !tbaa !12
  %sub70 = sub nsw i32 %90, %91
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* %89, i64 %idxprom71
  %92 = load i32, i32* %arrayidx72, align 4, !tbaa !12
  %93 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add73 = add i32 %92, %93
  %94 = load i32, i32* %v, align 4, !tbaa !12
  %95 = load i32, i32* %d.addr, align 4, !tbaa !12
  %add74 = add i32 %94, %95
  %96 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %97 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %98 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %99 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %call75 = call zeroext i8 @mainGtU(i32 %add73, i32 %add74, i8* %96, i16* %97, i32 %98, i32* %99)
  %tobool76 = icmp ne i8 %call75, 0
  br i1 %tobool76, label %while.body77, label %while.end89

while.body77:                                     ; preds = %while.cond69
  %100 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %101 = load i32, i32* %j, align 4, !tbaa !12
  %102 = load i32, i32* %h, align 4, !tbaa !12
  %sub78 = sub nsw i32 %101, %102
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds i32, i32* %100, i64 %idxprom79
  %103 = load i32, i32* %arrayidx80, align 4, !tbaa !12
  %104 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %105 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom81 = sext i32 %105 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %104, i64 %idxprom81
  store i32 %103, i32* %arrayidx82, align 4, !tbaa !12
  %106 = load i32, i32* %j, align 4, !tbaa !12
  %107 = load i32, i32* %h, align 4, !tbaa !12
  %sub83 = sub nsw i32 %106, %107
  store i32 %sub83, i32* %j, align 4, !tbaa !12
  %108 = load i32, i32* %j, align 4, !tbaa !12
  %109 = load i32, i32* %lo.addr, align 4, !tbaa !12
  %110 = load i32, i32* %h, align 4, !tbaa !12
  %add84 = add nsw i32 %109, %110
  %sub85 = sub nsw i32 %add84, 1
  %cmp86 = icmp sle i32 %108, %sub85
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %while.body77
  br label %while.end89

if.end88:                                         ; preds = %while.body77
  br label %while.cond69, !llvm.loop !82

while.end89:                                      ; preds = %if.then87, %while.cond69
  %111 = load i32, i32* %v, align 4, !tbaa !12
  %112 = load i32*, i32** %ptr.addr, align 8, !tbaa !2
  %113 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom90 = sext i32 %113 to i64
  %arrayidx91 = getelementptr inbounds i32, i32* %112, i64 %idxprom90
  store i32 %111, i32* %arrayidx91, align 4, !tbaa !12
  %114 = load i32, i32* %i, align 4, !tbaa !12
  %inc92 = add nsw i32 %114, 1
  store i32 %inc92, i32* %i, align 4, !tbaa !12
  %115 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %116 = load i32, i32* %115, align 4, !tbaa !12
  %cmp93 = icmp slt i32 %116, 0
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %while.end89
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %while.end89
  br label %while.cond6, !llvm.loop !83

while.end96:                                      ; preds = %if.then65, %if.then36, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %while.end96
  %117 = load i32, i32* %hp, align 4, !tbaa !12
  %dec97 = add nsw i32 %117, -1
  store i32 %dec97, i32* %hp, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then94, %if.then
  %118 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #4
  %119 = bitcast i32* %hp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #4
  %120 = bitcast i32* %bigN to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #4
  %121 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %121) #4
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #4
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @mmed3(i8 zeroext %a, i8 zeroext %b, i8 zeroext %c) #3 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %t = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1, !tbaa !21
  store i8 %b, i8* %b.addr, align 1, !tbaa !21
  store i8 %c, i8* %c.addr, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %t) #4
  %0 = load i8, i8* %a.addr, align 1, !tbaa !21
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1, !tbaa !21
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %a.addr, align 1, !tbaa !21
  store i8 %2, i8* %t, align 1, !tbaa !21
  %3 = load i8, i8* %b.addr, align 1, !tbaa !21
  store i8 %3, i8* %a.addr, align 1, !tbaa !21
  %4 = load i8, i8* %t, align 1, !tbaa !21
  store i8 %4, i8* %b.addr, align 1, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %b.addr, align 1, !tbaa !21
  %conv3 = zext i8 %5 to i32
  %6 = load i8, i8* %c.addr, align 1, !tbaa !21
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp sgt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %7 = load i8, i8* %c.addr, align 1, !tbaa !21
  store i8 %7, i8* %b.addr, align 1, !tbaa !21
  %8 = load i8, i8* %a.addr, align 1, !tbaa !21
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %b.addr, align 1, !tbaa !21
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  %10 = load i8, i8* %a.addr, align 1, !tbaa !21
  store i8 %10, i8* %b.addr, align 1, !tbaa !21
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %11 = load i8, i8* %b.addr, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %t) #4
  ret i8 %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @mainGtU(i32 %i1, i32 %i2, i8* %block, i16* %quadrant, i32 %nblock, i32* %budget) #3 {
entry:
  %retval = alloca i8, align 1
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %s1 = alloca i16, align 2
  %s2 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i1, i32* %i1.addr, align 4, !tbaa !12
  store i32 %i2, i32* %i2.addr, align 4, !tbaa !12
  store i8* %block, i8** %block.addr, align 8, !tbaa !2
  store i16* %quadrant, i16** %quadrant.addr, align 8, !tbaa !2
  store i32 %nblock, i32* %nblock.addr, align 4, !tbaa !12
  store i32* %budget, i32** %budget.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c1) #4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c2) #4
  %1 = bitcast i16* %s1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1) #4
  %2 = bitcast i16* %s2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2) #4
  %3 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %4 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !21
  store i8 %5, i8* %c1, align 1, !tbaa !21
  %6 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !21
  store i8 %8, i8* %c2, align 1, !tbaa !21
  %9 = load i8, i8* %c1, align 1, !tbaa !21
  %conv = zext i8 %9 to i32
  %10 = load i8, i8* %c2, align 1, !tbaa !21
  %conv3 = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8, i8* %c1, align 1, !tbaa !21
  %conv5 = zext i8 %11 to i32
  %12 = load i8, i8* %c2, align 1, !tbaa !21
  %conv6 = zext i8 %12 to i32
  %cmp7 = icmp sgt i32 %conv5, %conv6
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = trunc i32 %conv8 to i8
  store i8 %conv9, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i1.addr, align 4, !tbaa !12
  %14 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc10 = add i32 %14, 1
  store i32 %inc10, i32* %i2.addr, align 4, !tbaa !12
  %15 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom11 = zext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 %idxprom11
  %17 = load i8, i8* %arrayidx12, align 1, !tbaa !21
  store i8 %17, i8* %c1, align 1, !tbaa !21
  %18 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %19 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom13 = zext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1, !tbaa !21
  store i8 %20, i8* %c2, align 1, !tbaa !21
  %21 = load i8, i8* %c1, align 1, !tbaa !21
  %conv15 = zext i8 %21 to i32
  %22 = load i8, i8* %c2, align 1, !tbaa !21
  %conv16 = zext i8 %22 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end
  %23 = load i8, i8* %c1, align 1, !tbaa !21
  %conv20 = zext i8 %23 to i32
  %24 = load i8, i8* %c2, align 1, !tbaa !21
  %conv21 = zext i8 %24 to i32
  %cmp22 = icmp sgt i32 %conv20, %conv21
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i8
  store i8 %conv24, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %25 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc26 = add i32 %25, 1
  store i32 %inc26, i32* %i1.addr, align 4, !tbaa !12
  %26 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc27 = add i32 %26, 1
  store i32 %inc27, i32* %i2.addr, align 4, !tbaa !12
  %27 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %28 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom28 = zext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %27, i64 %idxprom28
  %29 = load i8, i8* %arrayidx29, align 1, !tbaa !21
  store i8 %29, i8* %c1, align 1, !tbaa !21
  %30 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %31 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom30 = zext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %32 = load i8, i8* %arrayidx31, align 1, !tbaa !21
  store i8 %32, i8* %c2, align 1, !tbaa !21
  %33 = load i8, i8* %c1, align 1, !tbaa !21
  %conv32 = zext i8 %33 to i32
  %34 = load i8, i8* %c2, align 1, !tbaa !21
  %conv33 = zext i8 %34 to i32
  %cmp34 = icmp ne i32 %conv32, %conv33
  br i1 %cmp34, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end25
  %35 = load i8, i8* %c1, align 1, !tbaa !21
  %conv37 = zext i8 %35 to i32
  %36 = load i8, i8* %c2, align 1, !tbaa !21
  %conv38 = zext i8 %36 to i32
  %cmp39 = icmp sgt i32 %conv37, %conv38
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = trunc i32 %conv40 to i8
  store i8 %conv41, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end25
  %37 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc43 = add i32 %37, 1
  store i32 %inc43, i32* %i1.addr, align 4, !tbaa !12
  %38 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc44 = add i32 %38, 1
  store i32 %inc44, i32* %i2.addr, align 4, !tbaa !12
  %39 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %40 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom45 = zext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds i8, i8* %39, i64 %idxprom45
  %41 = load i8, i8* %arrayidx46, align 1, !tbaa !21
  store i8 %41, i8* %c1, align 1, !tbaa !21
  %42 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %43 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom47 = zext i32 %43 to i64
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 %idxprom47
  %44 = load i8, i8* %arrayidx48, align 1, !tbaa !21
  store i8 %44, i8* %c2, align 1, !tbaa !21
  %45 = load i8, i8* %c1, align 1, !tbaa !21
  %conv49 = zext i8 %45 to i32
  %46 = load i8, i8* %c2, align 1, !tbaa !21
  %conv50 = zext i8 %46 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end42
  %47 = load i8, i8* %c1, align 1, !tbaa !21
  %conv54 = zext i8 %47 to i32
  %48 = load i8, i8* %c2, align 1, !tbaa !21
  %conv55 = zext i8 %48 to i32
  %cmp56 = icmp sgt i32 %conv54, %conv55
  %conv57 = zext i1 %cmp56 to i32
  %conv58 = trunc i32 %conv57 to i8
  store i8 %conv58, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end42
  %49 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc60 = add i32 %49, 1
  store i32 %inc60, i32* %i1.addr, align 4, !tbaa !12
  %50 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc61 = add i32 %50, 1
  store i32 %inc61, i32* %i2.addr, align 4, !tbaa !12
  %51 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %52 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom62 = zext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %51, i64 %idxprom62
  %53 = load i8, i8* %arrayidx63, align 1, !tbaa !21
  store i8 %53, i8* %c1, align 1, !tbaa !21
  %54 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %55 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom64 = zext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %54, i64 %idxprom64
  %56 = load i8, i8* %arrayidx65, align 1, !tbaa !21
  store i8 %56, i8* %c2, align 1, !tbaa !21
  %57 = load i8, i8* %c1, align 1, !tbaa !21
  %conv66 = zext i8 %57 to i32
  %58 = load i8, i8* %c2, align 1, !tbaa !21
  %conv67 = zext i8 %58 to i32
  %cmp68 = icmp ne i32 %conv66, %conv67
  br i1 %cmp68, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.end59
  %59 = load i8, i8* %c1, align 1, !tbaa !21
  %conv71 = zext i8 %59 to i32
  %60 = load i8, i8* %c2, align 1, !tbaa !21
  %conv72 = zext i8 %60 to i32
  %cmp73 = icmp sgt i32 %conv71, %conv72
  %conv74 = zext i1 %cmp73 to i32
  %conv75 = trunc i32 %conv74 to i8
  store i8 %conv75, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end76:                                         ; preds = %if.end59
  %61 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc77 = add i32 %61, 1
  store i32 %inc77, i32* %i1.addr, align 4, !tbaa !12
  %62 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc78 = add i32 %62, 1
  store i32 %inc78, i32* %i2.addr, align 4, !tbaa !12
  %63 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %64 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom79 = zext i32 %64 to i64
  %arrayidx80 = getelementptr inbounds i8, i8* %63, i64 %idxprom79
  %65 = load i8, i8* %arrayidx80, align 1, !tbaa !21
  store i8 %65, i8* %c1, align 1, !tbaa !21
  %66 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %67 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom81 = zext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds i8, i8* %66, i64 %idxprom81
  %68 = load i8, i8* %arrayidx82, align 1, !tbaa !21
  store i8 %68, i8* %c2, align 1, !tbaa !21
  %69 = load i8, i8* %c1, align 1, !tbaa !21
  %conv83 = zext i8 %69 to i32
  %70 = load i8, i8* %c2, align 1, !tbaa !21
  %conv84 = zext i8 %70 to i32
  %cmp85 = icmp ne i32 %conv83, %conv84
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end76
  %71 = load i8, i8* %c1, align 1, !tbaa !21
  %conv88 = zext i8 %71 to i32
  %72 = load i8, i8* %c2, align 1, !tbaa !21
  %conv89 = zext i8 %72 to i32
  %cmp90 = icmp sgt i32 %conv88, %conv89
  %conv91 = zext i1 %cmp90 to i32
  %conv92 = trunc i32 %conv91 to i8
  store i8 %conv92, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.end76
  %73 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc94 = add i32 %73, 1
  store i32 %inc94, i32* %i1.addr, align 4, !tbaa !12
  %74 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc95 = add i32 %74, 1
  store i32 %inc95, i32* %i2.addr, align 4, !tbaa !12
  %75 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %76 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom96 = zext i32 %76 to i64
  %arrayidx97 = getelementptr inbounds i8, i8* %75, i64 %idxprom96
  %77 = load i8, i8* %arrayidx97, align 1, !tbaa !21
  store i8 %77, i8* %c1, align 1, !tbaa !21
  %78 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %79 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom98 = zext i32 %79 to i64
  %arrayidx99 = getelementptr inbounds i8, i8* %78, i64 %idxprom98
  %80 = load i8, i8* %arrayidx99, align 1, !tbaa !21
  store i8 %80, i8* %c2, align 1, !tbaa !21
  %81 = load i8, i8* %c1, align 1, !tbaa !21
  %conv100 = zext i8 %81 to i32
  %82 = load i8, i8* %c2, align 1, !tbaa !21
  %conv101 = zext i8 %82 to i32
  %cmp102 = icmp ne i32 %conv100, %conv101
  br i1 %cmp102, label %if.then104, label %if.end110

if.then104:                                       ; preds = %if.end93
  %83 = load i8, i8* %c1, align 1, !tbaa !21
  %conv105 = zext i8 %83 to i32
  %84 = load i8, i8* %c2, align 1, !tbaa !21
  %conv106 = zext i8 %84 to i32
  %cmp107 = icmp sgt i32 %conv105, %conv106
  %conv108 = zext i1 %cmp107 to i32
  %conv109 = trunc i32 %conv108 to i8
  store i8 %conv109, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end110:                                        ; preds = %if.end93
  %85 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc111 = add i32 %85, 1
  store i32 %inc111, i32* %i1.addr, align 4, !tbaa !12
  %86 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc112 = add i32 %86, 1
  store i32 %inc112, i32* %i2.addr, align 4, !tbaa !12
  %87 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %88 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom113 = zext i32 %88 to i64
  %arrayidx114 = getelementptr inbounds i8, i8* %87, i64 %idxprom113
  %89 = load i8, i8* %arrayidx114, align 1, !tbaa !21
  store i8 %89, i8* %c1, align 1, !tbaa !21
  %90 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %91 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom115 = zext i32 %91 to i64
  %arrayidx116 = getelementptr inbounds i8, i8* %90, i64 %idxprom115
  %92 = load i8, i8* %arrayidx116, align 1, !tbaa !21
  store i8 %92, i8* %c2, align 1, !tbaa !21
  %93 = load i8, i8* %c1, align 1, !tbaa !21
  %conv117 = zext i8 %93 to i32
  %94 = load i8, i8* %c2, align 1, !tbaa !21
  %conv118 = zext i8 %94 to i32
  %cmp119 = icmp ne i32 %conv117, %conv118
  br i1 %cmp119, label %if.then121, label %if.end127

if.then121:                                       ; preds = %if.end110
  %95 = load i8, i8* %c1, align 1, !tbaa !21
  %conv122 = zext i8 %95 to i32
  %96 = load i8, i8* %c2, align 1, !tbaa !21
  %conv123 = zext i8 %96 to i32
  %cmp124 = icmp sgt i32 %conv122, %conv123
  %conv125 = zext i1 %cmp124 to i32
  %conv126 = trunc i32 %conv125 to i8
  store i8 %conv126, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end127:                                        ; preds = %if.end110
  %97 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc128 = add i32 %97, 1
  store i32 %inc128, i32* %i1.addr, align 4, !tbaa !12
  %98 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc129 = add i32 %98, 1
  store i32 %inc129, i32* %i2.addr, align 4, !tbaa !12
  %99 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %100 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom130 = zext i32 %100 to i64
  %arrayidx131 = getelementptr inbounds i8, i8* %99, i64 %idxprom130
  %101 = load i8, i8* %arrayidx131, align 1, !tbaa !21
  store i8 %101, i8* %c1, align 1, !tbaa !21
  %102 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %103 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom132 = zext i32 %103 to i64
  %arrayidx133 = getelementptr inbounds i8, i8* %102, i64 %idxprom132
  %104 = load i8, i8* %arrayidx133, align 1, !tbaa !21
  store i8 %104, i8* %c2, align 1, !tbaa !21
  %105 = load i8, i8* %c1, align 1, !tbaa !21
  %conv134 = zext i8 %105 to i32
  %106 = load i8, i8* %c2, align 1, !tbaa !21
  %conv135 = zext i8 %106 to i32
  %cmp136 = icmp ne i32 %conv134, %conv135
  br i1 %cmp136, label %if.then138, label %if.end144

if.then138:                                       ; preds = %if.end127
  %107 = load i8, i8* %c1, align 1, !tbaa !21
  %conv139 = zext i8 %107 to i32
  %108 = load i8, i8* %c2, align 1, !tbaa !21
  %conv140 = zext i8 %108 to i32
  %cmp141 = icmp sgt i32 %conv139, %conv140
  %conv142 = zext i1 %cmp141 to i32
  %conv143 = trunc i32 %conv142 to i8
  store i8 %conv143, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.end127
  %109 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc145 = add i32 %109, 1
  store i32 %inc145, i32* %i1.addr, align 4, !tbaa !12
  %110 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc146 = add i32 %110, 1
  store i32 %inc146, i32* %i2.addr, align 4, !tbaa !12
  %111 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %112 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom147 = zext i32 %112 to i64
  %arrayidx148 = getelementptr inbounds i8, i8* %111, i64 %idxprom147
  %113 = load i8, i8* %arrayidx148, align 1, !tbaa !21
  store i8 %113, i8* %c1, align 1, !tbaa !21
  %114 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %115 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom149 = zext i32 %115 to i64
  %arrayidx150 = getelementptr inbounds i8, i8* %114, i64 %idxprom149
  %116 = load i8, i8* %arrayidx150, align 1, !tbaa !21
  store i8 %116, i8* %c2, align 1, !tbaa !21
  %117 = load i8, i8* %c1, align 1, !tbaa !21
  %conv151 = zext i8 %117 to i32
  %118 = load i8, i8* %c2, align 1, !tbaa !21
  %conv152 = zext i8 %118 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br i1 %cmp153, label %if.then155, label %if.end161

if.then155:                                       ; preds = %if.end144
  %119 = load i8, i8* %c1, align 1, !tbaa !21
  %conv156 = zext i8 %119 to i32
  %120 = load i8, i8* %c2, align 1, !tbaa !21
  %conv157 = zext i8 %120 to i32
  %cmp158 = icmp sgt i32 %conv156, %conv157
  %conv159 = zext i1 %cmp158 to i32
  %conv160 = trunc i32 %conv159 to i8
  store i8 %conv160, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end161:                                        ; preds = %if.end144
  %121 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc162 = add i32 %121, 1
  store i32 %inc162, i32* %i1.addr, align 4, !tbaa !12
  %122 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc163 = add i32 %122, 1
  store i32 %inc163, i32* %i2.addr, align 4, !tbaa !12
  %123 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %124 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom164 = zext i32 %124 to i64
  %arrayidx165 = getelementptr inbounds i8, i8* %123, i64 %idxprom164
  %125 = load i8, i8* %arrayidx165, align 1, !tbaa !21
  store i8 %125, i8* %c1, align 1, !tbaa !21
  %126 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %127 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom166 = zext i32 %127 to i64
  %arrayidx167 = getelementptr inbounds i8, i8* %126, i64 %idxprom166
  %128 = load i8, i8* %arrayidx167, align 1, !tbaa !21
  store i8 %128, i8* %c2, align 1, !tbaa !21
  %129 = load i8, i8* %c1, align 1, !tbaa !21
  %conv168 = zext i8 %129 to i32
  %130 = load i8, i8* %c2, align 1, !tbaa !21
  %conv169 = zext i8 %130 to i32
  %cmp170 = icmp ne i32 %conv168, %conv169
  br i1 %cmp170, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.end161
  %131 = load i8, i8* %c1, align 1, !tbaa !21
  %conv173 = zext i8 %131 to i32
  %132 = load i8, i8* %c2, align 1, !tbaa !21
  %conv174 = zext i8 %132 to i32
  %cmp175 = icmp sgt i32 %conv173, %conv174
  %conv176 = zext i1 %cmp175 to i32
  %conv177 = trunc i32 %conv176 to i8
  store i8 %conv177, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end178:                                        ; preds = %if.end161
  %133 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc179 = add i32 %133, 1
  store i32 %inc179, i32* %i1.addr, align 4, !tbaa !12
  %134 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc180 = add i32 %134, 1
  store i32 %inc180, i32* %i2.addr, align 4, !tbaa !12
  %135 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %136 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom181 = zext i32 %136 to i64
  %arrayidx182 = getelementptr inbounds i8, i8* %135, i64 %idxprom181
  %137 = load i8, i8* %arrayidx182, align 1, !tbaa !21
  store i8 %137, i8* %c1, align 1, !tbaa !21
  %138 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %139 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom183 = zext i32 %139 to i64
  %arrayidx184 = getelementptr inbounds i8, i8* %138, i64 %idxprom183
  %140 = load i8, i8* %arrayidx184, align 1, !tbaa !21
  store i8 %140, i8* %c2, align 1, !tbaa !21
  %141 = load i8, i8* %c1, align 1, !tbaa !21
  %conv185 = zext i8 %141 to i32
  %142 = load i8, i8* %c2, align 1, !tbaa !21
  %conv186 = zext i8 %142 to i32
  %cmp187 = icmp ne i32 %conv185, %conv186
  br i1 %cmp187, label %if.then189, label %if.end195

if.then189:                                       ; preds = %if.end178
  %143 = load i8, i8* %c1, align 1, !tbaa !21
  %conv190 = zext i8 %143 to i32
  %144 = load i8, i8* %c2, align 1, !tbaa !21
  %conv191 = zext i8 %144 to i32
  %cmp192 = icmp sgt i32 %conv190, %conv191
  %conv193 = zext i1 %cmp192 to i32
  %conv194 = trunc i32 %conv193 to i8
  store i8 %conv194, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end195:                                        ; preds = %if.end178
  %145 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc196 = add i32 %145, 1
  store i32 %inc196, i32* %i1.addr, align 4, !tbaa !12
  %146 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc197 = add i32 %146, 1
  store i32 %inc197, i32* %i2.addr, align 4, !tbaa !12
  %147 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %add = add i32 %147, 8
  store i32 %add, i32* %k, align 4, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end195
  %148 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %149 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom198 = zext i32 %149 to i64
  %arrayidx199 = getelementptr inbounds i8, i8* %148, i64 %idxprom198
  %150 = load i8, i8* %arrayidx199, align 1, !tbaa !21
  store i8 %150, i8* %c1, align 1, !tbaa !21
  %151 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %152 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom200 = zext i32 %152 to i64
  %arrayidx201 = getelementptr inbounds i8, i8* %151, i64 %idxprom200
  %153 = load i8, i8* %arrayidx201, align 1, !tbaa !21
  store i8 %153, i8* %c2, align 1, !tbaa !21
  %154 = load i8, i8* %c1, align 1, !tbaa !21
  %conv202 = zext i8 %154 to i32
  %155 = load i8, i8* %c2, align 1, !tbaa !21
  %conv203 = zext i8 %155 to i32
  %cmp204 = icmp ne i32 %conv202, %conv203
  br i1 %cmp204, label %if.then206, label %if.end212

if.then206:                                       ; preds = %do.body
  %156 = load i8, i8* %c1, align 1, !tbaa !21
  %conv207 = zext i8 %156 to i32
  %157 = load i8, i8* %c2, align 1, !tbaa !21
  %conv208 = zext i8 %157 to i32
  %cmp209 = icmp sgt i32 %conv207, %conv208
  %conv210 = zext i1 %cmp209 to i32
  %conv211 = trunc i32 %conv210 to i8
  store i8 %conv211, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end212:                                        ; preds = %do.body
  %158 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %159 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom213 = zext i32 %159 to i64
  %arrayidx214 = getelementptr inbounds i16, i16* %158, i64 %idxprom213
  %160 = load i16, i16* %arrayidx214, align 2, !tbaa !42
  store i16 %160, i16* %s1, align 2, !tbaa !42
  %161 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %162 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom215 = zext i32 %162 to i64
  %arrayidx216 = getelementptr inbounds i16, i16* %161, i64 %idxprom215
  %163 = load i16, i16* %arrayidx216, align 2, !tbaa !42
  store i16 %163, i16* %s2, align 2, !tbaa !42
  %164 = load i16, i16* %s1, align 2, !tbaa !42
  %conv217 = zext i16 %164 to i32
  %165 = load i16, i16* %s2, align 2, !tbaa !42
  %conv218 = zext i16 %165 to i32
  %cmp219 = icmp ne i32 %conv217, %conv218
  br i1 %cmp219, label %if.then221, label %if.end227

if.then221:                                       ; preds = %if.end212
  %166 = load i16, i16* %s1, align 2, !tbaa !42
  %conv222 = zext i16 %166 to i32
  %167 = load i16, i16* %s2, align 2, !tbaa !42
  %conv223 = zext i16 %167 to i32
  %cmp224 = icmp sgt i32 %conv222, %conv223
  %conv225 = zext i1 %cmp224 to i32
  %conv226 = trunc i32 %conv225 to i8
  store i8 %conv226, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end227:                                        ; preds = %if.end212
  %168 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc228 = add i32 %168, 1
  store i32 %inc228, i32* %i1.addr, align 4, !tbaa !12
  %169 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc229 = add i32 %169, 1
  store i32 %inc229, i32* %i2.addr, align 4, !tbaa !12
  %170 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %171 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom230 = zext i32 %171 to i64
  %arrayidx231 = getelementptr inbounds i8, i8* %170, i64 %idxprom230
  %172 = load i8, i8* %arrayidx231, align 1, !tbaa !21
  store i8 %172, i8* %c1, align 1, !tbaa !21
  %173 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %174 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom232 = zext i32 %174 to i64
  %arrayidx233 = getelementptr inbounds i8, i8* %173, i64 %idxprom232
  %175 = load i8, i8* %arrayidx233, align 1, !tbaa !21
  store i8 %175, i8* %c2, align 1, !tbaa !21
  %176 = load i8, i8* %c1, align 1, !tbaa !21
  %conv234 = zext i8 %176 to i32
  %177 = load i8, i8* %c2, align 1, !tbaa !21
  %conv235 = zext i8 %177 to i32
  %cmp236 = icmp ne i32 %conv234, %conv235
  br i1 %cmp236, label %if.then238, label %if.end244

if.then238:                                       ; preds = %if.end227
  %178 = load i8, i8* %c1, align 1, !tbaa !21
  %conv239 = zext i8 %178 to i32
  %179 = load i8, i8* %c2, align 1, !tbaa !21
  %conv240 = zext i8 %179 to i32
  %cmp241 = icmp sgt i32 %conv239, %conv240
  %conv242 = zext i1 %cmp241 to i32
  %conv243 = trunc i32 %conv242 to i8
  store i8 %conv243, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end244:                                        ; preds = %if.end227
  %180 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %181 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom245 = zext i32 %181 to i64
  %arrayidx246 = getelementptr inbounds i16, i16* %180, i64 %idxprom245
  %182 = load i16, i16* %arrayidx246, align 2, !tbaa !42
  store i16 %182, i16* %s1, align 2, !tbaa !42
  %183 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %184 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom247 = zext i32 %184 to i64
  %arrayidx248 = getelementptr inbounds i16, i16* %183, i64 %idxprom247
  %185 = load i16, i16* %arrayidx248, align 2, !tbaa !42
  store i16 %185, i16* %s2, align 2, !tbaa !42
  %186 = load i16, i16* %s1, align 2, !tbaa !42
  %conv249 = zext i16 %186 to i32
  %187 = load i16, i16* %s2, align 2, !tbaa !42
  %conv250 = zext i16 %187 to i32
  %cmp251 = icmp ne i32 %conv249, %conv250
  br i1 %cmp251, label %if.then253, label %if.end259

if.then253:                                       ; preds = %if.end244
  %188 = load i16, i16* %s1, align 2, !tbaa !42
  %conv254 = zext i16 %188 to i32
  %189 = load i16, i16* %s2, align 2, !tbaa !42
  %conv255 = zext i16 %189 to i32
  %cmp256 = icmp sgt i32 %conv254, %conv255
  %conv257 = zext i1 %cmp256 to i32
  %conv258 = trunc i32 %conv257 to i8
  store i8 %conv258, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end259:                                        ; preds = %if.end244
  %190 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc260 = add i32 %190, 1
  store i32 %inc260, i32* %i1.addr, align 4, !tbaa !12
  %191 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc261 = add i32 %191, 1
  store i32 %inc261, i32* %i2.addr, align 4, !tbaa !12
  %192 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %193 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom262 = zext i32 %193 to i64
  %arrayidx263 = getelementptr inbounds i8, i8* %192, i64 %idxprom262
  %194 = load i8, i8* %arrayidx263, align 1, !tbaa !21
  store i8 %194, i8* %c1, align 1, !tbaa !21
  %195 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %196 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom264 = zext i32 %196 to i64
  %arrayidx265 = getelementptr inbounds i8, i8* %195, i64 %idxprom264
  %197 = load i8, i8* %arrayidx265, align 1, !tbaa !21
  store i8 %197, i8* %c2, align 1, !tbaa !21
  %198 = load i8, i8* %c1, align 1, !tbaa !21
  %conv266 = zext i8 %198 to i32
  %199 = load i8, i8* %c2, align 1, !tbaa !21
  %conv267 = zext i8 %199 to i32
  %cmp268 = icmp ne i32 %conv266, %conv267
  br i1 %cmp268, label %if.then270, label %if.end276

if.then270:                                       ; preds = %if.end259
  %200 = load i8, i8* %c1, align 1, !tbaa !21
  %conv271 = zext i8 %200 to i32
  %201 = load i8, i8* %c2, align 1, !tbaa !21
  %conv272 = zext i8 %201 to i32
  %cmp273 = icmp sgt i32 %conv271, %conv272
  %conv274 = zext i1 %cmp273 to i32
  %conv275 = trunc i32 %conv274 to i8
  store i8 %conv275, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end276:                                        ; preds = %if.end259
  %202 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %203 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom277 = zext i32 %203 to i64
  %arrayidx278 = getelementptr inbounds i16, i16* %202, i64 %idxprom277
  %204 = load i16, i16* %arrayidx278, align 2, !tbaa !42
  store i16 %204, i16* %s1, align 2, !tbaa !42
  %205 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %206 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom279 = zext i32 %206 to i64
  %arrayidx280 = getelementptr inbounds i16, i16* %205, i64 %idxprom279
  %207 = load i16, i16* %arrayidx280, align 2, !tbaa !42
  store i16 %207, i16* %s2, align 2, !tbaa !42
  %208 = load i16, i16* %s1, align 2, !tbaa !42
  %conv281 = zext i16 %208 to i32
  %209 = load i16, i16* %s2, align 2, !tbaa !42
  %conv282 = zext i16 %209 to i32
  %cmp283 = icmp ne i32 %conv281, %conv282
  br i1 %cmp283, label %if.then285, label %if.end291

if.then285:                                       ; preds = %if.end276
  %210 = load i16, i16* %s1, align 2, !tbaa !42
  %conv286 = zext i16 %210 to i32
  %211 = load i16, i16* %s2, align 2, !tbaa !42
  %conv287 = zext i16 %211 to i32
  %cmp288 = icmp sgt i32 %conv286, %conv287
  %conv289 = zext i1 %cmp288 to i32
  %conv290 = trunc i32 %conv289 to i8
  store i8 %conv290, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end291:                                        ; preds = %if.end276
  %212 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc292 = add i32 %212, 1
  store i32 %inc292, i32* %i1.addr, align 4, !tbaa !12
  %213 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc293 = add i32 %213, 1
  store i32 %inc293, i32* %i2.addr, align 4, !tbaa !12
  %214 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %215 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom294 = zext i32 %215 to i64
  %arrayidx295 = getelementptr inbounds i8, i8* %214, i64 %idxprom294
  %216 = load i8, i8* %arrayidx295, align 1, !tbaa !21
  store i8 %216, i8* %c1, align 1, !tbaa !21
  %217 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %218 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom296 = zext i32 %218 to i64
  %arrayidx297 = getelementptr inbounds i8, i8* %217, i64 %idxprom296
  %219 = load i8, i8* %arrayidx297, align 1, !tbaa !21
  store i8 %219, i8* %c2, align 1, !tbaa !21
  %220 = load i8, i8* %c1, align 1, !tbaa !21
  %conv298 = zext i8 %220 to i32
  %221 = load i8, i8* %c2, align 1, !tbaa !21
  %conv299 = zext i8 %221 to i32
  %cmp300 = icmp ne i32 %conv298, %conv299
  br i1 %cmp300, label %if.then302, label %if.end308

if.then302:                                       ; preds = %if.end291
  %222 = load i8, i8* %c1, align 1, !tbaa !21
  %conv303 = zext i8 %222 to i32
  %223 = load i8, i8* %c2, align 1, !tbaa !21
  %conv304 = zext i8 %223 to i32
  %cmp305 = icmp sgt i32 %conv303, %conv304
  %conv306 = zext i1 %cmp305 to i32
  %conv307 = trunc i32 %conv306 to i8
  store i8 %conv307, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end308:                                        ; preds = %if.end291
  %224 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %225 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom309 = zext i32 %225 to i64
  %arrayidx310 = getelementptr inbounds i16, i16* %224, i64 %idxprom309
  %226 = load i16, i16* %arrayidx310, align 2, !tbaa !42
  store i16 %226, i16* %s1, align 2, !tbaa !42
  %227 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %228 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom311 = zext i32 %228 to i64
  %arrayidx312 = getelementptr inbounds i16, i16* %227, i64 %idxprom311
  %229 = load i16, i16* %arrayidx312, align 2, !tbaa !42
  store i16 %229, i16* %s2, align 2, !tbaa !42
  %230 = load i16, i16* %s1, align 2, !tbaa !42
  %conv313 = zext i16 %230 to i32
  %231 = load i16, i16* %s2, align 2, !tbaa !42
  %conv314 = zext i16 %231 to i32
  %cmp315 = icmp ne i32 %conv313, %conv314
  br i1 %cmp315, label %if.then317, label %if.end323

if.then317:                                       ; preds = %if.end308
  %232 = load i16, i16* %s1, align 2, !tbaa !42
  %conv318 = zext i16 %232 to i32
  %233 = load i16, i16* %s2, align 2, !tbaa !42
  %conv319 = zext i16 %233 to i32
  %cmp320 = icmp sgt i32 %conv318, %conv319
  %conv321 = zext i1 %cmp320 to i32
  %conv322 = trunc i32 %conv321 to i8
  store i8 %conv322, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end323:                                        ; preds = %if.end308
  %234 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc324 = add i32 %234, 1
  store i32 %inc324, i32* %i1.addr, align 4, !tbaa !12
  %235 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc325 = add i32 %235, 1
  store i32 %inc325, i32* %i2.addr, align 4, !tbaa !12
  %236 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %237 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom326 = zext i32 %237 to i64
  %arrayidx327 = getelementptr inbounds i8, i8* %236, i64 %idxprom326
  %238 = load i8, i8* %arrayidx327, align 1, !tbaa !21
  store i8 %238, i8* %c1, align 1, !tbaa !21
  %239 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %240 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom328 = zext i32 %240 to i64
  %arrayidx329 = getelementptr inbounds i8, i8* %239, i64 %idxprom328
  %241 = load i8, i8* %arrayidx329, align 1, !tbaa !21
  store i8 %241, i8* %c2, align 1, !tbaa !21
  %242 = load i8, i8* %c1, align 1, !tbaa !21
  %conv330 = zext i8 %242 to i32
  %243 = load i8, i8* %c2, align 1, !tbaa !21
  %conv331 = zext i8 %243 to i32
  %cmp332 = icmp ne i32 %conv330, %conv331
  br i1 %cmp332, label %if.then334, label %if.end340

if.then334:                                       ; preds = %if.end323
  %244 = load i8, i8* %c1, align 1, !tbaa !21
  %conv335 = zext i8 %244 to i32
  %245 = load i8, i8* %c2, align 1, !tbaa !21
  %conv336 = zext i8 %245 to i32
  %cmp337 = icmp sgt i32 %conv335, %conv336
  %conv338 = zext i1 %cmp337 to i32
  %conv339 = trunc i32 %conv338 to i8
  store i8 %conv339, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end340:                                        ; preds = %if.end323
  %246 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %247 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom341 = zext i32 %247 to i64
  %arrayidx342 = getelementptr inbounds i16, i16* %246, i64 %idxprom341
  %248 = load i16, i16* %arrayidx342, align 2, !tbaa !42
  store i16 %248, i16* %s1, align 2, !tbaa !42
  %249 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %250 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom343 = zext i32 %250 to i64
  %arrayidx344 = getelementptr inbounds i16, i16* %249, i64 %idxprom343
  %251 = load i16, i16* %arrayidx344, align 2, !tbaa !42
  store i16 %251, i16* %s2, align 2, !tbaa !42
  %252 = load i16, i16* %s1, align 2, !tbaa !42
  %conv345 = zext i16 %252 to i32
  %253 = load i16, i16* %s2, align 2, !tbaa !42
  %conv346 = zext i16 %253 to i32
  %cmp347 = icmp ne i32 %conv345, %conv346
  br i1 %cmp347, label %if.then349, label %if.end355

if.then349:                                       ; preds = %if.end340
  %254 = load i16, i16* %s1, align 2, !tbaa !42
  %conv350 = zext i16 %254 to i32
  %255 = load i16, i16* %s2, align 2, !tbaa !42
  %conv351 = zext i16 %255 to i32
  %cmp352 = icmp sgt i32 %conv350, %conv351
  %conv353 = zext i1 %cmp352 to i32
  %conv354 = trunc i32 %conv353 to i8
  store i8 %conv354, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end355:                                        ; preds = %if.end340
  %256 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc356 = add i32 %256, 1
  store i32 %inc356, i32* %i1.addr, align 4, !tbaa !12
  %257 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc357 = add i32 %257, 1
  store i32 %inc357, i32* %i2.addr, align 4, !tbaa !12
  %258 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %259 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom358 = zext i32 %259 to i64
  %arrayidx359 = getelementptr inbounds i8, i8* %258, i64 %idxprom358
  %260 = load i8, i8* %arrayidx359, align 1, !tbaa !21
  store i8 %260, i8* %c1, align 1, !tbaa !21
  %261 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %262 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom360 = zext i32 %262 to i64
  %arrayidx361 = getelementptr inbounds i8, i8* %261, i64 %idxprom360
  %263 = load i8, i8* %arrayidx361, align 1, !tbaa !21
  store i8 %263, i8* %c2, align 1, !tbaa !21
  %264 = load i8, i8* %c1, align 1, !tbaa !21
  %conv362 = zext i8 %264 to i32
  %265 = load i8, i8* %c2, align 1, !tbaa !21
  %conv363 = zext i8 %265 to i32
  %cmp364 = icmp ne i32 %conv362, %conv363
  br i1 %cmp364, label %if.then366, label %if.end372

if.then366:                                       ; preds = %if.end355
  %266 = load i8, i8* %c1, align 1, !tbaa !21
  %conv367 = zext i8 %266 to i32
  %267 = load i8, i8* %c2, align 1, !tbaa !21
  %conv368 = zext i8 %267 to i32
  %cmp369 = icmp sgt i32 %conv367, %conv368
  %conv370 = zext i1 %cmp369 to i32
  %conv371 = trunc i32 %conv370 to i8
  store i8 %conv371, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end372:                                        ; preds = %if.end355
  %268 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %269 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom373 = zext i32 %269 to i64
  %arrayidx374 = getelementptr inbounds i16, i16* %268, i64 %idxprom373
  %270 = load i16, i16* %arrayidx374, align 2, !tbaa !42
  store i16 %270, i16* %s1, align 2, !tbaa !42
  %271 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %272 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom375 = zext i32 %272 to i64
  %arrayidx376 = getelementptr inbounds i16, i16* %271, i64 %idxprom375
  %273 = load i16, i16* %arrayidx376, align 2, !tbaa !42
  store i16 %273, i16* %s2, align 2, !tbaa !42
  %274 = load i16, i16* %s1, align 2, !tbaa !42
  %conv377 = zext i16 %274 to i32
  %275 = load i16, i16* %s2, align 2, !tbaa !42
  %conv378 = zext i16 %275 to i32
  %cmp379 = icmp ne i32 %conv377, %conv378
  br i1 %cmp379, label %if.then381, label %if.end387

if.then381:                                       ; preds = %if.end372
  %276 = load i16, i16* %s1, align 2, !tbaa !42
  %conv382 = zext i16 %276 to i32
  %277 = load i16, i16* %s2, align 2, !tbaa !42
  %conv383 = zext i16 %277 to i32
  %cmp384 = icmp sgt i32 %conv382, %conv383
  %conv385 = zext i1 %cmp384 to i32
  %conv386 = trunc i32 %conv385 to i8
  store i8 %conv386, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end387:                                        ; preds = %if.end372
  %278 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc388 = add i32 %278, 1
  store i32 %inc388, i32* %i1.addr, align 4, !tbaa !12
  %279 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc389 = add i32 %279, 1
  store i32 %inc389, i32* %i2.addr, align 4, !tbaa !12
  %280 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %281 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom390 = zext i32 %281 to i64
  %arrayidx391 = getelementptr inbounds i8, i8* %280, i64 %idxprom390
  %282 = load i8, i8* %arrayidx391, align 1, !tbaa !21
  store i8 %282, i8* %c1, align 1, !tbaa !21
  %283 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %284 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom392 = zext i32 %284 to i64
  %arrayidx393 = getelementptr inbounds i8, i8* %283, i64 %idxprom392
  %285 = load i8, i8* %arrayidx393, align 1, !tbaa !21
  store i8 %285, i8* %c2, align 1, !tbaa !21
  %286 = load i8, i8* %c1, align 1, !tbaa !21
  %conv394 = zext i8 %286 to i32
  %287 = load i8, i8* %c2, align 1, !tbaa !21
  %conv395 = zext i8 %287 to i32
  %cmp396 = icmp ne i32 %conv394, %conv395
  br i1 %cmp396, label %if.then398, label %if.end404

if.then398:                                       ; preds = %if.end387
  %288 = load i8, i8* %c1, align 1, !tbaa !21
  %conv399 = zext i8 %288 to i32
  %289 = load i8, i8* %c2, align 1, !tbaa !21
  %conv400 = zext i8 %289 to i32
  %cmp401 = icmp sgt i32 %conv399, %conv400
  %conv402 = zext i1 %cmp401 to i32
  %conv403 = trunc i32 %conv402 to i8
  store i8 %conv403, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end404:                                        ; preds = %if.end387
  %290 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %291 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom405 = zext i32 %291 to i64
  %arrayidx406 = getelementptr inbounds i16, i16* %290, i64 %idxprom405
  %292 = load i16, i16* %arrayidx406, align 2, !tbaa !42
  store i16 %292, i16* %s1, align 2, !tbaa !42
  %293 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %294 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom407 = zext i32 %294 to i64
  %arrayidx408 = getelementptr inbounds i16, i16* %293, i64 %idxprom407
  %295 = load i16, i16* %arrayidx408, align 2, !tbaa !42
  store i16 %295, i16* %s2, align 2, !tbaa !42
  %296 = load i16, i16* %s1, align 2, !tbaa !42
  %conv409 = zext i16 %296 to i32
  %297 = load i16, i16* %s2, align 2, !tbaa !42
  %conv410 = zext i16 %297 to i32
  %cmp411 = icmp ne i32 %conv409, %conv410
  br i1 %cmp411, label %if.then413, label %if.end419

if.then413:                                       ; preds = %if.end404
  %298 = load i16, i16* %s1, align 2, !tbaa !42
  %conv414 = zext i16 %298 to i32
  %299 = load i16, i16* %s2, align 2, !tbaa !42
  %conv415 = zext i16 %299 to i32
  %cmp416 = icmp sgt i32 %conv414, %conv415
  %conv417 = zext i1 %cmp416 to i32
  %conv418 = trunc i32 %conv417 to i8
  store i8 %conv418, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end419:                                        ; preds = %if.end404
  %300 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc420 = add i32 %300, 1
  store i32 %inc420, i32* %i1.addr, align 4, !tbaa !12
  %301 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc421 = add i32 %301, 1
  store i32 %inc421, i32* %i2.addr, align 4, !tbaa !12
  %302 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %303 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom422 = zext i32 %303 to i64
  %arrayidx423 = getelementptr inbounds i8, i8* %302, i64 %idxprom422
  %304 = load i8, i8* %arrayidx423, align 1, !tbaa !21
  store i8 %304, i8* %c1, align 1, !tbaa !21
  %305 = load i8*, i8** %block.addr, align 8, !tbaa !2
  %306 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom424 = zext i32 %306 to i64
  %arrayidx425 = getelementptr inbounds i8, i8* %305, i64 %idxprom424
  %307 = load i8, i8* %arrayidx425, align 1, !tbaa !21
  store i8 %307, i8* %c2, align 1, !tbaa !21
  %308 = load i8, i8* %c1, align 1, !tbaa !21
  %conv426 = zext i8 %308 to i32
  %309 = load i8, i8* %c2, align 1, !tbaa !21
  %conv427 = zext i8 %309 to i32
  %cmp428 = icmp ne i32 %conv426, %conv427
  br i1 %cmp428, label %if.then430, label %if.end436

if.then430:                                       ; preds = %if.end419
  %310 = load i8, i8* %c1, align 1, !tbaa !21
  %conv431 = zext i8 %310 to i32
  %311 = load i8, i8* %c2, align 1, !tbaa !21
  %conv432 = zext i8 %311 to i32
  %cmp433 = icmp sgt i32 %conv431, %conv432
  %conv434 = zext i1 %cmp433 to i32
  %conv435 = trunc i32 %conv434 to i8
  store i8 %conv435, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end436:                                        ; preds = %if.end419
  %312 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %313 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %idxprom437 = zext i32 %313 to i64
  %arrayidx438 = getelementptr inbounds i16, i16* %312, i64 %idxprom437
  %314 = load i16, i16* %arrayidx438, align 2, !tbaa !42
  store i16 %314, i16* %s1, align 2, !tbaa !42
  %315 = load i16*, i16** %quadrant.addr, align 8, !tbaa !2
  %316 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %idxprom439 = zext i32 %316 to i64
  %arrayidx440 = getelementptr inbounds i16, i16* %315, i64 %idxprom439
  %317 = load i16, i16* %arrayidx440, align 2, !tbaa !42
  store i16 %317, i16* %s2, align 2, !tbaa !42
  %318 = load i16, i16* %s1, align 2, !tbaa !42
  %conv441 = zext i16 %318 to i32
  %319 = load i16, i16* %s2, align 2, !tbaa !42
  %conv442 = zext i16 %319 to i32
  %cmp443 = icmp ne i32 %conv441, %conv442
  br i1 %cmp443, label %if.then445, label %if.end451

if.then445:                                       ; preds = %if.end436
  %320 = load i16, i16* %s1, align 2, !tbaa !42
  %conv446 = zext i16 %320 to i32
  %321 = load i16, i16* %s2, align 2, !tbaa !42
  %conv447 = zext i16 %321 to i32
  %cmp448 = icmp sgt i32 %conv446, %conv447
  %conv449 = zext i1 %cmp448 to i32
  %conv450 = trunc i32 %conv449 to i8
  store i8 %conv450, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end451:                                        ; preds = %if.end436
  %322 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %inc452 = add i32 %322, 1
  store i32 %inc452, i32* %i1.addr, align 4, !tbaa !12
  %323 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %inc453 = add i32 %323, 1
  store i32 %inc453, i32* %i2.addr, align 4, !tbaa !12
  %324 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %325 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp454 = icmp uge i32 %324, %325
  br i1 %cmp454, label %if.then456, label %if.end457

if.then456:                                       ; preds = %if.end451
  %326 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %327 = load i32, i32* %i1.addr, align 4, !tbaa !12
  %sub = sub i32 %327, %326
  store i32 %sub, i32* %i1.addr, align 4, !tbaa !12
  br label %if.end457

if.end457:                                        ; preds = %if.then456, %if.end451
  %328 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %329 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %cmp458 = icmp uge i32 %328, %329
  br i1 %cmp458, label %if.then460, label %if.end462

if.then460:                                       ; preds = %if.end457
  %330 = load i32, i32* %nblock.addr, align 4, !tbaa !12
  %331 = load i32, i32* %i2.addr, align 4, !tbaa !12
  %sub461 = sub i32 %331, %330
  store i32 %sub461, i32* %i2.addr, align 4, !tbaa !12
  br label %if.end462

if.end462:                                        ; preds = %if.then460, %if.end457
  %332 = load i32, i32* %k, align 4, !tbaa !12
  %sub463 = sub nsw i32 %332, 8
  store i32 %sub463, i32* %k, align 4, !tbaa !12
  %333 = load i32*, i32** %budget.addr, align 8, !tbaa !2
  %334 = load i32, i32* %333, align 4, !tbaa !12
  %dec = add nsw i32 %334, -1
  store i32 %dec, i32* %333, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %if.end462
  %335 = load i32, i32* %k, align 4, !tbaa !12
  %cmp464 = icmp sge i32 %335, 0
  br i1 %cmp464, label %do.body, label %do.end, !llvm.loop !85

do.end:                                           ; preds = %do.cond
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then445, %if.then430, %if.then413, %if.then398, %if.then381, %if.then366, %if.then349, %if.then334, %if.then317, %if.then302, %if.then285, %if.then270, %if.then253, %if.then238, %if.then221, %if.then206, %if.then189, %if.then172, %if.then155, %if.then138, %if.then121, %if.then104, %if.then87, %if.then70, %if.then53, %if.then36, %if.then19, %if.then
  %336 = bitcast i16* %s2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %336) #4
  %337 = bitcast i16* %s1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %337) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c2) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c1) #4
  %338 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %338) #4
  %339 = load i8, i8* %retval, align 1
  ret i8 %339
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 56}
!7 = !{!"", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !8, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !4, i64 128, !4, i64 384, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !4, i64 672, !4, i64 1704, !4, i64 19706, !4, i64 37708, !4, i64 39256, !4, i64 45448, !4, i64 51640}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 64}
!10 = !{!7, !3, i64 40}
!11 = !{!7, !8, i64 108}
!12 = !{!8, !8, i64 0}
!13 = !{!7, !8, i64 656}
!14 = !{!7, !8, i64 88}
!15 = !{!7, !3, i64 24}
!16 = !{!7, !3, i64 32}
!17 = !{!7, !8, i64 48}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = !{!4, !4, i64 0}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !4, i64 0}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
