; ModuleID = 'huffman.c'
source_filename = "huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_hbMakeCodeLengths(i8* %len, i32* %freq, i32 %alphaSize, i32 %maxLen) #0 {
entry:
  %len.addr = alloca i8*, align 8
  %freq.addr = alloca i32*, align 8
  %alphaSize.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %nNodes = alloca i32, align 4
  %nHeap = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tooLong = alloca i8, align 1
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  %zz = alloca i32, align 4
  %tmp = alloca i32, align 4
  %zz47 = alloca i32, align 4
  %yy = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %zz92 = alloca i32, align 4
  %yy93 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %zz170 = alloca i32, align 4
  %tmp171 = alloca i32, align 4
  store i8* %len, i8** %len.addr, align 8, !tbaa !2
  store i32* %freq, i32** %freq.addr, align 8, !tbaa !2
  store i32 %alphaSize, i32* %alphaSize.addr, align 4, !tbaa !6
  store i32 %maxLen, i32* %maxLen.addr, align 4, !tbaa !6
  %0 = bitcast i32* %nNodes to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = bitcast i32* %nHeap to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %tooLong) #3
  %7 = bitcast [260 x i32]* %heap to i8*
  call void @llvm.lifetime.start.p0i8(i64 1040, i8* %7) #3
  %8 = bitcast [516 x i32]* %weight to i8*
  call void @llvm.lifetime.start.p0i8(i64 2064, i8* %8) #3
  %9 = bitcast [516 x i32]* %parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 2064, i8* %9) #3
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %11 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %freq.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %14, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32*, i32** %freq.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom2 = sext i32 %16 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 %idxprom2
  %17 = load i32, i32* %arrayidx3, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %17, %cond.false ]
  %shl = shl i32 %cond, 8
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 %18, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom4
  store i32 %shl, i32* %arrayidx5, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end233, %for.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  store i32 %20, i32* %nNodes, align 4, !tbaa !6
  store i32 0, i32* %nHeap, align 4, !tbaa !6
  %arrayidx6 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 0
  store i32 0, i32* %arrayidx6, align 16, !tbaa !6
  %arrayidx7 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 0
  store i32 0, i32* %arrayidx7, align 16, !tbaa !6
  %arrayidx8 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 0
  store i32 -2, i32* %arrayidx8, align 16, !tbaa !6
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc36, %while.body
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %22 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp10 = icmp sle i32 %21, %22
  br i1 %cmp10, label %for.body11, label %for.end38

for.body11:                                       ; preds = %for.cond9
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom12
  store i32 -1, i32* %arrayidx13, align 4, !tbaa !6
  %24 = load i32, i32* %nHeap, align 4, !tbaa !6
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %nHeap, align 4, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %26 = load i32, i32* %nHeap, align 4, !tbaa !6
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom15
  store i32 %25, i32* %arrayidx16, align 4, !tbaa !6
  %27 = bitcast i32* %zz to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3
  %29 = load i32, i32* %nHeap, align 4, !tbaa !6
  store i32 %29, i32* %zz, align 4, !tbaa !6
  %30 = load i32, i32* %zz, align 4, !tbaa !6
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom17
  %31 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  store i32 %31, i32* %tmp, align 4, !tbaa !6
  br label %while.cond19

while.cond19:                                     ; preds = %while.body27, %for.body11
  %32 = load i32, i32* %tmp, align 4, !tbaa !6
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom20
  %33 = load i32, i32* %arrayidx21, align 4, !tbaa !6
  %34 = load i32, i32* %zz, align 4, !tbaa !6
  %shr = ashr i32 %34, 1
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom22
  %35 = load i32, i32* %arrayidx23, align 4, !tbaa !6
  %idxprom24 = sext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom24
  %36 = load i32, i32* %arrayidx25, align 4, !tbaa !6
  %cmp26 = icmp slt i32 %33, %36
  br i1 %cmp26, label %while.body27, label %while.end

while.body27:                                     ; preds = %while.cond19
  %37 = load i32, i32* %zz, align 4, !tbaa !6
  %shr28 = ashr i32 %37, 1
  %idxprom29 = sext i32 %shr28 to i64
  %arrayidx30 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom29
  %38 = load i32, i32* %arrayidx30, align 4, !tbaa !6
  %39 = load i32, i32* %zz, align 4, !tbaa !6
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom31
  store i32 %38, i32* %arrayidx32, align 4, !tbaa !6
  %40 = load i32, i32* %zz, align 4, !tbaa !6
  %shr33 = ashr i32 %40, 1
  store i32 %shr33, i32* %zz, align 4, !tbaa !6
  br label %while.cond19, !llvm.loop !10

while.end:                                        ; preds = %while.cond19
  %41 = load i32, i32* %tmp, align 4, !tbaa !6
  %42 = load i32, i32* %zz, align 4, !tbaa !6
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom34
  store i32 %41, i32* %arrayidx35, align 4, !tbaa !6
  %43 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = bitcast i32* %zz to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  br label %for.inc36

for.inc36:                                        ; preds = %while.end
  %45 = load i32, i32* %i, align 4, !tbaa !6
  %inc37 = add nsw i32 %45, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !6
  br label %for.cond9, !llvm.loop !11

for.end38:                                        ; preds = %for.cond9
  %46 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp39 = icmp slt i32 %46, 260
  br i1 %cmp39, label %if.end, label %if.then

if.then:                                          ; preds = %for.end38
  call void @BZ2_bz__AssertH__fail(i32 2001)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end38
  br label %while.cond40

while.cond40:                                     ; preds = %while.end190, %if.end
  %47 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp41 = icmp sgt i32 %47, 1
  br i1 %cmp41, label %while.body42, label %while.end193

while.body42:                                     ; preds = %while.cond40
  %arrayidx43 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 1
  %48 = load i32, i32* %arrayidx43, align 4, !tbaa !6
  store i32 %48, i32* %n1, align 4, !tbaa !6
  %49 = load i32, i32* %nHeap, align 4, !tbaa !6
  %idxprom44 = sext i32 %49 to i64
  %arrayidx45 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom44
  %50 = load i32, i32* %arrayidx45, align 4, !tbaa !6
  %arrayidx46 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 1
  store i32 %50, i32* %arrayidx46, align 4, !tbaa !6
  %51 = load i32, i32* %nHeap, align 4, !tbaa !6
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %nHeap, align 4, !tbaa !6
  %52 = bitcast i32* %zz47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #3
  %53 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #3
  %54 = bitcast i32* %tmp48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #3
  store i32 1, i32* %zz47, align 4, !tbaa !6
  %55 = load i32, i32* %zz47, align 4, !tbaa !6
  %idxprom49 = sext i32 %55 to i64
  %arrayidx50 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom49
  %56 = load i32, i32* %arrayidx50, align 4, !tbaa !6
  store i32 %56, i32* %tmp48, align 4, !tbaa !6
  br label %while.cond51

while.cond51:                                     ; preds = %if.end79, %while.body42
  br label %while.body52

while.body52:                                     ; preds = %while.cond51
  %57 = load i32, i32* %zz47, align 4, !tbaa !6
  %shl53 = shl i32 %57, 1
  store i32 %shl53, i32* %yy, align 4, !tbaa !6
  %58 = load i32, i32* %yy, align 4, !tbaa !6
  %59 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp54 = icmp sgt i32 %58, %59
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %while.body52
  br label %while.end84

if.end56:                                         ; preds = %while.body52
  %60 = load i32, i32* %yy, align 4, !tbaa !6
  %61 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp57 = icmp slt i32 %60, %61
  br i1 %cmp57, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.end56
  %62 = load i32, i32* %yy, align 4, !tbaa !6
  %add58 = add nsw i32 %62, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom59
  %63 = load i32, i32* %arrayidx60, align 4, !tbaa !6
  %idxprom61 = sext i32 %63 to i64
  %arrayidx62 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom61
  %64 = load i32, i32* %arrayidx62, align 4, !tbaa !6
  %65 = load i32, i32* %yy, align 4, !tbaa !6
  %idxprom63 = sext i32 %65 to i64
  %arrayidx64 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom63
  %66 = load i32, i32* %arrayidx64, align 4, !tbaa !6
  %idxprom65 = sext i32 %66 to i64
  %arrayidx66 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom65
  %67 = load i32, i32* %arrayidx66, align 4, !tbaa !6
  %cmp67 = icmp slt i32 %64, %67
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %land.lhs.true
  %68 = load i32, i32* %yy, align 4, !tbaa !6
  %inc69 = add nsw i32 %68, 1
  store i32 %inc69, i32* %yy, align 4, !tbaa !6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %land.lhs.true, %if.end56
  %69 = load i32, i32* %tmp48, align 4, !tbaa !6
  %idxprom71 = sext i32 %69 to i64
  %arrayidx72 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4, !tbaa !6
  %71 = load i32, i32* %yy, align 4, !tbaa !6
  %idxprom73 = sext i32 %71 to i64
  %arrayidx74 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom73
  %72 = load i32, i32* %arrayidx74, align 4, !tbaa !6
  %idxprom75 = sext i32 %72 to i64
  %arrayidx76 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom75
  %73 = load i32, i32* %arrayidx76, align 4, !tbaa !6
  %cmp77 = icmp slt i32 %70, %73
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  br label %while.end84

if.end79:                                         ; preds = %if.end70
  %74 = load i32, i32* %yy, align 4, !tbaa !6
  %idxprom80 = sext i32 %74 to i64
  %arrayidx81 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom80
  %75 = load i32, i32* %arrayidx81, align 4, !tbaa !6
  %76 = load i32, i32* %zz47, align 4, !tbaa !6
  %idxprom82 = sext i32 %76 to i64
  %arrayidx83 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom82
  store i32 %75, i32* %arrayidx83, align 4, !tbaa !6
  %77 = load i32, i32* %yy, align 4, !tbaa !6
  store i32 %77, i32* %zz47, align 4, !tbaa !6
  br label %while.cond51, !llvm.loop !12

while.end84:                                      ; preds = %if.then78, %if.then55
  %78 = load i32, i32* %tmp48, align 4, !tbaa !6
  %79 = load i32, i32* %zz47, align 4, !tbaa !6
  %idxprom85 = sext i32 %79 to i64
  %arrayidx86 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom85
  store i32 %78, i32* %arrayidx86, align 4, !tbaa !6
  %80 = bitcast i32* %tmp48 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3
  %81 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast i32* %zz47 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %arrayidx87 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 1
  %83 = load i32, i32* %arrayidx87, align 4, !tbaa !6
  store i32 %83, i32* %n2, align 4, !tbaa !6
  %84 = load i32, i32* %nHeap, align 4, !tbaa !6
  %idxprom88 = sext i32 %84 to i64
  %arrayidx89 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom88
  %85 = load i32, i32* %arrayidx89, align 4, !tbaa !6
  %arrayidx90 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 1
  store i32 %85, i32* %arrayidx90, align 4, !tbaa !6
  %86 = load i32, i32* %nHeap, align 4, !tbaa !6
  %dec91 = add nsw i32 %86, -1
  store i32 %dec91, i32* %nHeap, align 4, !tbaa !6
  %87 = bitcast i32* %zz92 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %yy93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %tmp94 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %89) #3
  store i32 1, i32* %zz92, align 4, !tbaa !6
  %90 = load i32, i32* %zz92, align 4, !tbaa !6
  %idxprom95 = sext i32 %90 to i64
  %arrayidx96 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom95
  %91 = load i32, i32* %arrayidx96, align 4, !tbaa !6
  store i32 %91, i32* %tmp94, align 4, !tbaa !6
  br label %while.cond97

while.cond97:                                     ; preds = %if.end126, %while.end84
  br label %while.body98

while.body98:                                     ; preds = %while.cond97
  %92 = load i32, i32* %zz92, align 4, !tbaa !6
  %shl99 = shl i32 %92, 1
  store i32 %shl99, i32* %yy93, align 4, !tbaa !6
  %93 = load i32, i32* %yy93, align 4, !tbaa !6
  %94 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp100 = icmp sgt i32 %93, %94
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %while.body98
  br label %while.end131

if.end102:                                        ; preds = %while.body98
  %95 = load i32, i32* %yy93, align 4, !tbaa !6
  %96 = load i32, i32* %nHeap, align 4, !tbaa !6
  %cmp103 = icmp slt i32 %95, %96
  br i1 %cmp103, label %land.lhs.true104, label %if.end117

land.lhs.true104:                                 ; preds = %if.end102
  %97 = load i32, i32* %yy93, align 4, !tbaa !6
  %add105 = add nsw i32 %97, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom106
  %98 = load i32, i32* %arrayidx107, align 4, !tbaa !6
  %idxprom108 = sext i32 %98 to i64
  %arrayidx109 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom108
  %99 = load i32, i32* %arrayidx109, align 4, !tbaa !6
  %100 = load i32, i32* %yy93, align 4, !tbaa !6
  %idxprom110 = sext i32 %100 to i64
  %arrayidx111 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom110
  %101 = load i32, i32* %arrayidx111, align 4, !tbaa !6
  %idxprom112 = sext i32 %101 to i64
  %arrayidx113 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom112
  %102 = load i32, i32* %arrayidx113, align 4, !tbaa !6
  %cmp114 = icmp slt i32 %99, %102
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %land.lhs.true104
  %103 = load i32, i32* %yy93, align 4, !tbaa !6
  %inc116 = add nsw i32 %103, 1
  store i32 %inc116, i32* %yy93, align 4, !tbaa !6
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %land.lhs.true104, %if.end102
  %104 = load i32, i32* %tmp94, align 4, !tbaa !6
  %idxprom118 = sext i32 %104 to i64
  %arrayidx119 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom118
  %105 = load i32, i32* %arrayidx119, align 4, !tbaa !6
  %106 = load i32, i32* %yy93, align 4, !tbaa !6
  %idxprom120 = sext i32 %106 to i64
  %arrayidx121 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom120
  %107 = load i32, i32* %arrayidx121, align 4, !tbaa !6
  %idxprom122 = sext i32 %107 to i64
  %arrayidx123 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom122
  %108 = load i32, i32* %arrayidx123, align 4, !tbaa !6
  %cmp124 = icmp slt i32 %105, %108
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end117
  br label %while.end131

if.end126:                                        ; preds = %if.end117
  %109 = load i32, i32* %yy93, align 4, !tbaa !6
  %idxprom127 = sext i32 %109 to i64
  %arrayidx128 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom127
  %110 = load i32, i32* %arrayidx128, align 4, !tbaa !6
  %111 = load i32, i32* %zz92, align 4, !tbaa !6
  %idxprom129 = sext i32 %111 to i64
  %arrayidx130 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom129
  store i32 %110, i32* %arrayidx130, align 4, !tbaa !6
  %112 = load i32, i32* %yy93, align 4, !tbaa !6
  store i32 %112, i32* %zz92, align 4, !tbaa !6
  br label %while.cond97, !llvm.loop !13

while.end131:                                     ; preds = %if.then125, %if.then101
  %113 = load i32, i32* %tmp94, align 4, !tbaa !6
  %114 = load i32, i32* %zz92, align 4, !tbaa !6
  %idxprom132 = sext i32 %114 to i64
  %arrayidx133 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom132
  store i32 %113, i32* %arrayidx133, align 4, !tbaa !6
  %115 = bitcast i32* %tmp94 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #3
  %116 = bitcast i32* %yy93 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #3
  %117 = bitcast i32* %zz92 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3
  %118 = load i32, i32* %nNodes, align 4, !tbaa !6
  %inc134 = add nsw i32 %118, 1
  store i32 %inc134, i32* %nNodes, align 4, !tbaa !6
  %119 = load i32, i32* %nNodes, align 4, !tbaa !6
  %120 = load i32, i32* %n2, align 4, !tbaa !6
  %idxprom135 = sext i32 %120 to i64
  %arrayidx136 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom135
  store i32 %119, i32* %arrayidx136, align 4, !tbaa !6
  %121 = load i32, i32* %n1, align 4, !tbaa !6
  %idxprom137 = sext i32 %121 to i64
  %arrayidx138 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom137
  store i32 %119, i32* %arrayidx138, align 4, !tbaa !6
  %122 = load i32, i32* %n1, align 4, !tbaa !6
  %idxprom139 = sext i32 %122 to i64
  %arrayidx140 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom139
  %123 = load i32, i32* %arrayidx140, align 4, !tbaa !6
  %and = and i32 %123, -256
  %124 = load i32, i32* %n2, align 4, !tbaa !6
  %idxprom141 = sext i32 %124 to i64
  %arrayidx142 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom141
  %125 = load i32, i32* %arrayidx142, align 4, !tbaa !6
  %and143 = and i32 %125, -256
  %add144 = add i32 %and, %and143
  %126 = load i32, i32* %n1, align 4, !tbaa !6
  %idxprom145 = sext i32 %126 to i64
  %arrayidx146 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom145
  %127 = load i32, i32* %arrayidx146, align 4, !tbaa !6
  %and147 = and i32 %127, 255
  %128 = load i32, i32* %n2, align 4, !tbaa !6
  %idxprom148 = sext i32 %128 to i64
  %arrayidx149 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom148
  %129 = load i32, i32* %arrayidx149, align 4, !tbaa !6
  %and150 = and i32 %129, 255
  %cmp151 = icmp sgt i32 %and147, %and150
  br i1 %cmp151, label %cond.true152, label %cond.false156

cond.true152:                                     ; preds = %while.end131
  %130 = load i32, i32* %n1, align 4, !tbaa !6
  %idxprom153 = sext i32 %130 to i64
  %arrayidx154 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom153
  %131 = load i32, i32* %arrayidx154, align 4, !tbaa !6
  %and155 = and i32 %131, 255
  br label %cond.end160

cond.false156:                                    ; preds = %while.end131
  %132 = load i32, i32* %n2, align 4, !tbaa !6
  %idxprom157 = sext i32 %132 to i64
  %arrayidx158 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom157
  %133 = load i32, i32* %arrayidx158, align 4, !tbaa !6
  %and159 = and i32 %133, 255
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false156, %cond.true152
  %cond161 = phi i32 [ %and155, %cond.true152 ], [ %and159, %cond.false156 ]
  %add162 = add nsw i32 1, %cond161
  %or = or i32 %add144, %add162
  %134 = load i32, i32* %nNodes, align 4, !tbaa !6
  %idxprom163 = sext i32 %134 to i64
  %arrayidx164 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom163
  store i32 %or, i32* %arrayidx164, align 4, !tbaa !6
  %135 = load i32, i32* %nNodes, align 4, !tbaa !6
  %idxprom165 = sext i32 %135 to i64
  %arrayidx166 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom165
  store i32 -1, i32* %arrayidx166, align 4, !tbaa !6
  %136 = load i32, i32* %nHeap, align 4, !tbaa !6
  %inc167 = add nsw i32 %136, 1
  store i32 %inc167, i32* %nHeap, align 4, !tbaa !6
  %137 = load i32, i32* %nNodes, align 4, !tbaa !6
  %138 = load i32, i32* %nHeap, align 4, !tbaa !6
  %idxprom168 = sext i32 %138 to i64
  %arrayidx169 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom168
  store i32 %137, i32* %arrayidx169, align 4, !tbaa !6
  %139 = bitcast i32* %zz170 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %139) #3
  %140 = bitcast i32* %tmp171 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %140) #3
  %141 = load i32, i32* %nHeap, align 4, !tbaa !6
  store i32 %141, i32* %zz170, align 4, !tbaa !6
  %142 = load i32, i32* %zz170, align 4, !tbaa !6
  %idxprom172 = sext i32 %142 to i64
  %arrayidx173 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom172
  %143 = load i32, i32* %arrayidx173, align 4, !tbaa !6
  store i32 %143, i32* %tmp171, align 4, !tbaa !6
  br label %while.cond174

while.cond174:                                    ; preds = %while.body183, %cond.end160
  %144 = load i32, i32* %tmp171, align 4, !tbaa !6
  %idxprom175 = sext i32 %144 to i64
  %arrayidx176 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom175
  %145 = load i32, i32* %arrayidx176, align 4, !tbaa !6
  %146 = load i32, i32* %zz170, align 4, !tbaa !6
  %shr177 = ashr i32 %146, 1
  %idxprom178 = sext i32 %shr177 to i64
  %arrayidx179 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom178
  %147 = load i32, i32* %arrayidx179, align 4, !tbaa !6
  %idxprom180 = sext i32 %147 to i64
  %arrayidx181 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom180
  %148 = load i32, i32* %arrayidx181, align 4, !tbaa !6
  %cmp182 = icmp slt i32 %145, %148
  br i1 %cmp182, label %while.body183, label %while.end190

while.body183:                                    ; preds = %while.cond174
  %149 = load i32, i32* %zz170, align 4, !tbaa !6
  %shr184 = ashr i32 %149, 1
  %idxprom185 = sext i32 %shr184 to i64
  %arrayidx186 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom185
  %150 = load i32, i32* %arrayidx186, align 4, !tbaa !6
  %151 = load i32, i32* %zz170, align 4, !tbaa !6
  %idxprom187 = sext i32 %151 to i64
  %arrayidx188 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom187
  store i32 %150, i32* %arrayidx188, align 4, !tbaa !6
  %152 = load i32, i32* %zz170, align 4, !tbaa !6
  %shr189 = ashr i32 %152, 1
  store i32 %shr189, i32* %zz170, align 4, !tbaa !6
  br label %while.cond174, !llvm.loop !14

while.end190:                                     ; preds = %while.cond174
  %153 = load i32, i32* %tmp171, align 4, !tbaa !6
  %154 = load i32, i32* %zz170, align 4, !tbaa !6
  %idxprom191 = sext i32 %154 to i64
  %arrayidx192 = getelementptr inbounds [260 x i32], [260 x i32]* %heap, i64 0, i64 %idxprom191
  store i32 %153, i32* %arrayidx192, align 4, !tbaa !6
  %155 = bitcast i32* %tmp171 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #3
  %156 = bitcast i32* %zz170 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %156) #3
  br label %while.cond40, !llvm.loop !15

while.end193:                                     ; preds = %while.cond40
  %157 = load i32, i32* %nNodes, align 4, !tbaa !6
  %cmp194 = icmp slt i32 %157, 516
  br i1 %cmp194, label %if.end196, label %if.then195

if.then195:                                       ; preds = %while.end193
  call void @BZ2_bz__AssertH__fail(i32 2002)
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %while.end193
  store i8 0, i8* %tooLong, align 1, !tbaa !16
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc215, %if.end196
  %158 = load i32, i32* %i, align 4, !tbaa !6
  %159 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp198 = icmp sle i32 %158, %159
  br i1 %cmp198, label %for.body199, label %for.end217

for.body199:                                      ; preds = %for.cond197
  store i32 0, i32* %j, align 4, !tbaa !6
  %160 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %160, i32* %k, align 4, !tbaa !6
  br label %while.cond200

while.cond200:                                    ; preds = %while.body204, %for.body199
  %161 = load i32, i32* %k, align 4, !tbaa !6
  %idxprom201 = sext i32 %161 to i64
  %arrayidx202 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom201
  %162 = load i32, i32* %arrayidx202, align 4, !tbaa !6
  %cmp203 = icmp sge i32 %162, 0
  br i1 %cmp203, label %while.body204, label %while.end208

while.body204:                                    ; preds = %while.cond200
  %163 = load i32, i32* %k, align 4, !tbaa !6
  %idxprom205 = sext i32 %163 to i64
  %arrayidx206 = getelementptr inbounds [516 x i32], [516 x i32]* %parent, i64 0, i64 %idxprom205
  %164 = load i32, i32* %arrayidx206, align 4, !tbaa !6
  store i32 %164, i32* %k, align 4, !tbaa !6
  %165 = load i32, i32* %j, align 4, !tbaa !6
  %inc207 = add nsw i32 %165, 1
  store i32 %inc207, i32* %j, align 4, !tbaa !6
  br label %while.cond200, !llvm.loop !17

while.end208:                                     ; preds = %while.cond200
  %166 = load i32, i32* %j, align 4, !tbaa !6
  %conv = trunc i32 %166 to i8
  %167 = load i8*, i8** %len.addr, align 8, !tbaa !2
  %168 = load i32, i32* %i, align 4, !tbaa !6
  %sub = sub nsw i32 %168, 1
  %idxprom209 = sext i32 %sub to i64
  %arrayidx210 = getelementptr inbounds i8, i8* %167, i64 %idxprom209
  store i8 %conv, i8* %arrayidx210, align 1, !tbaa !16
  %169 = load i32, i32* %j, align 4, !tbaa !6
  %170 = load i32, i32* %maxLen.addr, align 4, !tbaa !6
  %cmp211 = icmp sgt i32 %169, %170
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %while.end208
  store i8 1, i8* %tooLong, align 1, !tbaa !16
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %while.end208
  br label %for.inc215

for.inc215:                                       ; preds = %if.end214
  %171 = load i32, i32* %i, align 4, !tbaa !6
  %inc216 = add nsw i32 %171, 1
  store i32 %inc216, i32* %i, align 4, !tbaa !6
  br label %for.cond197, !llvm.loop !18

for.end217:                                       ; preds = %for.cond197
  %172 = load i8, i8* %tooLong, align 1, !tbaa !16
  %tobool = icmp ne i8 %172, 0
  br i1 %tobool, label %if.end219, label %if.then218

if.then218:                                       ; preds = %for.end217
  br label %while.end234

if.end219:                                        ; preds = %for.end217
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc231, %if.end219
  %173 = load i32, i32* %i, align 4, !tbaa !6
  %174 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp221 = icmp sle i32 %173, %174
  br i1 %cmp221, label %for.body223, label %for.end233

for.body223:                                      ; preds = %for.cond220
  %175 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom224 = sext i32 %175 to i64
  %arrayidx225 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom224
  %176 = load i32, i32* %arrayidx225, align 4, !tbaa !6
  %shr226 = ashr i32 %176, 8
  store i32 %shr226, i32* %j, align 4, !tbaa !6
  %177 = load i32, i32* %j, align 4, !tbaa !6
  %div = sdiv i32 %177, 2
  %add227 = add nsw i32 1, %div
  store i32 %add227, i32* %j, align 4, !tbaa !6
  %178 = load i32, i32* %j, align 4, !tbaa !6
  %shl228 = shl i32 %178, 8
  %179 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom229 = sext i32 %179 to i64
  %arrayidx230 = getelementptr inbounds [516 x i32], [516 x i32]* %weight, i64 0, i64 %idxprom229
  store i32 %shl228, i32* %arrayidx230, align 4, !tbaa !6
  br label %for.inc231

for.inc231:                                       ; preds = %for.body223
  %180 = load i32, i32* %i, align 4, !tbaa !6
  %inc232 = add nsw i32 %180, 1
  store i32 %inc232, i32* %i, align 4, !tbaa !6
  br label %for.cond220, !llvm.loop !19

for.end233:                                       ; preds = %for.cond220
  br label %while.cond, !llvm.loop !20

while.end234:                                     ; preds = %if.then218
  %181 = bitcast [516 x i32]* %parent to i8*
  call void @llvm.lifetime.end.p0i8(i64 2064, i8* %181) #3
  %182 = bitcast [516 x i32]* %weight to i8*
  call void @llvm.lifetime.end.p0i8(i64 2064, i8* %182) #3
  %183 = bitcast [260 x i32]* %heap to i8*
  call void @llvm.lifetime.end.p0i8(i64 1040, i8* %183) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %tooLong) #3
  %184 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %184) #3
  %185 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %185) #3
  %186 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %186) #3
  %187 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %187) #3
  %188 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %188) #3
  %189 = bitcast i32* %nHeap to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %189) #3
  %190 = bitcast i32* %nNodes to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %190) #3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_hbAssignCodes(i32* %code, i8* %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %code.addr = alloca i32*, align 8
  %length.addr = alloca i8*, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %vec = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %code, i32** %code.addr, align 8, !tbaa !2
  store i8* %length, i8** %length.addr, align 8, !tbaa !2
  store i32 %minLen, i32* %minLen.addr, align 4, !tbaa !6
  store i32 %maxLen, i32* %maxLen.addr, align 4, !tbaa !6
  store i32 %alphaSize, i32* %alphaSize.addr, align 4, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 0, i32* %vec, align 4, !tbaa !6
  %3 = load i32, i32* %minLen.addr, align 4, !tbaa !6
  store i32 %3, i32* %n, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %4 = load i32, i32* %n, align 4, !tbaa !6
  %5 = load i32, i32* %maxLen.addr, align 4, !tbaa !6
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %7 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i8*, i8** %length.addr, align 8, !tbaa !2
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %n, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %conv, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %12 = load i32, i32* %vec, align 4, !tbaa !6
  %13 = load i32*, i32** %code.addr, align 8, !tbaa !2
  %14 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  store i32 %12, i32* %arrayidx7, align 4, !tbaa !6
  %15 = load i32, i32* %vec, align 4, !tbaa !6
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %vec, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %i, align 4, !tbaa !6
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  %17 = load i32, i32* %vec, align 4, !tbaa !6
  %shl = shl i32 %17, 1
  store i32 %shl, i32* %vec, align 4, !tbaa !6
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %18 = load i32, i32* %n, align 4, !tbaa !6
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %n, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !22

for.end11:                                        ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_hbCreateDecodeTables(i32* %limit, i32* %base, i32* %perm, i8* %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %limit.addr = alloca i32*, align 8
  %base.addr = alloca i32*, align 8
  %perm.addr = alloca i32*, align 8
  %length.addr = alloca i8*, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %pp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store i32* %limit, i32** %limit.addr, align 8, !tbaa !2
  store i32* %base, i32** %base.addr, align 8, !tbaa !2
  store i32* %perm, i32** %perm.addr, align 8, !tbaa !2
  store i8* %length, i8** %length.addr, align 8, !tbaa !2
  store i32 %minLen, i32* %minLen.addr, align 4, !tbaa !6
  store i32 %maxLen, i32* %maxLen.addr, align 4, !tbaa !6
  store i32 %alphaSize, i32* %alphaSize.addr, align 4, !tbaa !6
  %0 = bitcast i32* %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 0, i32* %pp, align 4, !tbaa !6
  %4 = load i32, i32* %minLen.addr, align 4, !tbaa !6
  store i32 %4, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %6 = load i32, i32* %maxLen.addr, align 4, !tbaa !6
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !tbaa !6
  %8 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load i8*, i8** %length.addr, align 8, !tbaa !2
  %10 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %i, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %conv, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4, !tbaa !6
  %14 = load i32*, i32** %perm.addr, align 8, !tbaa !2
  %15 = load i32, i32* %pp, align 4, !tbaa !6
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  store i32 %13, i32* %arrayidx7, align 4, !tbaa !6
  %16 = load i32, i32* %pp, align 4, !tbaa !6
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pp, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !6
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %j, align 4, !tbaa !6
  br label %for.cond1, !llvm.loop !23

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !24

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end11
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %cmp13 = icmp slt i32 %19, 23
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %20 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %20, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4, !tbaa !6
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !6
  br label %for.cond12, !llvm.loop !25

for.end20:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc31, %for.end20
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %24 = load i32, i32* %alphaSize.addr, align 4, !tbaa !6
  %cmp22 = icmp slt i32 %23, %24
  br i1 %cmp22, label %for.body24, label %for.end33

for.body24:                                       ; preds = %for.cond21
  %25 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %26 = load i8*, i8** %length.addr, align 8, !tbaa !2
  %27 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 %idxprom25
  %28 = load i8, i8* %arrayidx26, align 1, !tbaa !16
  %conv27 = zext i8 %28 to i32
  %add = add nsw i32 %conv27, 1
  %idxprom28 = sext i32 %add to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %25, i64 %idxprom28
  %29 = load i32, i32* %arrayidx29, align 4, !tbaa !6
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %arrayidx29, align 4, !tbaa !6
  br label %for.inc31

for.inc31:                                        ; preds = %for.body24
  %30 = load i32, i32* %i, align 4, !tbaa !6
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !6
  br label %for.cond21, !llvm.loop !26

for.end33:                                        ; preds = %for.cond21
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.end33
  %31 = load i32, i32* %i, align 4, !tbaa !6
  %cmp35 = icmp slt i32 %31, 23
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %32 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %sub = sub nsw i32 %33, 1
  %idxprom38 = sext i32 %sub to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %32, i64 %idxprom38
  %34 = load i32, i32* %arrayidx39, align 4, !tbaa !6
  %35 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %35, i64 %idxprom40
  %37 = load i32, i32* %arrayidx41, align 4, !tbaa !6
  %add42 = add nsw i32 %37, %34
  store i32 %add42, i32* %arrayidx41, align 4, !tbaa !6
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %38 = load i32, i32* %i, align 4, !tbaa !6
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !6
  br label %for.cond34, !llvm.loop !27

for.end45:                                        ; preds = %for.cond34
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc52, %for.end45
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %cmp47 = icmp slt i32 %39, 23
  br i1 %cmp47, label %for.body49, label %for.end54

for.body49:                                       ; preds = %for.cond46
  %40 = load i32*, i32** %limit.addr, align 8, !tbaa !2
  %41 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %40, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4, !tbaa !6
  br label %for.inc52

for.inc52:                                        ; preds = %for.body49
  %42 = load i32, i32* %i, align 4, !tbaa !6
  %inc53 = add nsw i32 %42, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !6
  br label %for.cond46, !llvm.loop !28

for.end54:                                        ; preds = %for.cond46
  store i32 0, i32* %vec, align 4, !tbaa !6
  %43 = load i32, i32* %minLen.addr, align 4, !tbaa !6
  store i32 %43, i32* %i, align 4, !tbaa !6
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %for.end54
  %44 = load i32, i32* %i, align 4, !tbaa !6
  %45 = load i32, i32* %maxLen.addr, align 4, !tbaa !6
  %cmp56 = icmp sle i32 %44, %45
  br i1 %cmp56, label %for.body58, label %for.end71

for.body58:                                       ; preds = %for.cond55
  %46 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %47 = load i32, i32* %i, align 4, !tbaa !6
  %add59 = add nsw i32 %47, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %46, i64 %idxprom60
  %48 = load i32, i32* %arrayidx61, align 4, !tbaa !6
  %49 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %50 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %49, i64 %idxprom62
  %51 = load i32, i32* %arrayidx63, align 4, !tbaa !6
  %sub64 = sub nsw i32 %48, %51
  %52 = load i32, i32* %vec, align 4, !tbaa !6
  %add65 = add nsw i32 %52, %sub64
  store i32 %add65, i32* %vec, align 4, !tbaa !6
  %53 = load i32, i32* %vec, align 4, !tbaa !6
  %sub66 = sub nsw i32 %53, 1
  %54 = load i32*, i32** %limit.addr, align 8, !tbaa !2
  %55 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom67 = sext i32 %55 to i64
  %arrayidx68 = getelementptr inbounds i32, i32* %54, i64 %idxprom67
  store i32 %sub66, i32* %arrayidx68, align 4, !tbaa !6
  %56 = load i32, i32* %vec, align 4, !tbaa !6
  %shl = shl i32 %56, 1
  store i32 %shl, i32* %vec, align 4, !tbaa !6
  br label %for.inc69

for.inc69:                                        ; preds = %for.body58
  %57 = load i32, i32* %i, align 4, !tbaa !6
  %inc70 = add nsw i32 %57, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !6
  br label %for.cond55, !llvm.loop !29

for.end71:                                        ; preds = %for.cond55
  %58 = load i32, i32* %minLen.addr, align 4, !tbaa !6
  %add72 = add nsw i32 %58, 1
  store i32 %add72, i32* %i, align 4, !tbaa !6
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc87, %for.end71
  %59 = load i32, i32* %i, align 4, !tbaa !6
  %60 = load i32, i32* %maxLen.addr, align 4, !tbaa !6
  %cmp74 = icmp sle i32 %59, %60
  br i1 %cmp74, label %for.body76, label %for.end89

for.body76:                                       ; preds = %for.cond73
  %61 = load i32*, i32** %limit.addr, align 8, !tbaa !2
  %62 = load i32, i32* %i, align 4, !tbaa !6
  %sub77 = sub nsw i32 %62, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i32, i32* %61, i64 %idxprom78
  %63 = load i32, i32* %arrayidx79, align 4, !tbaa !6
  %add80 = add nsw i32 %63, 1
  %shl81 = shl i32 %add80, 1
  %64 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %65 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom82 = sext i32 %65 to i64
  %arrayidx83 = getelementptr inbounds i32, i32* %64, i64 %idxprom82
  %66 = load i32, i32* %arrayidx83, align 4, !tbaa !6
  %sub84 = sub nsw i32 %shl81, %66
  %67 = load i32*, i32** %base.addr, align 8, !tbaa !2
  %68 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom85 = sext i32 %68 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %67, i64 %idxprom85
  store i32 %sub84, i32* %arrayidx86, align 4, !tbaa !6
  br label %for.inc87

for.inc87:                                        ; preds = %for.body76
  %69 = load i32, i32* %i, align 4, !tbaa !6
  %inc88 = add nsw i32 %69, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !6
  br label %for.cond73, !llvm.loop !30

for.end89:                                        ; preds = %for.cond73
  %70 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #3
  %71 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  %73 = bitcast i32* %pp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{!4, !4, i64 0}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
