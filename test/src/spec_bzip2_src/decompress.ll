; ModuleID = 'decompress.c'
source_filename = "decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external dso_local global [512 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_decompress(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca %struct.bz_stream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca i32*, align 8
  %gBase = alloca i32*, align 8
  %gPerm = alloca i32*, align 8
  %v = alloca i32, align 4
  %v70 = alloca i32, align 4
  %v127 = alloca i32, align 4
  %v184 = alloca i32, align 4
  %v283 = alloca i32, align 4
  %v345 = alloca i32, align 4
  %v402 = alloca i32, align 4
  %v459 = alloca i32, align 4
  %v516 = alloca i32, align 4
  %v573 = alloca i32, align 4
  %v637 = alloca i32, align 4
  %v694 = alloca i32, align 4
  %v751 = alloca i32, align 4
  %v808 = alloca i32, align 4
  %v865 = alloca i32, align 4
  %v917 = alloca i32, align 4
  %v974 = alloca i32, align 4
  %v1031 = alloca i32, align 4
  %v1103 = alloca i32, align 4
  %v1187 = alloca i32, align 4
  %v1262 = alloca i32, align 4
  %v1320 = alloca i32, align 4
  %v1381 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1442 = alloca i8, align 1
  %v1493 = alloca i32, align 4
  %v1557 = alloca i32, align 4
  %v1614 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1812 = alloca i32, align 4
  %v1878 = alloca i32, align 4
  %v2005 = alloca i32, align 4
  %v2071 = alloca i32, align 4
  %ii2191 = alloca i32, align 4
  %jj2192 = alloca i32, align 4
  %kk2193 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2421 = alloca i32, align 4
  %v2487 = alloca i32, align 4
  %tmp2712 = alloca i32, align 4
  %v2951 = alloca i32, align 4
  %v3008 = alloca i32, align 4
  %v3065 = alloca i32, align 4
  %v3122 = alloca i32, align 4
  %v3179 = alloca i32, align 4
  %v3236 = alloca i32, align 4
  %v3293 = alloca i32, align 4
  %v3350 = alloca i32, align 4
  %v3407 = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %uc) #3
  %0 = bitcast i32* %retVal to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = bitcast i32* %minLen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast i32* %maxLen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = bitcast %struct.bz_stream** %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1 = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 0
  %5 = load %struct.bz_stream*, %struct.bz_stream** %strm1, align 8, !tbaa !6
  store %struct.bz_stream* %5, %struct.bz_stream** %strm, align 8, !tbaa !2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %alphaSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %nGroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %nSelectors to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %groupNo to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %groupPos to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %nextSym to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %nblockMAX to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %nblock to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %es to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %N to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %curr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %zt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = bitcast i32* %zn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %zvec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3
  %24 = bitcast i32* %zj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = bitcast i32* %gSel to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  %26 = bitcast i32* %gMinlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32** %gLimit to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #3
  %28 = bitcast i32** %gBase to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  %29 = bitcast i32** %gPerm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #3
  %30 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state = getelementptr inbounds %struct.DState, %struct.DState* %30, i32 0, i32 1
  %31 = load i32, i32* %state, align 8, !tbaa !9
  %cmp = icmp eq i32 %31, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %32 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_i = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 40
  store i32 0, i32* %save_i, align 4, !tbaa !10
  %33 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_j = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 41
  store i32 0, i32* %save_j, align 8, !tbaa !11
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_t = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 42
  store i32 0, i32* %save_t, align 4, !tbaa !12
  %35 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_alphaSize = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 43
  store i32 0, i32* %save_alphaSize, align 8, !tbaa !13
  %36 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nGroups = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 44
  store i32 0, i32* %save_nGroups, align 4, !tbaa !14
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nSelectors = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 45
  store i32 0, i32* %save_nSelectors, align 8, !tbaa !15
  %38 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_EOB = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 46
  store i32 0, i32* %save_EOB, align 4, !tbaa !16
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupNo = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 47
  store i32 0, i32* %save_groupNo, align 8, !tbaa !17
  %40 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupPos = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 48
  store i32 0, i32* %save_groupPos, align 4, !tbaa !18
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nextSym = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 49
  store i32 0, i32* %save_nextSym, align 8, !tbaa !19
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblockMAX = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 50
  store i32 0, i32* %save_nblockMAX, align 4, !tbaa !20
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  store i32 0, i32* %save_nblock, align 8, !tbaa !21
  %44 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_es = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 52
  store i32 0, i32* %save_es, align 4, !tbaa !22
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_N = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 53
  store i32 0, i32* %save_N, align 8, !tbaa !23
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_curr = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 54
  store i32 0, i32* %save_curr, align 4, !tbaa !24
  %47 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zt = getelementptr inbounds %struct.DState, %struct.DState* %47, i32 0, i32 55
  store i32 0, i32* %save_zt, align 8, !tbaa !25
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zn = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 56
  store i32 0, i32* %save_zn, align 4, !tbaa !26
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zvec = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 57
  store i32 0, i32* %save_zvec, align 8, !tbaa !27
  %50 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zj = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 58
  store i32 0, i32* %save_zj, align 4, !tbaa !28
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gSel = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 59
  store i32 0, i32* %save_gSel, align 8, !tbaa !29
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gMinlen = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 60
  store i32 0, i32* %save_gMinlen, align 4, !tbaa !30
  %53 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gLimit = getelementptr inbounds %struct.DState, %struct.DState* %53, i32 0, i32 61
  store i32* null, i32** %save_gLimit, align 8, !tbaa !31
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gBase = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 62
  store i32* null, i32** %save_gBase, align 8, !tbaa !32
  %55 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gPerm = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 63
  store i32* null, i32** %save_gPerm, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %56 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_i2 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 40
  %57 = load i32, i32* %save_i2, align 4, !tbaa !10
  store i32 %57, i32* %i, align 4, !tbaa !34
  %58 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_j3 = getelementptr inbounds %struct.DState, %struct.DState* %58, i32 0, i32 41
  %59 = load i32, i32* %save_j3, align 8, !tbaa !11
  store i32 %59, i32* %j, align 4, !tbaa !34
  %60 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_t4 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 42
  %61 = load i32, i32* %save_t4, align 4, !tbaa !12
  store i32 %61, i32* %t, align 4, !tbaa !34
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_alphaSize5 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 43
  %63 = load i32, i32* %save_alphaSize5, align 8, !tbaa !13
  store i32 %63, i32* %alphaSize, align 4, !tbaa !34
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nGroups6 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 44
  %65 = load i32, i32* %save_nGroups6, align 4, !tbaa !14
  store i32 %65, i32* %nGroups, align 4, !tbaa !34
  %66 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nSelectors7 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 45
  %67 = load i32, i32* %save_nSelectors7, align 8, !tbaa !15
  store i32 %67, i32* %nSelectors, align 4, !tbaa !34
  %68 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_EOB8 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 46
  %69 = load i32, i32* %save_EOB8, align 4, !tbaa !16
  store i32 %69, i32* %EOB, align 4, !tbaa !34
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupNo9 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 47
  %71 = load i32, i32* %save_groupNo9, align 8, !tbaa !17
  store i32 %71, i32* %groupNo, align 4, !tbaa !34
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupPos10 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 48
  %73 = load i32, i32* %save_groupPos10, align 4, !tbaa !18
  store i32 %73, i32* %groupPos, align 4, !tbaa !34
  %74 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nextSym11 = getelementptr inbounds %struct.DState, %struct.DState* %74, i32 0, i32 49
  %75 = load i32, i32* %save_nextSym11, align 8, !tbaa !19
  store i32 %75, i32* %nextSym, align 4, !tbaa !34
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 50
  %77 = load i32, i32* %save_nblockMAX12, align 4, !tbaa !20
  store i32 %77, i32* %nblockMAX, align 4, !tbaa !34
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblock13 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 51
  %79 = load i32, i32* %save_nblock13, align 8, !tbaa !21
  store i32 %79, i32* %nblock, align 4, !tbaa !34
  %80 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_es14 = getelementptr inbounds %struct.DState, %struct.DState* %80, i32 0, i32 52
  %81 = load i32, i32* %save_es14, align 4, !tbaa !22
  store i32 %81, i32* %es, align 4, !tbaa !34
  %82 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_N15 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 53
  %83 = load i32, i32* %save_N15, align 8, !tbaa !23
  store i32 %83, i32* %N, align 4, !tbaa !34
  %84 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_curr16 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 54
  %85 = load i32, i32* %save_curr16, align 4, !tbaa !24
  store i32 %85, i32* %curr, align 4, !tbaa !34
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zt17 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 55
  %87 = load i32, i32* %save_zt17, align 8, !tbaa !25
  store i32 %87, i32* %zt, align 4, !tbaa !34
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zn18 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 56
  %89 = load i32, i32* %save_zn18, align 4, !tbaa !26
  store i32 %89, i32* %zn, align 4, !tbaa !34
  %90 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zvec19 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 57
  %91 = load i32, i32* %save_zvec19, align 8, !tbaa !27
  store i32 %91, i32* %zvec, align 4, !tbaa !34
  %92 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zj20 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 58
  %93 = load i32, i32* %save_zj20, align 4, !tbaa !28
  store i32 %93, i32* %zj, align 4, !tbaa !34
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gSel21 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 59
  %95 = load i32, i32* %save_gSel21, align 8, !tbaa !29
  store i32 %95, i32* %gSel, align 4, !tbaa !34
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gMinlen22 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 60
  %97 = load i32, i32* %save_gMinlen22, align 4, !tbaa !30
  store i32 %97, i32* %gMinlen, align 4, !tbaa !34
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gLimit23 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 61
  %99 = load i32*, i32** %save_gLimit23, align 8, !tbaa !31
  store i32* %99, i32** %gLimit, align 8, !tbaa !2
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gBase24 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 62
  %101 = load i32*, i32** %save_gBase24, align 8, !tbaa !32
  store i32* %101, i32** %gBase, align 8, !tbaa !2
  %102 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gPerm25 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 63
  %103 = load i32*, i32** %save_gPerm25, align 8, !tbaa !33
  store i32* %103, i32** %gPerm, align 8, !tbaa !2
  store i32 0, i32* %retVal, align 4, !tbaa !34
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state26 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 1
  %105 = load i32, i32* %state26, align 8, !tbaa !9
  switch i32 %105, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb62
    i32 12, label %sw.bb119
    i32 13, label %sw.bb176
    i32 14, label %sw.bb275
    i32 15, label %sw.bb337
    i32 16, label %sw.bb394
    i32 17, label %sw.bb451
    i32 18, label %sw.bb508
    i32 19, label %sw.bb565
    i32 20, label %sw.bb629
    i32 21, label %sw.bb686
    i32 22, label %sw.bb743
    i32 23, label %sw.bb800
    i32 24, label %sw.bb857
    i32 25, label %sw.bb909
    i32 26, label %sw.bb966
    i32 27, label %sw.bb1023
    i32 28, label %sw.bb1095
    i32 29, label %sw.bb1179
    i32 30, label %sw.bb1254
    i32 31, label %sw.bb1312
    i32 32, label %sw.bb1373
    i32 33, label %sw.bb1485
    i32 34, label %sw.bb1549
    i32 35, label %sw.bb1606
    i32 36, label %sw.bb1804
    i32 37, label %sw.bb1870
    i32 38, label %sw.bb1997
    i32 39, label %sw.bb2063
    i32 40, label %sw.bb2413
    i32 41, label %sw.bb2479
    i32 42, label %sw.bb2943
    i32 43, label %sw.bb3000
    i32 44, label %sw.bb3057
    i32 45, label %sw.bb3114
    i32 46, label %sw.bb3171
    i32 47, label %sw.bb3228
    i32 48, label %sw.bb3285
    i32 49, label %sw.bb3342
    i32 50, label %sw.bb3399
  ]

sw.bb:                                            ; preds = %if.end
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state27 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 1
  store i32 10, i32* %state27, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end56, %sw.bb
  br label %while.body

while.body:                                       ; preds = %while.cond
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 8
  %108 = load i32, i32* %bsLive, align 4, !tbaa !35
  %cmp28 = icmp sge i32 %108, 8
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %109 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %109) #3
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 7
  %111 = load i32, i32* %bsBuff, align 8, !tbaa !36
  %112 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive30 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 8
  %113 = load i32, i32* %bsLive30, align 4, !tbaa !35
  %sub = sub nsw i32 %113, 8
  %shr = lshr i32 %111, %sub
  %and = and i32 %shr, 255
  store i32 %and, i32* %v, align 4, !tbaa !34
  %114 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive31 = getelementptr inbounds %struct.DState, %struct.DState* %114, i32 0, i32 8
  %115 = load i32, i32* %bsLive31, align 4, !tbaa !35
  %sub32 = sub nsw i32 %115, 8
  store i32 %sub32, i32* %bsLive31, align 4, !tbaa !35
  %116 = load i32, i32* %v, align 4, !tbaa !34
  %conv = trunc i32 %116 to i8
  store i8 %conv, i8* %uc, align 1, !tbaa !37
  %117 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3
  br label %while.end

if.end33:                                         ; preds = %while.body
  %118 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm34 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 0
  %119 = load %struct.bz_stream*, %struct.bz_stream** %strm34, align 8, !tbaa !6
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %119, i32 0, i32 1
  %120 = load i32, i32* %avail_in, align 8, !tbaa !38
  %cmp35 = icmp eq i32 %120, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end38:                                         ; preds = %if.end33
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff39 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 7
  %122 = load i32, i32* %bsBuff39, align 8, !tbaa !36
  %shl = shl i32 %122, 8
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm40 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 0
  %124 = load %struct.bz_stream*, %struct.bz_stream** %strm40, align 8, !tbaa !6
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %124, i32 0, i32 0
  %125 = load i8*, i8** %next_in, align 8, !tbaa !40
  %126 = load i8, i8* %125, align 1, !tbaa !37
  %conv41 = zext i8 %126 to i32
  %or = or i32 %shl, %conv41
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff42 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 7
  store i32 %or, i32* %bsBuff42, align 8, !tbaa !36
  %128 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive43 = getelementptr inbounds %struct.DState, %struct.DState* %128, i32 0, i32 8
  %129 = load i32, i32* %bsLive43, align 4, !tbaa !35
  %add = add nsw i32 %129, 8
  store i32 %add, i32* %bsLive43, align 4, !tbaa !35
  %130 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm44 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 0
  %131 = load %struct.bz_stream*, %struct.bz_stream** %strm44, align 8, !tbaa !6
  %next_in45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %131, i32 0, i32 0
  %132 = load i8*, i8** %next_in45, align 8, !tbaa !40
  %incdec.ptr = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr, i8** %next_in45, align 8, !tbaa !40
  %133 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm46 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 0
  %134 = load %struct.bz_stream*, %struct.bz_stream** %strm46, align 8, !tbaa !6
  %avail_in47 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %134, i32 0, i32 1
  %135 = load i32, i32* %avail_in47, align 8, !tbaa !38
  %dec = add i32 %135, -1
  store i32 %dec, i32* %avail_in47, align 8, !tbaa !38
  %136 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm48 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 0
  %137 = load %struct.bz_stream*, %struct.bz_stream** %strm48, align 8, !tbaa !6
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %137, i32 0, i32 2
  %138 = load i32, i32* %total_in_lo32, align 4, !tbaa !41
  %inc = add i32 %138, 1
  store i32 %inc, i32* %total_in_lo32, align 4, !tbaa !41
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm49 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 0
  %140 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8, !tbaa !6
  %total_in_lo3250 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %140, i32 0, i32 2
  %141 = load i32, i32* %total_in_lo3250, align 4, !tbaa !41
  %cmp51 = icmp eq i32 %141, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end38
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm54 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 0
  %143 = load %struct.bz_stream*, %struct.bz_stream** %strm54, align 8, !tbaa !6
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %143, i32 0, i32 3
  %144 = load i32, i32* %total_in_hi32, align 8, !tbaa !42
  %inc55 = add i32 %144, 1
  store i32 %inc55, i32* %total_in_hi32, align 8, !tbaa !42
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end38
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %if.then29
  %145 = load i8, i8* %uc, align 1, !tbaa !37
  %conv57 = zext i8 %145 to i32
  %cmp58 = icmp ne i32 %conv57, 66
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  store i32 -5, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end61:                                         ; preds = %while.end
  br label %sw.bb62

sw.bb62:                                          ; preds = %if.end, %if.end61
  %146 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state63 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 1
  store i32 11, i32* %state63, align 8, !tbaa !9
  br label %while.cond64

while.cond64:                                     ; preds = %if.end112, %sw.bb62
  br label %while.body65

while.body65:                                     ; preds = %while.cond64
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive66 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 8
  %148 = load i32, i32* %bsLive66, align 4, !tbaa !35
  %cmp67 = icmp sge i32 %148, 8
  br i1 %cmp67, label %if.then69, label %if.end79

if.then69:                                        ; preds = %while.body65
  %149 = bitcast i32* %v70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %149) #3
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff71 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 7
  %151 = load i32, i32* %bsBuff71, align 8, !tbaa !36
  %152 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive72 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 8
  %153 = load i32, i32* %bsLive72, align 4, !tbaa !35
  %sub73 = sub nsw i32 %153, 8
  %shr74 = lshr i32 %151, %sub73
  %and75 = and i32 %shr74, 255
  store i32 %and75, i32* %v70, align 4, !tbaa !34
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive76 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 8
  %155 = load i32, i32* %bsLive76, align 4, !tbaa !35
  %sub77 = sub nsw i32 %155, 8
  store i32 %sub77, i32* %bsLive76, align 4, !tbaa !35
  %156 = load i32, i32* %v70, align 4, !tbaa !34
  %conv78 = trunc i32 %156 to i8
  store i8 %conv78, i8* %uc, align 1, !tbaa !37
  %157 = bitcast i32* %v70 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #3
  br label %while.end113

if.end79:                                         ; preds = %while.body65
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm80 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 0
  %159 = load %struct.bz_stream*, %struct.bz_stream** %strm80, align 8, !tbaa !6
  %avail_in81 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %159, i32 0, i32 1
  %160 = load i32, i32* %avail_in81, align 8, !tbaa !38
  %cmp82 = icmp eq i32 %160, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end79
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end85:                                         ; preds = %if.end79
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff86 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 7
  %162 = load i32, i32* %bsBuff86, align 8, !tbaa !36
  %shl87 = shl i32 %162, 8
  %163 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm88 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 0
  %164 = load %struct.bz_stream*, %struct.bz_stream** %strm88, align 8, !tbaa !6
  %next_in89 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %164, i32 0, i32 0
  %165 = load i8*, i8** %next_in89, align 8, !tbaa !40
  %166 = load i8, i8* %165, align 1, !tbaa !37
  %conv90 = zext i8 %166 to i32
  %or91 = or i32 %shl87, %conv90
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff92 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 7
  store i32 %or91, i32* %bsBuff92, align 8, !tbaa !36
  %168 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive93 = getelementptr inbounds %struct.DState, %struct.DState* %168, i32 0, i32 8
  %169 = load i32, i32* %bsLive93, align 4, !tbaa !35
  %add94 = add nsw i32 %169, 8
  store i32 %add94, i32* %bsLive93, align 4, !tbaa !35
  %170 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm95 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 0
  %171 = load %struct.bz_stream*, %struct.bz_stream** %strm95, align 8, !tbaa !6
  %next_in96 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %171, i32 0, i32 0
  %172 = load i8*, i8** %next_in96, align 8, !tbaa !40
  %incdec.ptr97 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr97, i8** %next_in96, align 8, !tbaa !40
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm98 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 0
  %174 = load %struct.bz_stream*, %struct.bz_stream** %strm98, align 8, !tbaa !6
  %avail_in99 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %174, i32 0, i32 1
  %175 = load i32, i32* %avail_in99, align 8, !tbaa !38
  %dec100 = add i32 %175, -1
  store i32 %dec100, i32* %avail_in99, align 8, !tbaa !38
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm101 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 0
  %177 = load %struct.bz_stream*, %struct.bz_stream** %strm101, align 8, !tbaa !6
  %total_in_lo32102 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %177, i32 0, i32 2
  %178 = load i32, i32* %total_in_lo32102, align 4, !tbaa !41
  %inc103 = add i32 %178, 1
  store i32 %inc103, i32* %total_in_lo32102, align 4, !tbaa !41
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm104 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 0
  %180 = load %struct.bz_stream*, %struct.bz_stream** %strm104, align 8, !tbaa !6
  %total_in_lo32105 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 2
  %181 = load i32, i32* %total_in_lo32105, align 4, !tbaa !41
  %cmp106 = icmp eq i32 %181, 0
  br i1 %cmp106, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.end85
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm109 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 0
  %183 = load %struct.bz_stream*, %struct.bz_stream** %strm109, align 8, !tbaa !6
  %total_in_hi32110 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %183, i32 0, i32 3
  %184 = load i32, i32* %total_in_hi32110, align 8, !tbaa !42
  %inc111 = add i32 %184, 1
  store i32 %inc111, i32* %total_in_hi32110, align 8, !tbaa !42
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end85
  br label %while.cond64, !llvm.loop !45

while.end113:                                     ; preds = %if.then69
  %185 = load i8, i8* %uc, align 1, !tbaa !37
  %conv114 = zext i8 %185 to i32
  %cmp115 = icmp ne i32 %conv114, 90
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %while.end113
  store i32 -5, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end118:                                        ; preds = %while.end113
  br label %sw.bb119

sw.bb119:                                         ; preds = %if.end, %if.end118
  %186 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state120 = getelementptr inbounds %struct.DState, %struct.DState* %186, i32 0, i32 1
  store i32 12, i32* %state120, align 8, !tbaa !9
  br label %while.cond121

while.cond121:                                    ; preds = %if.end169, %sw.bb119
  br label %while.body122

while.body122:                                    ; preds = %while.cond121
  %187 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive123 = getelementptr inbounds %struct.DState, %struct.DState* %187, i32 0, i32 8
  %188 = load i32, i32* %bsLive123, align 4, !tbaa !35
  %cmp124 = icmp sge i32 %188, 8
  br i1 %cmp124, label %if.then126, label %if.end136

if.then126:                                       ; preds = %while.body122
  %189 = bitcast i32* %v127 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %189) #3
  %190 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff128 = getelementptr inbounds %struct.DState, %struct.DState* %190, i32 0, i32 7
  %191 = load i32, i32* %bsBuff128, align 8, !tbaa !36
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive129 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 8
  %193 = load i32, i32* %bsLive129, align 4, !tbaa !35
  %sub130 = sub nsw i32 %193, 8
  %shr131 = lshr i32 %191, %sub130
  %and132 = and i32 %shr131, 255
  store i32 %and132, i32* %v127, align 4, !tbaa !34
  %194 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive133 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 8
  %195 = load i32, i32* %bsLive133, align 4, !tbaa !35
  %sub134 = sub nsw i32 %195, 8
  store i32 %sub134, i32* %bsLive133, align 4, !tbaa !35
  %196 = load i32, i32* %v127, align 4, !tbaa !34
  %conv135 = trunc i32 %196 to i8
  store i8 %conv135, i8* %uc, align 1, !tbaa !37
  %197 = bitcast i32* %v127 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %197) #3
  br label %while.end170

if.end136:                                        ; preds = %while.body122
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm137 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 0
  %199 = load %struct.bz_stream*, %struct.bz_stream** %strm137, align 8, !tbaa !6
  %avail_in138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %199, i32 0, i32 1
  %200 = load i32, i32* %avail_in138, align 8, !tbaa !38
  %cmp139 = icmp eq i32 %200, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end136
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end142:                                        ; preds = %if.end136
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff143 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 7
  %202 = load i32, i32* %bsBuff143, align 8, !tbaa !36
  %shl144 = shl i32 %202, 8
  %203 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm145 = getelementptr inbounds %struct.DState, %struct.DState* %203, i32 0, i32 0
  %204 = load %struct.bz_stream*, %struct.bz_stream** %strm145, align 8, !tbaa !6
  %next_in146 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %204, i32 0, i32 0
  %205 = load i8*, i8** %next_in146, align 8, !tbaa !40
  %206 = load i8, i8* %205, align 1, !tbaa !37
  %conv147 = zext i8 %206 to i32
  %or148 = or i32 %shl144, %conv147
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff149 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 7
  store i32 %or148, i32* %bsBuff149, align 8, !tbaa !36
  %208 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive150 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 8
  %209 = load i32, i32* %bsLive150, align 4, !tbaa !35
  %add151 = add nsw i32 %209, 8
  store i32 %add151, i32* %bsLive150, align 4, !tbaa !35
  %210 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm152 = getelementptr inbounds %struct.DState, %struct.DState* %210, i32 0, i32 0
  %211 = load %struct.bz_stream*, %struct.bz_stream** %strm152, align 8, !tbaa !6
  %next_in153 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %211, i32 0, i32 0
  %212 = load i8*, i8** %next_in153, align 8, !tbaa !40
  %incdec.ptr154 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr154, i8** %next_in153, align 8, !tbaa !40
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm155 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 0
  %214 = load %struct.bz_stream*, %struct.bz_stream** %strm155, align 8, !tbaa !6
  %avail_in156 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %214, i32 0, i32 1
  %215 = load i32, i32* %avail_in156, align 8, !tbaa !38
  %dec157 = add i32 %215, -1
  store i32 %dec157, i32* %avail_in156, align 8, !tbaa !38
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm158 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 0
  %217 = load %struct.bz_stream*, %struct.bz_stream** %strm158, align 8, !tbaa !6
  %total_in_lo32159 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %217, i32 0, i32 2
  %218 = load i32, i32* %total_in_lo32159, align 4, !tbaa !41
  %inc160 = add i32 %218, 1
  store i32 %inc160, i32* %total_in_lo32159, align 4, !tbaa !41
  %219 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm161 = getelementptr inbounds %struct.DState, %struct.DState* %219, i32 0, i32 0
  %220 = load %struct.bz_stream*, %struct.bz_stream** %strm161, align 8, !tbaa !6
  %total_in_lo32162 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %220, i32 0, i32 2
  %221 = load i32, i32* %total_in_lo32162, align 4, !tbaa !41
  %cmp163 = icmp eq i32 %221, 0
  br i1 %cmp163, label %if.then165, label %if.end169

if.then165:                                       ; preds = %if.end142
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm166 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 0
  %223 = load %struct.bz_stream*, %struct.bz_stream** %strm166, align 8, !tbaa !6
  %total_in_hi32167 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %223, i32 0, i32 3
  %224 = load i32, i32* %total_in_hi32167, align 8, !tbaa !42
  %inc168 = add i32 %224, 1
  store i32 %inc168, i32* %total_in_hi32167, align 8, !tbaa !42
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.end142
  br label %while.cond121, !llvm.loop !46

while.end170:                                     ; preds = %if.then126
  %225 = load i8, i8* %uc, align 1, !tbaa !37
  %conv171 = zext i8 %225 to i32
  %cmp172 = icmp ne i32 %conv171, 104
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %while.end170
  store i32 -5, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end175:                                        ; preds = %while.end170
  br label %sw.bb176

sw.bb176:                                         ; preds = %if.end, %if.end175
  %226 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state177 = getelementptr inbounds %struct.DState, %struct.DState* %226, i32 0, i32 1
  store i32 13, i32* %state177, align 8, !tbaa !9
  br label %while.cond178

while.cond178:                                    ; preds = %if.end225, %sw.bb176
  br label %while.body179

while.body179:                                    ; preds = %while.cond178
  %227 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive180 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 8
  %228 = load i32, i32* %bsLive180, align 4, !tbaa !35
  %cmp181 = icmp sge i32 %228, 8
  br i1 %cmp181, label %if.then183, label %if.end192

if.then183:                                       ; preds = %while.body179
  %229 = bitcast i32* %v184 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %229) #3
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff185 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 7
  %231 = load i32, i32* %bsBuff185, align 8, !tbaa !36
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive186 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 8
  %233 = load i32, i32* %bsLive186, align 4, !tbaa !35
  %sub187 = sub nsw i32 %233, 8
  %shr188 = lshr i32 %231, %sub187
  %and189 = and i32 %shr188, 255
  store i32 %and189, i32* %v184, align 4, !tbaa !34
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive190 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 8
  %235 = load i32, i32* %bsLive190, align 4, !tbaa !35
  %sub191 = sub nsw i32 %235, 8
  store i32 %sub191, i32* %bsLive190, align 4, !tbaa !35
  %236 = load i32, i32* %v184, align 4, !tbaa !34
  %237 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 9
  store i32 %236, i32* %blockSize100k, align 8, !tbaa !47
  %238 = bitcast i32* %v184 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %238) #3
  br label %while.end226

if.end192:                                        ; preds = %while.body179
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm193 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 0
  %240 = load %struct.bz_stream*, %struct.bz_stream** %strm193, align 8, !tbaa !6
  %avail_in194 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %240, i32 0, i32 1
  %241 = load i32, i32* %avail_in194, align 8, !tbaa !38
  %cmp195 = icmp eq i32 %241, 0
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.end192
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end198:                                        ; preds = %if.end192
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff199 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 7
  %243 = load i32, i32* %bsBuff199, align 8, !tbaa !36
  %shl200 = shl i32 %243, 8
  %244 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm201 = getelementptr inbounds %struct.DState, %struct.DState* %244, i32 0, i32 0
  %245 = load %struct.bz_stream*, %struct.bz_stream** %strm201, align 8, !tbaa !6
  %next_in202 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %245, i32 0, i32 0
  %246 = load i8*, i8** %next_in202, align 8, !tbaa !40
  %247 = load i8, i8* %246, align 1, !tbaa !37
  %conv203 = zext i8 %247 to i32
  %or204 = or i32 %shl200, %conv203
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff205 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 7
  store i32 %or204, i32* %bsBuff205, align 8, !tbaa !36
  %249 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive206 = getelementptr inbounds %struct.DState, %struct.DState* %249, i32 0, i32 8
  %250 = load i32, i32* %bsLive206, align 4, !tbaa !35
  %add207 = add nsw i32 %250, 8
  store i32 %add207, i32* %bsLive206, align 4, !tbaa !35
  %251 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm208 = getelementptr inbounds %struct.DState, %struct.DState* %251, i32 0, i32 0
  %252 = load %struct.bz_stream*, %struct.bz_stream** %strm208, align 8, !tbaa !6
  %next_in209 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %252, i32 0, i32 0
  %253 = load i8*, i8** %next_in209, align 8, !tbaa !40
  %incdec.ptr210 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %incdec.ptr210, i8** %next_in209, align 8, !tbaa !40
  %254 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm211 = getelementptr inbounds %struct.DState, %struct.DState* %254, i32 0, i32 0
  %255 = load %struct.bz_stream*, %struct.bz_stream** %strm211, align 8, !tbaa !6
  %avail_in212 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %255, i32 0, i32 1
  %256 = load i32, i32* %avail_in212, align 8, !tbaa !38
  %dec213 = add i32 %256, -1
  store i32 %dec213, i32* %avail_in212, align 8, !tbaa !38
  %257 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm214 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 0
  %258 = load %struct.bz_stream*, %struct.bz_stream** %strm214, align 8, !tbaa !6
  %total_in_lo32215 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %258, i32 0, i32 2
  %259 = load i32, i32* %total_in_lo32215, align 4, !tbaa !41
  %inc216 = add i32 %259, 1
  store i32 %inc216, i32* %total_in_lo32215, align 4, !tbaa !41
  %260 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm217 = getelementptr inbounds %struct.DState, %struct.DState* %260, i32 0, i32 0
  %261 = load %struct.bz_stream*, %struct.bz_stream** %strm217, align 8, !tbaa !6
  %total_in_lo32218 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %261, i32 0, i32 2
  %262 = load i32, i32* %total_in_lo32218, align 4, !tbaa !41
  %cmp219 = icmp eq i32 %262, 0
  br i1 %cmp219, label %if.then221, label %if.end225

if.then221:                                       ; preds = %if.end198
  %263 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm222 = getelementptr inbounds %struct.DState, %struct.DState* %263, i32 0, i32 0
  %264 = load %struct.bz_stream*, %struct.bz_stream** %strm222, align 8, !tbaa !6
  %total_in_hi32223 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %264, i32 0, i32 3
  %265 = load i32, i32* %total_in_hi32223, align 8, !tbaa !42
  %inc224 = add i32 %265, 1
  store i32 %inc224, i32* %total_in_hi32223, align 8, !tbaa !42
  br label %if.end225

if.end225:                                        ; preds = %if.then221, %if.end198
  br label %while.cond178, !llvm.loop !48

while.end226:                                     ; preds = %if.then183
  %266 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k227 = getelementptr inbounds %struct.DState, %struct.DState* %266, i32 0, i32 9
  %267 = load i32, i32* %blockSize100k227, align 8, !tbaa !47
  %cmp228 = icmp slt i32 %267, 49
  br i1 %cmp228, label %if.then233, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end226
  %268 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k230 = getelementptr inbounds %struct.DState, %struct.DState* %268, i32 0, i32 9
  %269 = load i32, i32* %blockSize100k230, align 8, !tbaa !47
  %cmp231 = icmp sgt i32 %269, 57
  br i1 %cmp231, label %if.then233, label %if.end234

if.then233:                                       ; preds = %lor.lhs.false, %while.end226
  store i32 -5, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end234:                                        ; preds = %lor.lhs.false
  %270 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k235 = getelementptr inbounds %struct.DState, %struct.DState* %270, i32 0, i32 9
  %271 = load i32, i32* %blockSize100k235, align 8, !tbaa !47
  %sub236 = sub nsw i32 %271, 48
  store i32 %sub236, i32* %blockSize100k235, align 8, !tbaa !47
  %272 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 10
  %273 = load i8, i8* %smallDecompress, align 4, !tbaa !49
  %tobool = icmp ne i8 %273, 0
  br i1 %tobool, label %if.then237, label %if.else

if.then237:                                       ; preds = %if.end234
  %274 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %274, i32 0, i32 9
  %275 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !50
  %276 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %276, i32 0, i32 11
  %277 = load i8*, i8** %opaque, align 8, !tbaa !51
  %278 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k238 = getelementptr inbounds %struct.DState, %struct.DState* %278, i32 0, i32 9
  %279 = load i32, i32* %blockSize100k238, align 8, !tbaa !47
  %mul = mul nsw i32 %279, 100000
  %conv239 = sext i32 %mul to i64
  %mul240 = mul i64 %conv239, 2
  %conv241 = trunc i64 %mul240 to i32
  %call = call i8* %275(i8* %277, i32 %conv241, i32 1)
  %280 = bitcast i8* %call to i16*
  %281 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %281, i32 0, i32 21
  store i16* %280, i16** %ll16, align 8, !tbaa !52
  %282 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %bzalloc242 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %282, i32 0, i32 9
  %283 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc242, align 8, !tbaa !50
  %284 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %opaque243 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %284, i32 0, i32 11
  %285 = load i8*, i8** %opaque243, align 8, !tbaa !51
  %286 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k244 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 9
  %287 = load i32, i32* %blockSize100k244, align 8, !tbaa !47
  %mul245 = mul nsw i32 %287, 100000
  %add246 = add nsw i32 1, %mul245
  %shr247 = ashr i32 %add246, 1
  %conv248 = sext i32 %shr247 to i64
  %mul249 = mul i64 %conv248, 1
  %conv250 = trunc i64 %mul249 to i32
  %call251 = call i8* %283(i8* %285, i32 %conv250, i32 1)
  %288 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %288, i32 0, i32 22
  store i8* %call251, i8** %ll4, align 8, !tbaa !53
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll16252 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 21
  %290 = load i16*, i16** %ll16252, align 8, !tbaa !52
  %cmp253 = icmp eq i16* %290, null
  br i1 %cmp253, label %if.then259, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %if.then237
  %291 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll4256 = getelementptr inbounds %struct.DState, %struct.DState* %291, i32 0, i32 22
  %292 = load i8*, i8** %ll4256, align 8, !tbaa !53
  %cmp257 = icmp eq i8* %292, null
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %lor.lhs.false255, %if.then237
  store i32 -3, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end260:                                        ; preds = %lor.lhs.false255
  br label %if.end274

if.else:                                          ; preds = %if.end234
  %293 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %bzalloc261 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %293, i32 0, i32 9
  %294 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc261, align 8, !tbaa !50
  %295 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !2
  %opaque262 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %295, i32 0, i32 11
  %296 = load i8*, i8** %opaque262, align 8, !tbaa !51
  %297 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k263 = getelementptr inbounds %struct.DState, %struct.DState* %297, i32 0, i32 9
  %298 = load i32, i32* %blockSize100k263, align 8, !tbaa !47
  %mul264 = mul nsw i32 %298, 100000
  %conv265 = sext i32 %mul264 to i64
  %mul266 = mul i64 %conv265, 4
  %conv267 = trunc i64 %mul266 to i32
  %call268 = call i8* %294(i8* %296, i32 %conv267, i32 1)
  %299 = bitcast i8* %call268 to i32*
  %300 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %300, i32 0, i32 20
  store i32* %299, i32** %tt, align 8, !tbaa !54
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt269 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 20
  %302 = load i32*, i32** %tt269, align 8, !tbaa !54
  %cmp270 = icmp eq i32* %302, null
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.else
  store i32 -3, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end273:                                        ; preds = %if.else
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end260
  br label %sw.bb275

sw.bb275:                                         ; preds = %if.end, %if.end274
  %303 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state276 = getelementptr inbounds %struct.DState, %struct.DState* %303, i32 0, i32 1
  store i32 14, i32* %state276, align 8, !tbaa !9
  br label %while.cond277

while.cond277:                                    ; preds = %if.end325, %sw.bb275
  br label %while.body278

while.body278:                                    ; preds = %while.cond277
  %304 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive279 = getelementptr inbounds %struct.DState, %struct.DState* %304, i32 0, i32 8
  %305 = load i32, i32* %bsLive279, align 4, !tbaa !35
  %cmp280 = icmp sge i32 %305, 8
  br i1 %cmp280, label %if.then282, label %if.end292

if.then282:                                       ; preds = %while.body278
  %306 = bitcast i32* %v283 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %306) #3
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff284 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 7
  %308 = load i32, i32* %bsBuff284, align 8, !tbaa !36
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive285 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 8
  %310 = load i32, i32* %bsLive285, align 4, !tbaa !35
  %sub286 = sub nsw i32 %310, 8
  %shr287 = lshr i32 %308, %sub286
  %and288 = and i32 %shr287, 255
  store i32 %and288, i32* %v283, align 4, !tbaa !34
  %311 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive289 = getelementptr inbounds %struct.DState, %struct.DState* %311, i32 0, i32 8
  %312 = load i32, i32* %bsLive289, align 4, !tbaa !35
  %sub290 = sub nsw i32 %312, 8
  store i32 %sub290, i32* %bsLive289, align 4, !tbaa !35
  %313 = load i32, i32* %v283, align 4, !tbaa !34
  %conv291 = trunc i32 %313 to i8
  store i8 %conv291, i8* %uc, align 1, !tbaa !37
  %314 = bitcast i32* %v283 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %314) #3
  br label %while.end326

if.end292:                                        ; preds = %while.body278
  %315 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm293 = getelementptr inbounds %struct.DState, %struct.DState* %315, i32 0, i32 0
  %316 = load %struct.bz_stream*, %struct.bz_stream** %strm293, align 8, !tbaa !6
  %avail_in294 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %316, i32 0, i32 1
  %317 = load i32, i32* %avail_in294, align 8, !tbaa !38
  %cmp295 = icmp eq i32 %317, 0
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.end292
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end298:                                        ; preds = %if.end292
  %318 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff299 = getelementptr inbounds %struct.DState, %struct.DState* %318, i32 0, i32 7
  %319 = load i32, i32* %bsBuff299, align 8, !tbaa !36
  %shl300 = shl i32 %319, 8
  %320 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm301 = getelementptr inbounds %struct.DState, %struct.DState* %320, i32 0, i32 0
  %321 = load %struct.bz_stream*, %struct.bz_stream** %strm301, align 8, !tbaa !6
  %next_in302 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %321, i32 0, i32 0
  %322 = load i8*, i8** %next_in302, align 8, !tbaa !40
  %323 = load i8, i8* %322, align 1, !tbaa !37
  %conv303 = zext i8 %323 to i32
  %or304 = or i32 %shl300, %conv303
  %324 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff305 = getelementptr inbounds %struct.DState, %struct.DState* %324, i32 0, i32 7
  store i32 %or304, i32* %bsBuff305, align 8, !tbaa !36
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive306 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 8
  %326 = load i32, i32* %bsLive306, align 4, !tbaa !35
  %add307 = add nsw i32 %326, 8
  store i32 %add307, i32* %bsLive306, align 4, !tbaa !35
  %327 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm308 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 0
  %328 = load %struct.bz_stream*, %struct.bz_stream** %strm308, align 8, !tbaa !6
  %next_in309 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %328, i32 0, i32 0
  %329 = load i8*, i8** %next_in309, align 8, !tbaa !40
  %incdec.ptr310 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %incdec.ptr310, i8** %next_in309, align 8, !tbaa !40
  %330 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm311 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 0
  %331 = load %struct.bz_stream*, %struct.bz_stream** %strm311, align 8, !tbaa !6
  %avail_in312 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %331, i32 0, i32 1
  %332 = load i32, i32* %avail_in312, align 8, !tbaa !38
  %dec313 = add i32 %332, -1
  store i32 %dec313, i32* %avail_in312, align 8, !tbaa !38
  %333 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm314 = getelementptr inbounds %struct.DState, %struct.DState* %333, i32 0, i32 0
  %334 = load %struct.bz_stream*, %struct.bz_stream** %strm314, align 8, !tbaa !6
  %total_in_lo32315 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %334, i32 0, i32 2
  %335 = load i32, i32* %total_in_lo32315, align 4, !tbaa !41
  %inc316 = add i32 %335, 1
  store i32 %inc316, i32* %total_in_lo32315, align 4, !tbaa !41
  %336 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm317 = getelementptr inbounds %struct.DState, %struct.DState* %336, i32 0, i32 0
  %337 = load %struct.bz_stream*, %struct.bz_stream** %strm317, align 8, !tbaa !6
  %total_in_lo32318 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %337, i32 0, i32 2
  %338 = load i32, i32* %total_in_lo32318, align 4, !tbaa !41
  %cmp319 = icmp eq i32 %338, 0
  br i1 %cmp319, label %if.then321, label %if.end325

if.then321:                                       ; preds = %if.end298
  %339 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm322 = getelementptr inbounds %struct.DState, %struct.DState* %339, i32 0, i32 0
  %340 = load %struct.bz_stream*, %struct.bz_stream** %strm322, align 8, !tbaa !6
  %total_in_hi32323 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %340, i32 0, i32 3
  %341 = load i32, i32* %total_in_hi32323, align 8, !tbaa !42
  %inc324 = add i32 %341, 1
  store i32 %inc324, i32* %total_in_hi32323, align 8, !tbaa !42
  br label %if.end325

if.end325:                                        ; preds = %if.then321, %if.end298
  br label %while.cond277, !llvm.loop !55

while.end326:                                     ; preds = %if.then282
  %342 = load i8, i8* %uc, align 1, !tbaa !37
  %conv327 = zext i8 %342 to i32
  %cmp328 = icmp eq i32 %conv327, 23
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %while.end326
  br label %endhdr_2

if.end331:                                        ; preds = %while.end326
  %343 = load i8, i8* %uc, align 1, !tbaa !37
  %conv332 = zext i8 %343 to i32
  %cmp333 = icmp ne i32 %conv332, 49
  br i1 %cmp333, label %if.then335, label %if.end336

if.then335:                                       ; preds = %if.end331
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end336:                                        ; preds = %if.end331
  br label %sw.bb337

sw.bb337:                                         ; preds = %if.end, %if.end336
  %344 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state338 = getelementptr inbounds %struct.DState, %struct.DState* %344, i32 0, i32 1
  store i32 15, i32* %state338, align 8, !tbaa !9
  br label %while.cond339

while.cond339:                                    ; preds = %if.end387, %sw.bb337
  br label %while.body340

while.body340:                                    ; preds = %while.cond339
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive341 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 8
  %346 = load i32, i32* %bsLive341, align 4, !tbaa !35
  %cmp342 = icmp sge i32 %346, 8
  br i1 %cmp342, label %if.then344, label %if.end354

if.then344:                                       ; preds = %while.body340
  %347 = bitcast i32* %v345 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %347) #3
  %348 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff346 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 7
  %349 = load i32, i32* %bsBuff346, align 8, !tbaa !36
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive347 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 8
  %351 = load i32, i32* %bsLive347, align 4, !tbaa !35
  %sub348 = sub nsw i32 %351, 8
  %shr349 = lshr i32 %349, %sub348
  %and350 = and i32 %shr349, 255
  store i32 %and350, i32* %v345, align 4, !tbaa !34
  %352 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive351 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 8
  %353 = load i32, i32* %bsLive351, align 4, !tbaa !35
  %sub352 = sub nsw i32 %353, 8
  store i32 %sub352, i32* %bsLive351, align 4, !tbaa !35
  %354 = load i32, i32* %v345, align 4, !tbaa !34
  %conv353 = trunc i32 %354 to i8
  store i8 %conv353, i8* %uc, align 1, !tbaa !37
  %355 = bitcast i32* %v345 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %355) #3
  br label %while.end388

if.end354:                                        ; preds = %while.body340
  %356 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm355 = getelementptr inbounds %struct.DState, %struct.DState* %356, i32 0, i32 0
  %357 = load %struct.bz_stream*, %struct.bz_stream** %strm355, align 8, !tbaa !6
  %avail_in356 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %357, i32 0, i32 1
  %358 = load i32, i32* %avail_in356, align 8, !tbaa !38
  %cmp357 = icmp eq i32 %358, 0
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %if.end354
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end360:                                        ; preds = %if.end354
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff361 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 7
  %360 = load i32, i32* %bsBuff361, align 8, !tbaa !36
  %shl362 = shl i32 %360, 8
  %361 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm363 = getelementptr inbounds %struct.DState, %struct.DState* %361, i32 0, i32 0
  %362 = load %struct.bz_stream*, %struct.bz_stream** %strm363, align 8, !tbaa !6
  %next_in364 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %362, i32 0, i32 0
  %363 = load i8*, i8** %next_in364, align 8, !tbaa !40
  %364 = load i8, i8* %363, align 1, !tbaa !37
  %conv365 = zext i8 %364 to i32
  %or366 = or i32 %shl362, %conv365
  %365 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff367 = getelementptr inbounds %struct.DState, %struct.DState* %365, i32 0, i32 7
  store i32 %or366, i32* %bsBuff367, align 8, !tbaa !36
  %366 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive368 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 8
  %367 = load i32, i32* %bsLive368, align 4, !tbaa !35
  %add369 = add nsw i32 %367, 8
  store i32 %add369, i32* %bsLive368, align 4, !tbaa !35
  %368 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm370 = getelementptr inbounds %struct.DState, %struct.DState* %368, i32 0, i32 0
  %369 = load %struct.bz_stream*, %struct.bz_stream** %strm370, align 8, !tbaa !6
  %next_in371 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %369, i32 0, i32 0
  %370 = load i8*, i8** %next_in371, align 8, !tbaa !40
  %incdec.ptr372 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %incdec.ptr372, i8** %next_in371, align 8, !tbaa !40
  %371 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm373 = getelementptr inbounds %struct.DState, %struct.DState* %371, i32 0, i32 0
  %372 = load %struct.bz_stream*, %struct.bz_stream** %strm373, align 8, !tbaa !6
  %avail_in374 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %372, i32 0, i32 1
  %373 = load i32, i32* %avail_in374, align 8, !tbaa !38
  %dec375 = add i32 %373, -1
  store i32 %dec375, i32* %avail_in374, align 8, !tbaa !38
  %374 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm376 = getelementptr inbounds %struct.DState, %struct.DState* %374, i32 0, i32 0
  %375 = load %struct.bz_stream*, %struct.bz_stream** %strm376, align 8, !tbaa !6
  %total_in_lo32377 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %375, i32 0, i32 2
  %376 = load i32, i32* %total_in_lo32377, align 4, !tbaa !41
  %inc378 = add i32 %376, 1
  store i32 %inc378, i32* %total_in_lo32377, align 4, !tbaa !41
  %377 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm379 = getelementptr inbounds %struct.DState, %struct.DState* %377, i32 0, i32 0
  %378 = load %struct.bz_stream*, %struct.bz_stream** %strm379, align 8, !tbaa !6
  %total_in_lo32380 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %378, i32 0, i32 2
  %379 = load i32, i32* %total_in_lo32380, align 4, !tbaa !41
  %cmp381 = icmp eq i32 %379, 0
  br i1 %cmp381, label %if.then383, label %if.end387

if.then383:                                       ; preds = %if.end360
  %380 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm384 = getelementptr inbounds %struct.DState, %struct.DState* %380, i32 0, i32 0
  %381 = load %struct.bz_stream*, %struct.bz_stream** %strm384, align 8, !tbaa !6
  %total_in_hi32385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %381, i32 0, i32 3
  %382 = load i32, i32* %total_in_hi32385, align 8, !tbaa !42
  %inc386 = add i32 %382, 1
  store i32 %inc386, i32* %total_in_hi32385, align 8, !tbaa !42
  br label %if.end387

if.end387:                                        ; preds = %if.then383, %if.end360
  br label %while.cond339, !llvm.loop !56

while.end388:                                     ; preds = %if.then344
  %383 = load i8, i8* %uc, align 1, !tbaa !37
  %conv389 = zext i8 %383 to i32
  %cmp390 = icmp ne i32 %conv389, 65
  br i1 %cmp390, label %if.then392, label %if.end393

if.then392:                                       ; preds = %while.end388
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end393:                                        ; preds = %while.end388
  br label %sw.bb394

sw.bb394:                                         ; preds = %if.end, %if.end393
  %384 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state395 = getelementptr inbounds %struct.DState, %struct.DState* %384, i32 0, i32 1
  store i32 16, i32* %state395, align 8, !tbaa !9
  br label %while.cond396

while.cond396:                                    ; preds = %if.end444, %sw.bb394
  br label %while.body397

while.body397:                                    ; preds = %while.cond396
  %385 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive398 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 8
  %386 = load i32, i32* %bsLive398, align 4, !tbaa !35
  %cmp399 = icmp sge i32 %386, 8
  br i1 %cmp399, label %if.then401, label %if.end411

if.then401:                                       ; preds = %while.body397
  %387 = bitcast i32* %v402 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %387) #3
  %388 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff403 = getelementptr inbounds %struct.DState, %struct.DState* %388, i32 0, i32 7
  %389 = load i32, i32* %bsBuff403, align 8, !tbaa !36
  %390 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive404 = getelementptr inbounds %struct.DState, %struct.DState* %390, i32 0, i32 8
  %391 = load i32, i32* %bsLive404, align 4, !tbaa !35
  %sub405 = sub nsw i32 %391, 8
  %shr406 = lshr i32 %389, %sub405
  %and407 = and i32 %shr406, 255
  store i32 %and407, i32* %v402, align 4, !tbaa !34
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive408 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 8
  %393 = load i32, i32* %bsLive408, align 4, !tbaa !35
  %sub409 = sub nsw i32 %393, 8
  store i32 %sub409, i32* %bsLive408, align 4, !tbaa !35
  %394 = load i32, i32* %v402, align 4, !tbaa !34
  %conv410 = trunc i32 %394 to i8
  store i8 %conv410, i8* %uc, align 1, !tbaa !37
  %395 = bitcast i32* %v402 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %395) #3
  br label %while.end445

if.end411:                                        ; preds = %while.body397
  %396 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm412 = getelementptr inbounds %struct.DState, %struct.DState* %396, i32 0, i32 0
  %397 = load %struct.bz_stream*, %struct.bz_stream** %strm412, align 8, !tbaa !6
  %avail_in413 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %397, i32 0, i32 1
  %398 = load i32, i32* %avail_in413, align 8, !tbaa !38
  %cmp414 = icmp eq i32 %398, 0
  br i1 %cmp414, label %if.then416, label %if.end417

if.then416:                                       ; preds = %if.end411
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end417:                                        ; preds = %if.end411
  %399 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff418 = getelementptr inbounds %struct.DState, %struct.DState* %399, i32 0, i32 7
  %400 = load i32, i32* %bsBuff418, align 8, !tbaa !36
  %shl419 = shl i32 %400, 8
  %401 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm420 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 0
  %402 = load %struct.bz_stream*, %struct.bz_stream** %strm420, align 8, !tbaa !6
  %next_in421 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %402, i32 0, i32 0
  %403 = load i8*, i8** %next_in421, align 8, !tbaa !40
  %404 = load i8, i8* %403, align 1, !tbaa !37
  %conv422 = zext i8 %404 to i32
  %or423 = or i32 %shl419, %conv422
  %405 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff424 = getelementptr inbounds %struct.DState, %struct.DState* %405, i32 0, i32 7
  store i32 %or423, i32* %bsBuff424, align 8, !tbaa !36
  %406 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive425 = getelementptr inbounds %struct.DState, %struct.DState* %406, i32 0, i32 8
  %407 = load i32, i32* %bsLive425, align 4, !tbaa !35
  %add426 = add nsw i32 %407, 8
  store i32 %add426, i32* %bsLive425, align 4, !tbaa !35
  %408 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm427 = getelementptr inbounds %struct.DState, %struct.DState* %408, i32 0, i32 0
  %409 = load %struct.bz_stream*, %struct.bz_stream** %strm427, align 8, !tbaa !6
  %next_in428 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %409, i32 0, i32 0
  %410 = load i8*, i8** %next_in428, align 8, !tbaa !40
  %incdec.ptr429 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %incdec.ptr429, i8** %next_in428, align 8, !tbaa !40
  %411 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm430 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 0
  %412 = load %struct.bz_stream*, %struct.bz_stream** %strm430, align 8, !tbaa !6
  %avail_in431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %412, i32 0, i32 1
  %413 = load i32, i32* %avail_in431, align 8, !tbaa !38
  %dec432 = add i32 %413, -1
  store i32 %dec432, i32* %avail_in431, align 8, !tbaa !38
  %414 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm433 = getelementptr inbounds %struct.DState, %struct.DState* %414, i32 0, i32 0
  %415 = load %struct.bz_stream*, %struct.bz_stream** %strm433, align 8, !tbaa !6
  %total_in_lo32434 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %415, i32 0, i32 2
  %416 = load i32, i32* %total_in_lo32434, align 4, !tbaa !41
  %inc435 = add i32 %416, 1
  store i32 %inc435, i32* %total_in_lo32434, align 4, !tbaa !41
  %417 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm436 = getelementptr inbounds %struct.DState, %struct.DState* %417, i32 0, i32 0
  %418 = load %struct.bz_stream*, %struct.bz_stream** %strm436, align 8, !tbaa !6
  %total_in_lo32437 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %418, i32 0, i32 2
  %419 = load i32, i32* %total_in_lo32437, align 4, !tbaa !41
  %cmp438 = icmp eq i32 %419, 0
  br i1 %cmp438, label %if.then440, label %if.end444

if.then440:                                       ; preds = %if.end417
  %420 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm441 = getelementptr inbounds %struct.DState, %struct.DState* %420, i32 0, i32 0
  %421 = load %struct.bz_stream*, %struct.bz_stream** %strm441, align 8, !tbaa !6
  %total_in_hi32442 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %421, i32 0, i32 3
  %422 = load i32, i32* %total_in_hi32442, align 8, !tbaa !42
  %inc443 = add i32 %422, 1
  store i32 %inc443, i32* %total_in_hi32442, align 8, !tbaa !42
  br label %if.end444

if.end444:                                        ; preds = %if.then440, %if.end417
  br label %while.cond396, !llvm.loop !57

while.end445:                                     ; preds = %if.then401
  %423 = load i8, i8* %uc, align 1, !tbaa !37
  %conv446 = zext i8 %423 to i32
  %cmp447 = icmp ne i32 %conv446, 89
  br i1 %cmp447, label %if.then449, label %if.end450

if.then449:                                       ; preds = %while.end445
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end450:                                        ; preds = %while.end445
  br label %sw.bb451

sw.bb451:                                         ; preds = %if.end, %if.end450
  %424 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state452 = getelementptr inbounds %struct.DState, %struct.DState* %424, i32 0, i32 1
  store i32 17, i32* %state452, align 8, !tbaa !9
  br label %while.cond453

while.cond453:                                    ; preds = %if.end501, %sw.bb451
  br label %while.body454

while.body454:                                    ; preds = %while.cond453
  %425 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive455 = getelementptr inbounds %struct.DState, %struct.DState* %425, i32 0, i32 8
  %426 = load i32, i32* %bsLive455, align 4, !tbaa !35
  %cmp456 = icmp sge i32 %426, 8
  br i1 %cmp456, label %if.then458, label %if.end468

if.then458:                                       ; preds = %while.body454
  %427 = bitcast i32* %v459 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %427) #3
  %428 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff460 = getelementptr inbounds %struct.DState, %struct.DState* %428, i32 0, i32 7
  %429 = load i32, i32* %bsBuff460, align 8, !tbaa !36
  %430 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive461 = getelementptr inbounds %struct.DState, %struct.DState* %430, i32 0, i32 8
  %431 = load i32, i32* %bsLive461, align 4, !tbaa !35
  %sub462 = sub nsw i32 %431, 8
  %shr463 = lshr i32 %429, %sub462
  %and464 = and i32 %shr463, 255
  store i32 %and464, i32* %v459, align 4, !tbaa !34
  %432 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive465 = getelementptr inbounds %struct.DState, %struct.DState* %432, i32 0, i32 8
  %433 = load i32, i32* %bsLive465, align 4, !tbaa !35
  %sub466 = sub nsw i32 %433, 8
  store i32 %sub466, i32* %bsLive465, align 4, !tbaa !35
  %434 = load i32, i32* %v459, align 4, !tbaa !34
  %conv467 = trunc i32 %434 to i8
  store i8 %conv467, i8* %uc, align 1, !tbaa !37
  %435 = bitcast i32* %v459 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %435) #3
  br label %while.end502

if.end468:                                        ; preds = %while.body454
  %436 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm469 = getelementptr inbounds %struct.DState, %struct.DState* %436, i32 0, i32 0
  %437 = load %struct.bz_stream*, %struct.bz_stream** %strm469, align 8, !tbaa !6
  %avail_in470 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %437, i32 0, i32 1
  %438 = load i32, i32* %avail_in470, align 8, !tbaa !38
  %cmp471 = icmp eq i32 %438, 0
  br i1 %cmp471, label %if.then473, label %if.end474

if.then473:                                       ; preds = %if.end468
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end474:                                        ; preds = %if.end468
  %439 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff475 = getelementptr inbounds %struct.DState, %struct.DState* %439, i32 0, i32 7
  %440 = load i32, i32* %bsBuff475, align 8, !tbaa !36
  %shl476 = shl i32 %440, 8
  %441 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm477 = getelementptr inbounds %struct.DState, %struct.DState* %441, i32 0, i32 0
  %442 = load %struct.bz_stream*, %struct.bz_stream** %strm477, align 8, !tbaa !6
  %next_in478 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %442, i32 0, i32 0
  %443 = load i8*, i8** %next_in478, align 8, !tbaa !40
  %444 = load i8, i8* %443, align 1, !tbaa !37
  %conv479 = zext i8 %444 to i32
  %or480 = or i32 %shl476, %conv479
  %445 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff481 = getelementptr inbounds %struct.DState, %struct.DState* %445, i32 0, i32 7
  store i32 %or480, i32* %bsBuff481, align 8, !tbaa !36
  %446 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive482 = getelementptr inbounds %struct.DState, %struct.DState* %446, i32 0, i32 8
  %447 = load i32, i32* %bsLive482, align 4, !tbaa !35
  %add483 = add nsw i32 %447, 8
  store i32 %add483, i32* %bsLive482, align 4, !tbaa !35
  %448 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm484 = getelementptr inbounds %struct.DState, %struct.DState* %448, i32 0, i32 0
  %449 = load %struct.bz_stream*, %struct.bz_stream** %strm484, align 8, !tbaa !6
  %next_in485 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %449, i32 0, i32 0
  %450 = load i8*, i8** %next_in485, align 8, !tbaa !40
  %incdec.ptr486 = getelementptr inbounds i8, i8* %450, i32 1
  store i8* %incdec.ptr486, i8** %next_in485, align 8, !tbaa !40
  %451 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm487 = getelementptr inbounds %struct.DState, %struct.DState* %451, i32 0, i32 0
  %452 = load %struct.bz_stream*, %struct.bz_stream** %strm487, align 8, !tbaa !6
  %avail_in488 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %452, i32 0, i32 1
  %453 = load i32, i32* %avail_in488, align 8, !tbaa !38
  %dec489 = add i32 %453, -1
  store i32 %dec489, i32* %avail_in488, align 8, !tbaa !38
  %454 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm490 = getelementptr inbounds %struct.DState, %struct.DState* %454, i32 0, i32 0
  %455 = load %struct.bz_stream*, %struct.bz_stream** %strm490, align 8, !tbaa !6
  %total_in_lo32491 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %455, i32 0, i32 2
  %456 = load i32, i32* %total_in_lo32491, align 4, !tbaa !41
  %inc492 = add i32 %456, 1
  store i32 %inc492, i32* %total_in_lo32491, align 4, !tbaa !41
  %457 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm493 = getelementptr inbounds %struct.DState, %struct.DState* %457, i32 0, i32 0
  %458 = load %struct.bz_stream*, %struct.bz_stream** %strm493, align 8, !tbaa !6
  %total_in_lo32494 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %458, i32 0, i32 2
  %459 = load i32, i32* %total_in_lo32494, align 4, !tbaa !41
  %cmp495 = icmp eq i32 %459, 0
  br i1 %cmp495, label %if.then497, label %if.end501

if.then497:                                       ; preds = %if.end474
  %460 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm498 = getelementptr inbounds %struct.DState, %struct.DState* %460, i32 0, i32 0
  %461 = load %struct.bz_stream*, %struct.bz_stream** %strm498, align 8, !tbaa !6
  %total_in_hi32499 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %461, i32 0, i32 3
  %462 = load i32, i32* %total_in_hi32499, align 8, !tbaa !42
  %inc500 = add i32 %462, 1
  store i32 %inc500, i32* %total_in_hi32499, align 8, !tbaa !42
  br label %if.end501

if.end501:                                        ; preds = %if.then497, %if.end474
  br label %while.cond453, !llvm.loop !58

while.end502:                                     ; preds = %if.then458
  %463 = load i8, i8* %uc, align 1, !tbaa !37
  %conv503 = zext i8 %463 to i32
  %cmp504 = icmp ne i32 %conv503, 38
  br i1 %cmp504, label %if.then506, label %if.end507

if.then506:                                       ; preds = %while.end502
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end507:                                        ; preds = %while.end502
  br label %sw.bb508

sw.bb508:                                         ; preds = %if.end, %if.end507
  %464 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state509 = getelementptr inbounds %struct.DState, %struct.DState* %464, i32 0, i32 1
  store i32 18, i32* %state509, align 8, !tbaa !9
  br label %while.cond510

while.cond510:                                    ; preds = %if.end558, %sw.bb508
  br label %while.body511

while.body511:                                    ; preds = %while.cond510
  %465 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive512 = getelementptr inbounds %struct.DState, %struct.DState* %465, i32 0, i32 8
  %466 = load i32, i32* %bsLive512, align 4, !tbaa !35
  %cmp513 = icmp sge i32 %466, 8
  br i1 %cmp513, label %if.then515, label %if.end525

if.then515:                                       ; preds = %while.body511
  %467 = bitcast i32* %v516 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %467) #3
  %468 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff517 = getelementptr inbounds %struct.DState, %struct.DState* %468, i32 0, i32 7
  %469 = load i32, i32* %bsBuff517, align 8, !tbaa !36
  %470 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive518 = getelementptr inbounds %struct.DState, %struct.DState* %470, i32 0, i32 8
  %471 = load i32, i32* %bsLive518, align 4, !tbaa !35
  %sub519 = sub nsw i32 %471, 8
  %shr520 = lshr i32 %469, %sub519
  %and521 = and i32 %shr520, 255
  store i32 %and521, i32* %v516, align 4, !tbaa !34
  %472 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive522 = getelementptr inbounds %struct.DState, %struct.DState* %472, i32 0, i32 8
  %473 = load i32, i32* %bsLive522, align 4, !tbaa !35
  %sub523 = sub nsw i32 %473, 8
  store i32 %sub523, i32* %bsLive522, align 4, !tbaa !35
  %474 = load i32, i32* %v516, align 4, !tbaa !34
  %conv524 = trunc i32 %474 to i8
  store i8 %conv524, i8* %uc, align 1, !tbaa !37
  %475 = bitcast i32* %v516 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %475) #3
  br label %while.end559

if.end525:                                        ; preds = %while.body511
  %476 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm526 = getelementptr inbounds %struct.DState, %struct.DState* %476, i32 0, i32 0
  %477 = load %struct.bz_stream*, %struct.bz_stream** %strm526, align 8, !tbaa !6
  %avail_in527 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %477, i32 0, i32 1
  %478 = load i32, i32* %avail_in527, align 8, !tbaa !38
  %cmp528 = icmp eq i32 %478, 0
  br i1 %cmp528, label %if.then530, label %if.end531

if.then530:                                       ; preds = %if.end525
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end531:                                        ; preds = %if.end525
  %479 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff532 = getelementptr inbounds %struct.DState, %struct.DState* %479, i32 0, i32 7
  %480 = load i32, i32* %bsBuff532, align 8, !tbaa !36
  %shl533 = shl i32 %480, 8
  %481 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm534 = getelementptr inbounds %struct.DState, %struct.DState* %481, i32 0, i32 0
  %482 = load %struct.bz_stream*, %struct.bz_stream** %strm534, align 8, !tbaa !6
  %next_in535 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %482, i32 0, i32 0
  %483 = load i8*, i8** %next_in535, align 8, !tbaa !40
  %484 = load i8, i8* %483, align 1, !tbaa !37
  %conv536 = zext i8 %484 to i32
  %or537 = or i32 %shl533, %conv536
  %485 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff538 = getelementptr inbounds %struct.DState, %struct.DState* %485, i32 0, i32 7
  store i32 %or537, i32* %bsBuff538, align 8, !tbaa !36
  %486 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive539 = getelementptr inbounds %struct.DState, %struct.DState* %486, i32 0, i32 8
  %487 = load i32, i32* %bsLive539, align 4, !tbaa !35
  %add540 = add nsw i32 %487, 8
  store i32 %add540, i32* %bsLive539, align 4, !tbaa !35
  %488 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm541 = getelementptr inbounds %struct.DState, %struct.DState* %488, i32 0, i32 0
  %489 = load %struct.bz_stream*, %struct.bz_stream** %strm541, align 8, !tbaa !6
  %next_in542 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %489, i32 0, i32 0
  %490 = load i8*, i8** %next_in542, align 8, !tbaa !40
  %incdec.ptr543 = getelementptr inbounds i8, i8* %490, i32 1
  store i8* %incdec.ptr543, i8** %next_in542, align 8, !tbaa !40
  %491 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm544 = getelementptr inbounds %struct.DState, %struct.DState* %491, i32 0, i32 0
  %492 = load %struct.bz_stream*, %struct.bz_stream** %strm544, align 8, !tbaa !6
  %avail_in545 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %492, i32 0, i32 1
  %493 = load i32, i32* %avail_in545, align 8, !tbaa !38
  %dec546 = add i32 %493, -1
  store i32 %dec546, i32* %avail_in545, align 8, !tbaa !38
  %494 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm547 = getelementptr inbounds %struct.DState, %struct.DState* %494, i32 0, i32 0
  %495 = load %struct.bz_stream*, %struct.bz_stream** %strm547, align 8, !tbaa !6
  %total_in_lo32548 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %495, i32 0, i32 2
  %496 = load i32, i32* %total_in_lo32548, align 4, !tbaa !41
  %inc549 = add i32 %496, 1
  store i32 %inc549, i32* %total_in_lo32548, align 4, !tbaa !41
  %497 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm550 = getelementptr inbounds %struct.DState, %struct.DState* %497, i32 0, i32 0
  %498 = load %struct.bz_stream*, %struct.bz_stream** %strm550, align 8, !tbaa !6
  %total_in_lo32551 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %498, i32 0, i32 2
  %499 = load i32, i32* %total_in_lo32551, align 4, !tbaa !41
  %cmp552 = icmp eq i32 %499, 0
  br i1 %cmp552, label %if.then554, label %if.end558

if.then554:                                       ; preds = %if.end531
  %500 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm555 = getelementptr inbounds %struct.DState, %struct.DState* %500, i32 0, i32 0
  %501 = load %struct.bz_stream*, %struct.bz_stream** %strm555, align 8, !tbaa !6
  %total_in_hi32556 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %501, i32 0, i32 3
  %502 = load i32, i32* %total_in_hi32556, align 8, !tbaa !42
  %inc557 = add i32 %502, 1
  store i32 %inc557, i32* %total_in_hi32556, align 8, !tbaa !42
  br label %if.end558

if.end558:                                        ; preds = %if.then554, %if.end531
  br label %while.cond510, !llvm.loop !59

while.end559:                                     ; preds = %if.then515
  %503 = load i8, i8* %uc, align 1, !tbaa !37
  %conv560 = zext i8 %503 to i32
  %cmp561 = icmp ne i32 %conv560, 83
  br i1 %cmp561, label %if.then563, label %if.end564

if.then563:                                       ; preds = %while.end559
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end564:                                        ; preds = %while.end559
  br label %sw.bb565

sw.bb565:                                         ; preds = %if.end, %if.end564
  %504 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state566 = getelementptr inbounds %struct.DState, %struct.DState* %504, i32 0, i32 1
  store i32 19, i32* %state566, align 8, !tbaa !9
  br label %while.cond567

while.cond567:                                    ; preds = %if.end615, %sw.bb565
  br label %while.body568

while.body568:                                    ; preds = %while.cond567
  %505 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive569 = getelementptr inbounds %struct.DState, %struct.DState* %505, i32 0, i32 8
  %506 = load i32, i32* %bsLive569, align 4, !tbaa !35
  %cmp570 = icmp sge i32 %506, 8
  br i1 %cmp570, label %if.then572, label %if.end582

if.then572:                                       ; preds = %while.body568
  %507 = bitcast i32* %v573 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %507) #3
  %508 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff574 = getelementptr inbounds %struct.DState, %struct.DState* %508, i32 0, i32 7
  %509 = load i32, i32* %bsBuff574, align 8, !tbaa !36
  %510 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive575 = getelementptr inbounds %struct.DState, %struct.DState* %510, i32 0, i32 8
  %511 = load i32, i32* %bsLive575, align 4, !tbaa !35
  %sub576 = sub nsw i32 %511, 8
  %shr577 = lshr i32 %509, %sub576
  %and578 = and i32 %shr577, 255
  store i32 %and578, i32* %v573, align 4, !tbaa !34
  %512 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive579 = getelementptr inbounds %struct.DState, %struct.DState* %512, i32 0, i32 8
  %513 = load i32, i32* %bsLive579, align 4, !tbaa !35
  %sub580 = sub nsw i32 %513, 8
  store i32 %sub580, i32* %bsLive579, align 4, !tbaa !35
  %514 = load i32, i32* %v573, align 4, !tbaa !34
  %conv581 = trunc i32 %514 to i8
  store i8 %conv581, i8* %uc, align 1, !tbaa !37
  %515 = bitcast i32* %v573 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %515) #3
  br label %while.end616

if.end582:                                        ; preds = %while.body568
  %516 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm583 = getelementptr inbounds %struct.DState, %struct.DState* %516, i32 0, i32 0
  %517 = load %struct.bz_stream*, %struct.bz_stream** %strm583, align 8, !tbaa !6
  %avail_in584 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %517, i32 0, i32 1
  %518 = load i32, i32* %avail_in584, align 8, !tbaa !38
  %cmp585 = icmp eq i32 %518, 0
  br i1 %cmp585, label %if.then587, label %if.end588

if.then587:                                       ; preds = %if.end582
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end588:                                        ; preds = %if.end582
  %519 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff589 = getelementptr inbounds %struct.DState, %struct.DState* %519, i32 0, i32 7
  %520 = load i32, i32* %bsBuff589, align 8, !tbaa !36
  %shl590 = shl i32 %520, 8
  %521 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm591 = getelementptr inbounds %struct.DState, %struct.DState* %521, i32 0, i32 0
  %522 = load %struct.bz_stream*, %struct.bz_stream** %strm591, align 8, !tbaa !6
  %next_in592 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %522, i32 0, i32 0
  %523 = load i8*, i8** %next_in592, align 8, !tbaa !40
  %524 = load i8, i8* %523, align 1, !tbaa !37
  %conv593 = zext i8 %524 to i32
  %or594 = or i32 %shl590, %conv593
  %525 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff595 = getelementptr inbounds %struct.DState, %struct.DState* %525, i32 0, i32 7
  store i32 %or594, i32* %bsBuff595, align 8, !tbaa !36
  %526 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive596 = getelementptr inbounds %struct.DState, %struct.DState* %526, i32 0, i32 8
  %527 = load i32, i32* %bsLive596, align 4, !tbaa !35
  %add597 = add nsw i32 %527, 8
  store i32 %add597, i32* %bsLive596, align 4, !tbaa !35
  %528 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm598 = getelementptr inbounds %struct.DState, %struct.DState* %528, i32 0, i32 0
  %529 = load %struct.bz_stream*, %struct.bz_stream** %strm598, align 8, !tbaa !6
  %next_in599 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %529, i32 0, i32 0
  %530 = load i8*, i8** %next_in599, align 8, !tbaa !40
  %incdec.ptr600 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %incdec.ptr600, i8** %next_in599, align 8, !tbaa !40
  %531 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm601 = getelementptr inbounds %struct.DState, %struct.DState* %531, i32 0, i32 0
  %532 = load %struct.bz_stream*, %struct.bz_stream** %strm601, align 8, !tbaa !6
  %avail_in602 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %532, i32 0, i32 1
  %533 = load i32, i32* %avail_in602, align 8, !tbaa !38
  %dec603 = add i32 %533, -1
  store i32 %dec603, i32* %avail_in602, align 8, !tbaa !38
  %534 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm604 = getelementptr inbounds %struct.DState, %struct.DState* %534, i32 0, i32 0
  %535 = load %struct.bz_stream*, %struct.bz_stream** %strm604, align 8, !tbaa !6
  %total_in_lo32605 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %535, i32 0, i32 2
  %536 = load i32, i32* %total_in_lo32605, align 4, !tbaa !41
  %inc606 = add i32 %536, 1
  store i32 %inc606, i32* %total_in_lo32605, align 4, !tbaa !41
  %537 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm607 = getelementptr inbounds %struct.DState, %struct.DState* %537, i32 0, i32 0
  %538 = load %struct.bz_stream*, %struct.bz_stream** %strm607, align 8, !tbaa !6
  %total_in_lo32608 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %538, i32 0, i32 2
  %539 = load i32, i32* %total_in_lo32608, align 4, !tbaa !41
  %cmp609 = icmp eq i32 %539, 0
  br i1 %cmp609, label %if.then611, label %if.end615

if.then611:                                       ; preds = %if.end588
  %540 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm612 = getelementptr inbounds %struct.DState, %struct.DState* %540, i32 0, i32 0
  %541 = load %struct.bz_stream*, %struct.bz_stream** %strm612, align 8, !tbaa !6
  %total_in_hi32613 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %541, i32 0, i32 3
  %542 = load i32, i32* %total_in_hi32613, align 8, !tbaa !42
  %inc614 = add i32 %542, 1
  store i32 %inc614, i32* %total_in_hi32613, align 8, !tbaa !42
  br label %if.end615

if.end615:                                        ; preds = %if.then611, %if.end588
  br label %while.cond567, !llvm.loop !60

while.end616:                                     ; preds = %if.then572
  %543 = load i8, i8* %uc, align 1, !tbaa !37
  %conv617 = zext i8 %543 to i32
  %cmp618 = icmp ne i32 %conv617, 89
  br i1 %cmp618, label %if.then620, label %if.end621

if.then620:                                       ; preds = %while.end616
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end621:                                        ; preds = %while.end616
  %544 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %544, i32 0, i32 11
  %545 = load i32, i32* %currBlockNo, align 8, !tbaa !61
  %inc622 = add nsw i32 %545, 1
  store i32 %inc622, i32* %currBlockNo, align 8, !tbaa !61
  %546 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 12
  %547 = load i32, i32* %verbosity, align 4, !tbaa !62
  %cmp623 = icmp sge i32 %547, 2
  br i1 %cmp623, label %if.then625, label %if.end628

if.then625:                                       ; preds = %if.end621
  %548 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %549 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %currBlockNo626 = getelementptr inbounds %struct.DState, %struct.DState* %549, i32 0, i32 11
  %550 = load i32, i32* %currBlockNo626, align 8, !tbaa !61
  %call627 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %548, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %550)
  br label %if.end628

if.end628:                                        ; preds = %if.then625, %if.end621
  %551 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %551, i32 0, i32 23
  store i32 0, i32* %storedBlockCRC, align 8, !tbaa !63
  br label %sw.bb629

sw.bb629:                                         ; preds = %if.end, %if.end628
  %552 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state630 = getelementptr inbounds %struct.DState, %struct.DState* %552, i32 0, i32 1
  store i32 20, i32* %state630, align 8, !tbaa !9
  br label %while.cond631

while.cond631:                                    ; preds = %if.end679, %sw.bb629
  br label %while.body632

while.body632:                                    ; preds = %while.cond631
  %553 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive633 = getelementptr inbounds %struct.DState, %struct.DState* %553, i32 0, i32 8
  %554 = load i32, i32* %bsLive633, align 4, !tbaa !35
  %cmp634 = icmp sge i32 %554, 8
  br i1 %cmp634, label %if.then636, label %if.end646

if.then636:                                       ; preds = %while.body632
  %555 = bitcast i32* %v637 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %555) #3
  %556 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff638 = getelementptr inbounds %struct.DState, %struct.DState* %556, i32 0, i32 7
  %557 = load i32, i32* %bsBuff638, align 8, !tbaa !36
  %558 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive639 = getelementptr inbounds %struct.DState, %struct.DState* %558, i32 0, i32 8
  %559 = load i32, i32* %bsLive639, align 4, !tbaa !35
  %sub640 = sub nsw i32 %559, 8
  %shr641 = lshr i32 %557, %sub640
  %and642 = and i32 %shr641, 255
  store i32 %and642, i32* %v637, align 4, !tbaa !34
  %560 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive643 = getelementptr inbounds %struct.DState, %struct.DState* %560, i32 0, i32 8
  %561 = load i32, i32* %bsLive643, align 4, !tbaa !35
  %sub644 = sub nsw i32 %561, 8
  store i32 %sub644, i32* %bsLive643, align 4, !tbaa !35
  %562 = load i32, i32* %v637, align 4, !tbaa !34
  %conv645 = trunc i32 %562 to i8
  store i8 %conv645, i8* %uc, align 1, !tbaa !37
  %563 = bitcast i32* %v637 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %563) #3
  br label %while.end680

if.end646:                                        ; preds = %while.body632
  %564 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm647 = getelementptr inbounds %struct.DState, %struct.DState* %564, i32 0, i32 0
  %565 = load %struct.bz_stream*, %struct.bz_stream** %strm647, align 8, !tbaa !6
  %avail_in648 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %565, i32 0, i32 1
  %566 = load i32, i32* %avail_in648, align 8, !tbaa !38
  %cmp649 = icmp eq i32 %566, 0
  br i1 %cmp649, label %if.then651, label %if.end652

if.then651:                                       ; preds = %if.end646
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end652:                                        ; preds = %if.end646
  %567 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff653 = getelementptr inbounds %struct.DState, %struct.DState* %567, i32 0, i32 7
  %568 = load i32, i32* %bsBuff653, align 8, !tbaa !36
  %shl654 = shl i32 %568, 8
  %569 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm655 = getelementptr inbounds %struct.DState, %struct.DState* %569, i32 0, i32 0
  %570 = load %struct.bz_stream*, %struct.bz_stream** %strm655, align 8, !tbaa !6
  %next_in656 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %570, i32 0, i32 0
  %571 = load i8*, i8** %next_in656, align 8, !tbaa !40
  %572 = load i8, i8* %571, align 1, !tbaa !37
  %conv657 = zext i8 %572 to i32
  %or658 = or i32 %shl654, %conv657
  %573 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff659 = getelementptr inbounds %struct.DState, %struct.DState* %573, i32 0, i32 7
  store i32 %or658, i32* %bsBuff659, align 8, !tbaa !36
  %574 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive660 = getelementptr inbounds %struct.DState, %struct.DState* %574, i32 0, i32 8
  %575 = load i32, i32* %bsLive660, align 4, !tbaa !35
  %add661 = add nsw i32 %575, 8
  store i32 %add661, i32* %bsLive660, align 4, !tbaa !35
  %576 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm662 = getelementptr inbounds %struct.DState, %struct.DState* %576, i32 0, i32 0
  %577 = load %struct.bz_stream*, %struct.bz_stream** %strm662, align 8, !tbaa !6
  %next_in663 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %577, i32 0, i32 0
  %578 = load i8*, i8** %next_in663, align 8, !tbaa !40
  %incdec.ptr664 = getelementptr inbounds i8, i8* %578, i32 1
  store i8* %incdec.ptr664, i8** %next_in663, align 8, !tbaa !40
  %579 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm665 = getelementptr inbounds %struct.DState, %struct.DState* %579, i32 0, i32 0
  %580 = load %struct.bz_stream*, %struct.bz_stream** %strm665, align 8, !tbaa !6
  %avail_in666 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %580, i32 0, i32 1
  %581 = load i32, i32* %avail_in666, align 8, !tbaa !38
  %dec667 = add i32 %581, -1
  store i32 %dec667, i32* %avail_in666, align 8, !tbaa !38
  %582 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm668 = getelementptr inbounds %struct.DState, %struct.DState* %582, i32 0, i32 0
  %583 = load %struct.bz_stream*, %struct.bz_stream** %strm668, align 8, !tbaa !6
  %total_in_lo32669 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %583, i32 0, i32 2
  %584 = load i32, i32* %total_in_lo32669, align 4, !tbaa !41
  %inc670 = add i32 %584, 1
  store i32 %inc670, i32* %total_in_lo32669, align 4, !tbaa !41
  %585 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm671 = getelementptr inbounds %struct.DState, %struct.DState* %585, i32 0, i32 0
  %586 = load %struct.bz_stream*, %struct.bz_stream** %strm671, align 8, !tbaa !6
  %total_in_lo32672 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %586, i32 0, i32 2
  %587 = load i32, i32* %total_in_lo32672, align 4, !tbaa !41
  %cmp673 = icmp eq i32 %587, 0
  br i1 %cmp673, label %if.then675, label %if.end679

if.then675:                                       ; preds = %if.end652
  %588 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm676 = getelementptr inbounds %struct.DState, %struct.DState* %588, i32 0, i32 0
  %589 = load %struct.bz_stream*, %struct.bz_stream** %strm676, align 8, !tbaa !6
  %total_in_hi32677 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %589, i32 0, i32 3
  %590 = load i32, i32* %total_in_hi32677, align 8, !tbaa !42
  %inc678 = add i32 %590, 1
  store i32 %inc678, i32* %total_in_hi32677, align 8, !tbaa !42
  br label %if.end679

if.end679:                                        ; preds = %if.then675, %if.end652
  br label %while.cond631, !llvm.loop !64

while.end680:                                     ; preds = %if.then636
  %591 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC681 = getelementptr inbounds %struct.DState, %struct.DState* %591, i32 0, i32 23
  %592 = load i32, i32* %storedBlockCRC681, align 8, !tbaa !63
  %shl682 = shl i32 %592, 8
  %593 = load i8, i8* %uc, align 1, !tbaa !37
  %conv683 = zext i8 %593 to i32
  %or684 = or i32 %shl682, %conv683
  %594 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC685 = getelementptr inbounds %struct.DState, %struct.DState* %594, i32 0, i32 23
  store i32 %or684, i32* %storedBlockCRC685, align 8, !tbaa !63
  br label %sw.bb686

sw.bb686:                                         ; preds = %if.end, %while.end680
  %595 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state687 = getelementptr inbounds %struct.DState, %struct.DState* %595, i32 0, i32 1
  store i32 21, i32* %state687, align 8, !tbaa !9
  br label %while.cond688

while.cond688:                                    ; preds = %if.end736, %sw.bb686
  br label %while.body689

while.body689:                                    ; preds = %while.cond688
  %596 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive690 = getelementptr inbounds %struct.DState, %struct.DState* %596, i32 0, i32 8
  %597 = load i32, i32* %bsLive690, align 4, !tbaa !35
  %cmp691 = icmp sge i32 %597, 8
  br i1 %cmp691, label %if.then693, label %if.end703

if.then693:                                       ; preds = %while.body689
  %598 = bitcast i32* %v694 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %598) #3
  %599 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff695 = getelementptr inbounds %struct.DState, %struct.DState* %599, i32 0, i32 7
  %600 = load i32, i32* %bsBuff695, align 8, !tbaa !36
  %601 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive696 = getelementptr inbounds %struct.DState, %struct.DState* %601, i32 0, i32 8
  %602 = load i32, i32* %bsLive696, align 4, !tbaa !35
  %sub697 = sub nsw i32 %602, 8
  %shr698 = lshr i32 %600, %sub697
  %and699 = and i32 %shr698, 255
  store i32 %and699, i32* %v694, align 4, !tbaa !34
  %603 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive700 = getelementptr inbounds %struct.DState, %struct.DState* %603, i32 0, i32 8
  %604 = load i32, i32* %bsLive700, align 4, !tbaa !35
  %sub701 = sub nsw i32 %604, 8
  store i32 %sub701, i32* %bsLive700, align 4, !tbaa !35
  %605 = load i32, i32* %v694, align 4, !tbaa !34
  %conv702 = trunc i32 %605 to i8
  store i8 %conv702, i8* %uc, align 1, !tbaa !37
  %606 = bitcast i32* %v694 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %606) #3
  br label %while.end737

if.end703:                                        ; preds = %while.body689
  %607 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm704 = getelementptr inbounds %struct.DState, %struct.DState* %607, i32 0, i32 0
  %608 = load %struct.bz_stream*, %struct.bz_stream** %strm704, align 8, !tbaa !6
  %avail_in705 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %608, i32 0, i32 1
  %609 = load i32, i32* %avail_in705, align 8, !tbaa !38
  %cmp706 = icmp eq i32 %609, 0
  br i1 %cmp706, label %if.then708, label %if.end709

if.then708:                                       ; preds = %if.end703
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end709:                                        ; preds = %if.end703
  %610 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff710 = getelementptr inbounds %struct.DState, %struct.DState* %610, i32 0, i32 7
  %611 = load i32, i32* %bsBuff710, align 8, !tbaa !36
  %shl711 = shl i32 %611, 8
  %612 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm712 = getelementptr inbounds %struct.DState, %struct.DState* %612, i32 0, i32 0
  %613 = load %struct.bz_stream*, %struct.bz_stream** %strm712, align 8, !tbaa !6
  %next_in713 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %613, i32 0, i32 0
  %614 = load i8*, i8** %next_in713, align 8, !tbaa !40
  %615 = load i8, i8* %614, align 1, !tbaa !37
  %conv714 = zext i8 %615 to i32
  %or715 = or i32 %shl711, %conv714
  %616 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff716 = getelementptr inbounds %struct.DState, %struct.DState* %616, i32 0, i32 7
  store i32 %or715, i32* %bsBuff716, align 8, !tbaa !36
  %617 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive717 = getelementptr inbounds %struct.DState, %struct.DState* %617, i32 0, i32 8
  %618 = load i32, i32* %bsLive717, align 4, !tbaa !35
  %add718 = add nsw i32 %618, 8
  store i32 %add718, i32* %bsLive717, align 4, !tbaa !35
  %619 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm719 = getelementptr inbounds %struct.DState, %struct.DState* %619, i32 0, i32 0
  %620 = load %struct.bz_stream*, %struct.bz_stream** %strm719, align 8, !tbaa !6
  %next_in720 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %620, i32 0, i32 0
  %621 = load i8*, i8** %next_in720, align 8, !tbaa !40
  %incdec.ptr721 = getelementptr inbounds i8, i8* %621, i32 1
  store i8* %incdec.ptr721, i8** %next_in720, align 8, !tbaa !40
  %622 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm722 = getelementptr inbounds %struct.DState, %struct.DState* %622, i32 0, i32 0
  %623 = load %struct.bz_stream*, %struct.bz_stream** %strm722, align 8, !tbaa !6
  %avail_in723 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %623, i32 0, i32 1
  %624 = load i32, i32* %avail_in723, align 8, !tbaa !38
  %dec724 = add i32 %624, -1
  store i32 %dec724, i32* %avail_in723, align 8, !tbaa !38
  %625 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm725 = getelementptr inbounds %struct.DState, %struct.DState* %625, i32 0, i32 0
  %626 = load %struct.bz_stream*, %struct.bz_stream** %strm725, align 8, !tbaa !6
  %total_in_lo32726 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %626, i32 0, i32 2
  %627 = load i32, i32* %total_in_lo32726, align 4, !tbaa !41
  %inc727 = add i32 %627, 1
  store i32 %inc727, i32* %total_in_lo32726, align 4, !tbaa !41
  %628 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm728 = getelementptr inbounds %struct.DState, %struct.DState* %628, i32 0, i32 0
  %629 = load %struct.bz_stream*, %struct.bz_stream** %strm728, align 8, !tbaa !6
  %total_in_lo32729 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %629, i32 0, i32 2
  %630 = load i32, i32* %total_in_lo32729, align 4, !tbaa !41
  %cmp730 = icmp eq i32 %630, 0
  br i1 %cmp730, label %if.then732, label %if.end736

if.then732:                                       ; preds = %if.end709
  %631 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm733 = getelementptr inbounds %struct.DState, %struct.DState* %631, i32 0, i32 0
  %632 = load %struct.bz_stream*, %struct.bz_stream** %strm733, align 8, !tbaa !6
  %total_in_hi32734 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %632, i32 0, i32 3
  %633 = load i32, i32* %total_in_hi32734, align 8, !tbaa !42
  %inc735 = add i32 %633, 1
  store i32 %inc735, i32* %total_in_hi32734, align 8, !tbaa !42
  br label %if.end736

if.end736:                                        ; preds = %if.then732, %if.end709
  br label %while.cond688, !llvm.loop !65

while.end737:                                     ; preds = %if.then693
  %634 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC738 = getelementptr inbounds %struct.DState, %struct.DState* %634, i32 0, i32 23
  %635 = load i32, i32* %storedBlockCRC738, align 8, !tbaa !63
  %shl739 = shl i32 %635, 8
  %636 = load i8, i8* %uc, align 1, !tbaa !37
  %conv740 = zext i8 %636 to i32
  %or741 = or i32 %shl739, %conv740
  %637 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC742 = getelementptr inbounds %struct.DState, %struct.DState* %637, i32 0, i32 23
  store i32 %or741, i32* %storedBlockCRC742, align 8, !tbaa !63
  br label %sw.bb743

sw.bb743:                                         ; preds = %if.end, %while.end737
  %638 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state744 = getelementptr inbounds %struct.DState, %struct.DState* %638, i32 0, i32 1
  store i32 22, i32* %state744, align 8, !tbaa !9
  br label %while.cond745

while.cond745:                                    ; preds = %if.end793, %sw.bb743
  br label %while.body746

while.body746:                                    ; preds = %while.cond745
  %639 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive747 = getelementptr inbounds %struct.DState, %struct.DState* %639, i32 0, i32 8
  %640 = load i32, i32* %bsLive747, align 4, !tbaa !35
  %cmp748 = icmp sge i32 %640, 8
  br i1 %cmp748, label %if.then750, label %if.end760

if.then750:                                       ; preds = %while.body746
  %641 = bitcast i32* %v751 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %641) #3
  %642 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff752 = getelementptr inbounds %struct.DState, %struct.DState* %642, i32 0, i32 7
  %643 = load i32, i32* %bsBuff752, align 8, !tbaa !36
  %644 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive753 = getelementptr inbounds %struct.DState, %struct.DState* %644, i32 0, i32 8
  %645 = load i32, i32* %bsLive753, align 4, !tbaa !35
  %sub754 = sub nsw i32 %645, 8
  %shr755 = lshr i32 %643, %sub754
  %and756 = and i32 %shr755, 255
  store i32 %and756, i32* %v751, align 4, !tbaa !34
  %646 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive757 = getelementptr inbounds %struct.DState, %struct.DState* %646, i32 0, i32 8
  %647 = load i32, i32* %bsLive757, align 4, !tbaa !35
  %sub758 = sub nsw i32 %647, 8
  store i32 %sub758, i32* %bsLive757, align 4, !tbaa !35
  %648 = load i32, i32* %v751, align 4, !tbaa !34
  %conv759 = trunc i32 %648 to i8
  store i8 %conv759, i8* %uc, align 1, !tbaa !37
  %649 = bitcast i32* %v751 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %649) #3
  br label %while.end794

if.end760:                                        ; preds = %while.body746
  %650 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm761 = getelementptr inbounds %struct.DState, %struct.DState* %650, i32 0, i32 0
  %651 = load %struct.bz_stream*, %struct.bz_stream** %strm761, align 8, !tbaa !6
  %avail_in762 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %651, i32 0, i32 1
  %652 = load i32, i32* %avail_in762, align 8, !tbaa !38
  %cmp763 = icmp eq i32 %652, 0
  br i1 %cmp763, label %if.then765, label %if.end766

if.then765:                                       ; preds = %if.end760
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end766:                                        ; preds = %if.end760
  %653 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff767 = getelementptr inbounds %struct.DState, %struct.DState* %653, i32 0, i32 7
  %654 = load i32, i32* %bsBuff767, align 8, !tbaa !36
  %shl768 = shl i32 %654, 8
  %655 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm769 = getelementptr inbounds %struct.DState, %struct.DState* %655, i32 0, i32 0
  %656 = load %struct.bz_stream*, %struct.bz_stream** %strm769, align 8, !tbaa !6
  %next_in770 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %656, i32 0, i32 0
  %657 = load i8*, i8** %next_in770, align 8, !tbaa !40
  %658 = load i8, i8* %657, align 1, !tbaa !37
  %conv771 = zext i8 %658 to i32
  %or772 = or i32 %shl768, %conv771
  %659 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff773 = getelementptr inbounds %struct.DState, %struct.DState* %659, i32 0, i32 7
  store i32 %or772, i32* %bsBuff773, align 8, !tbaa !36
  %660 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive774 = getelementptr inbounds %struct.DState, %struct.DState* %660, i32 0, i32 8
  %661 = load i32, i32* %bsLive774, align 4, !tbaa !35
  %add775 = add nsw i32 %661, 8
  store i32 %add775, i32* %bsLive774, align 4, !tbaa !35
  %662 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm776 = getelementptr inbounds %struct.DState, %struct.DState* %662, i32 0, i32 0
  %663 = load %struct.bz_stream*, %struct.bz_stream** %strm776, align 8, !tbaa !6
  %next_in777 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %663, i32 0, i32 0
  %664 = load i8*, i8** %next_in777, align 8, !tbaa !40
  %incdec.ptr778 = getelementptr inbounds i8, i8* %664, i32 1
  store i8* %incdec.ptr778, i8** %next_in777, align 8, !tbaa !40
  %665 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm779 = getelementptr inbounds %struct.DState, %struct.DState* %665, i32 0, i32 0
  %666 = load %struct.bz_stream*, %struct.bz_stream** %strm779, align 8, !tbaa !6
  %avail_in780 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %666, i32 0, i32 1
  %667 = load i32, i32* %avail_in780, align 8, !tbaa !38
  %dec781 = add i32 %667, -1
  store i32 %dec781, i32* %avail_in780, align 8, !tbaa !38
  %668 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm782 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 0
  %669 = load %struct.bz_stream*, %struct.bz_stream** %strm782, align 8, !tbaa !6
  %total_in_lo32783 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %669, i32 0, i32 2
  %670 = load i32, i32* %total_in_lo32783, align 4, !tbaa !41
  %inc784 = add i32 %670, 1
  store i32 %inc784, i32* %total_in_lo32783, align 4, !tbaa !41
  %671 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm785 = getelementptr inbounds %struct.DState, %struct.DState* %671, i32 0, i32 0
  %672 = load %struct.bz_stream*, %struct.bz_stream** %strm785, align 8, !tbaa !6
  %total_in_lo32786 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %672, i32 0, i32 2
  %673 = load i32, i32* %total_in_lo32786, align 4, !tbaa !41
  %cmp787 = icmp eq i32 %673, 0
  br i1 %cmp787, label %if.then789, label %if.end793

if.then789:                                       ; preds = %if.end766
  %674 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm790 = getelementptr inbounds %struct.DState, %struct.DState* %674, i32 0, i32 0
  %675 = load %struct.bz_stream*, %struct.bz_stream** %strm790, align 8, !tbaa !6
  %total_in_hi32791 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %675, i32 0, i32 3
  %676 = load i32, i32* %total_in_hi32791, align 8, !tbaa !42
  %inc792 = add i32 %676, 1
  store i32 %inc792, i32* %total_in_hi32791, align 8, !tbaa !42
  br label %if.end793

if.end793:                                        ; preds = %if.then789, %if.end766
  br label %while.cond745, !llvm.loop !66

while.end794:                                     ; preds = %if.then750
  %677 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC795 = getelementptr inbounds %struct.DState, %struct.DState* %677, i32 0, i32 23
  %678 = load i32, i32* %storedBlockCRC795, align 8, !tbaa !63
  %shl796 = shl i32 %678, 8
  %679 = load i8, i8* %uc, align 1, !tbaa !37
  %conv797 = zext i8 %679 to i32
  %or798 = or i32 %shl796, %conv797
  %680 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC799 = getelementptr inbounds %struct.DState, %struct.DState* %680, i32 0, i32 23
  store i32 %or798, i32* %storedBlockCRC799, align 8, !tbaa !63
  br label %sw.bb800

sw.bb800:                                         ; preds = %if.end, %while.end794
  %681 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state801 = getelementptr inbounds %struct.DState, %struct.DState* %681, i32 0, i32 1
  store i32 23, i32* %state801, align 8, !tbaa !9
  br label %while.cond802

while.cond802:                                    ; preds = %if.end850, %sw.bb800
  br label %while.body803

while.body803:                                    ; preds = %while.cond802
  %682 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive804 = getelementptr inbounds %struct.DState, %struct.DState* %682, i32 0, i32 8
  %683 = load i32, i32* %bsLive804, align 4, !tbaa !35
  %cmp805 = icmp sge i32 %683, 8
  br i1 %cmp805, label %if.then807, label %if.end817

if.then807:                                       ; preds = %while.body803
  %684 = bitcast i32* %v808 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %684) #3
  %685 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff809 = getelementptr inbounds %struct.DState, %struct.DState* %685, i32 0, i32 7
  %686 = load i32, i32* %bsBuff809, align 8, !tbaa !36
  %687 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive810 = getelementptr inbounds %struct.DState, %struct.DState* %687, i32 0, i32 8
  %688 = load i32, i32* %bsLive810, align 4, !tbaa !35
  %sub811 = sub nsw i32 %688, 8
  %shr812 = lshr i32 %686, %sub811
  %and813 = and i32 %shr812, 255
  store i32 %and813, i32* %v808, align 4, !tbaa !34
  %689 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive814 = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 8
  %690 = load i32, i32* %bsLive814, align 4, !tbaa !35
  %sub815 = sub nsw i32 %690, 8
  store i32 %sub815, i32* %bsLive814, align 4, !tbaa !35
  %691 = load i32, i32* %v808, align 4, !tbaa !34
  %conv816 = trunc i32 %691 to i8
  store i8 %conv816, i8* %uc, align 1, !tbaa !37
  %692 = bitcast i32* %v808 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %692) #3
  br label %while.end851

if.end817:                                        ; preds = %while.body803
  %693 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm818 = getelementptr inbounds %struct.DState, %struct.DState* %693, i32 0, i32 0
  %694 = load %struct.bz_stream*, %struct.bz_stream** %strm818, align 8, !tbaa !6
  %avail_in819 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %694, i32 0, i32 1
  %695 = load i32, i32* %avail_in819, align 8, !tbaa !38
  %cmp820 = icmp eq i32 %695, 0
  br i1 %cmp820, label %if.then822, label %if.end823

if.then822:                                       ; preds = %if.end817
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end823:                                        ; preds = %if.end817
  %696 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff824 = getelementptr inbounds %struct.DState, %struct.DState* %696, i32 0, i32 7
  %697 = load i32, i32* %bsBuff824, align 8, !tbaa !36
  %shl825 = shl i32 %697, 8
  %698 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm826 = getelementptr inbounds %struct.DState, %struct.DState* %698, i32 0, i32 0
  %699 = load %struct.bz_stream*, %struct.bz_stream** %strm826, align 8, !tbaa !6
  %next_in827 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %699, i32 0, i32 0
  %700 = load i8*, i8** %next_in827, align 8, !tbaa !40
  %701 = load i8, i8* %700, align 1, !tbaa !37
  %conv828 = zext i8 %701 to i32
  %or829 = or i32 %shl825, %conv828
  %702 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff830 = getelementptr inbounds %struct.DState, %struct.DState* %702, i32 0, i32 7
  store i32 %or829, i32* %bsBuff830, align 8, !tbaa !36
  %703 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive831 = getelementptr inbounds %struct.DState, %struct.DState* %703, i32 0, i32 8
  %704 = load i32, i32* %bsLive831, align 4, !tbaa !35
  %add832 = add nsw i32 %704, 8
  store i32 %add832, i32* %bsLive831, align 4, !tbaa !35
  %705 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm833 = getelementptr inbounds %struct.DState, %struct.DState* %705, i32 0, i32 0
  %706 = load %struct.bz_stream*, %struct.bz_stream** %strm833, align 8, !tbaa !6
  %next_in834 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %706, i32 0, i32 0
  %707 = load i8*, i8** %next_in834, align 8, !tbaa !40
  %incdec.ptr835 = getelementptr inbounds i8, i8* %707, i32 1
  store i8* %incdec.ptr835, i8** %next_in834, align 8, !tbaa !40
  %708 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm836 = getelementptr inbounds %struct.DState, %struct.DState* %708, i32 0, i32 0
  %709 = load %struct.bz_stream*, %struct.bz_stream** %strm836, align 8, !tbaa !6
  %avail_in837 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %709, i32 0, i32 1
  %710 = load i32, i32* %avail_in837, align 8, !tbaa !38
  %dec838 = add i32 %710, -1
  store i32 %dec838, i32* %avail_in837, align 8, !tbaa !38
  %711 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm839 = getelementptr inbounds %struct.DState, %struct.DState* %711, i32 0, i32 0
  %712 = load %struct.bz_stream*, %struct.bz_stream** %strm839, align 8, !tbaa !6
  %total_in_lo32840 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %712, i32 0, i32 2
  %713 = load i32, i32* %total_in_lo32840, align 4, !tbaa !41
  %inc841 = add i32 %713, 1
  store i32 %inc841, i32* %total_in_lo32840, align 4, !tbaa !41
  %714 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm842 = getelementptr inbounds %struct.DState, %struct.DState* %714, i32 0, i32 0
  %715 = load %struct.bz_stream*, %struct.bz_stream** %strm842, align 8, !tbaa !6
  %total_in_lo32843 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %715, i32 0, i32 2
  %716 = load i32, i32* %total_in_lo32843, align 4, !tbaa !41
  %cmp844 = icmp eq i32 %716, 0
  br i1 %cmp844, label %if.then846, label %if.end850

if.then846:                                       ; preds = %if.end823
  %717 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm847 = getelementptr inbounds %struct.DState, %struct.DState* %717, i32 0, i32 0
  %718 = load %struct.bz_stream*, %struct.bz_stream** %strm847, align 8, !tbaa !6
  %total_in_hi32848 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %718, i32 0, i32 3
  %719 = load i32, i32* %total_in_hi32848, align 8, !tbaa !42
  %inc849 = add i32 %719, 1
  store i32 %inc849, i32* %total_in_hi32848, align 8, !tbaa !42
  br label %if.end850

if.end850:                                        ; preds = %if.then846, %if.end823
  br label %while.cond802, !llvm.loop !67

while.end851:                                     ; preds = %if.then807
  %720 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC852 = getelementptr inbounds %struct.DState, %struct.DState* %720, i32 0, i32 23
  %721 = load i32, i32* %storedBlockCRC852, align 8, !tbaa !63
  %shl853 = shl i32 %721, 8
  %722 = load i8, i8* %uc, align 1, !tbaa !37
  %conv854 = zext i8 %722 to i32
  %or855 = or i32 %shl853, %conv854
  %723 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedBlockCRC856 = getelementptr inbounds %struct.DState, %struct.DState* %723, i32 0, i32 23
  store i32 %or855, i32* %storedBlockCRC856, align 8, !tbaa !63
  br label %sw.bb857

sw.bb857:                                         ; preds = %if.end, %while.end851
  %724 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state858 = getelementptr inbounds %struct.DState, %struct.DState* %724, i32 0, i32 1
  store i32 24, i32* %state858, align 8, !tbaa !9
  br label %while.cond859

while.cond859:                                    ; preds = %if.end907, %sw.bb857
  br label %while.body860

while.body860:                                    ; preds = %while.cond859
  %725 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive861 = getelementptr inbounds %struct.DState, %struct.DState* %725, i32 0, i32 8
  %726 = load i32, i32* %bsLive861, align 4, !tbaa !35
  %cmp862 = icmp sge i32 %726, 1
  br i1 %cmp862, label %if.then864, label %if.end874

if.then864:                                       ; preds = %while.body860
  %727 = bitcast i32* %v865 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %727) #3
  %728 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff866 = getelementptr inbounds %struct.DState, %struct.DState* %728, i32 0, i32 7
  %729 = load i32, i32* %bsBuff866, align 8, !tbaa !36
  %730 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive867 = getelementptr inbounds %struct.DState, %struct.DState* %730, i32 0, i32 8
  %731 = load i32, i32* %bsLive867, align 4, !tbaa !35
  %sub868 = sub nsw i32 %731, 1
  %shr869 = lshr i32 %729, %sub868
  %and870 = and i32 %shr869, 1
  store i32 %and870, i32* %v865, align 4, !tbaa !34
  %732 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive871 = getelementptr inbounds %struct.DState, %struct.DState* %732, i32 0, i32 8
  %733 = load i32, i32* %bsLive871, align 4, !tbaa !35
  %sub872 = sub nsw i32 %733, 1
  store i32 %sub872, i32* %bsLive871, align 4, !tbaa !35
  %734 = load i32, i32* %v865, align 4, !tbaa !34
  %conv873 = trunc i32 %734 to i8
  %735 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %735, i32 0, i32 4
  store i8 %conv873, i8* %blockRandomised, align 4, !tbaa !68
  %736 = bitcast i32* %v865 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %736) #3
  br label %while.end908

if.end874:                                        ; preds = %while.body860
  %737 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm875 = getelementptr inbounds %struct.DState, %struct.DState* %737, i32 0, i32 0
  %738 = load %struct.bz_stream*, %struct.bz_stream** %strm875, align 8, !tbaa !6
  %avail_in876 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %738, i32 0, i32 1
  %739 = load i32, i32* %avail_in876, align 8, !tbaa !38
  %cmp877 = icmp eq i32 %739, 0
  br i1 %cmp877, label %if.then879, label %if.end880

if.then879:                                       ; preds = %if.end874
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end880:                                        ; preds = %if.end874
  %740 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff881 = getelementptr inbounds %struct.DState, %struct.DState* %740, i32 0, i32 7
  %741 = load i32, i32* %bsBuff881, align 8, !tbaa !36
  %shl882 = shl i32 %741, 8
  %742 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm883 = getelementptr inbounds %struct.DState, %struct.DState* %742, i32 0, i32 0
  %743 = load %struct.bz_stream*, %struct.bz_stream** %strm883, align 8, !tbaa !6
  %next_in884 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %743, i32 0, i32 0
  %744 = load i8*, i8** %next_in884, align 8, !tbaa !40
  %745 = load i8, i8* %744, align 1, !tbaa !37
  %conv885 = zext i8 %745 to i32
  %or886 = or i32 %shl882, %conv885
  %746 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff887 = getelementptr inbounds %struct.DState, %struct.DState* %746, i32 0, i32 7
  store i32 %or886, i32* %bsBuff887, align 8, !tbaa !36
  %747 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive888 = getelementptr inbounds %struct.DState, %struct.DState* %747, i32 0, i32 8
  %748 = load i32, i32* %bsLive888, align 4, !tbaa !35
  %add889 = add nsw i32 %748, 8
  store i32 %add889, i32* %bsLive888, align 4, !tbaa !35
  %749 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm890 = getelementptr inbounds %struct.DState, %struct.DState* %749, i32 0, i32 0
  %750 = load %struct.bz_stream*, %struct.bz_stream** %strm890, align 8, !tbaa !6
  %next_in891 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %750, i32 0, i32 0
  %751 = load i8*, i8** %next_in891, align 8, !tbaa !40
  %incdec.ptr892 = getelementptr inbounds i8, i8* %751, i32 1
  store i8* %incdec.ptr892, i8** %next_in891, align 8, !tbaa !40
  %752 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm893 = getelementptr inbounds %struct.DState, %struct.DState* %752, i32 0, i32 0
  %753 = load %struct.bz_stream*, %struct.bz_stream** %strm893, align 8, !tbaa !6
  %avail_in894 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %753, i32 0, i32 1
  %754 = load i32, i32* %avail_in894, align 8, !tbaa !38
  %dec895 = add i32 %754, -1
  store i32 %dec895, i32* %avail_in894, align 8, !tbaa !38
  %755 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm896 = getelementptr inbounds %struct.DState, %struct.DState* %755, i32 0, i32 0
  %756 = load %struct.bz_stream*, %struct.bz_stream** %strm896, align 8, !tbaa !6
  %total_in_lo32897 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %756, i32 0, i32 2
  %757 = load i32, i32* %total_in_lo32897, align 4, !tbaa !41
  %inc898 = add i32 %757, 1
  store i32 %inc898, i32* %total_in_lo32897, align 4, !tbaa !41
  %758 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm899 = getelementptr inbounds %struct.DState, %struct.DState* %758, i32 0, i32 0
  %759 = load %struct.bz_stream*, %struct.bz_stream** %strm899, align 8, !tbaa !6
  %total_in_lo32900 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %759, i32 0, i32 2
  %760 = load i32, i32* %total_in_lo32900, align 4, !tbaa !41
  %cmp901 = icmp eq i32 %760, 0
  br i1 %cmp901, label %if.then903, label %if.end907

if.then903:                                       ; preds = %if.end880
  %761 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm904 = getelementptr inbounds %struct.DState, %struct.DState* %761, i32 0, i32 0
  %762 = load %struct.bz_stream*, %struct.bz_stream** %strm904, align 8, !tbaa !6
  %total_in_hi32905 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %762, i32 0, i32 3
  %763 = load i32, i32* %total_in_hi32905, align 8, !tbaa !42
  %inc906 = add i32 %763, 1
  store i32 %inc906, i32* %total_in_hi32905, align 8, !tbaa !42
  br label %if.end907

if.end907:                                        ; preds = %if.then903, %if.end880
  br label %while.cond859, !llvm.loop !69

while.end908:                                     ; preds = %if.then864
  %764 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr = getelementptr inbounds %struct.DState, %struct.DState* %764, i32 0, i32 13
  store i32 0, i32* %origPtr, align 8, !tbaa !70
  br label %sw.bb909

sw.bb909:                                         ; preds = %if.end, %while.end908
  %765 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state910 = getelementptr inbounds %struct.DState, %struct.DState* %765, i32 0, i32 1
  store i32 25, i32* %state910, align 8, !tbaa !9
  br label %while.cond911

while.cond911:                                    ; preds = %if.end959, %sw.bb909
  br label %while.body912

while.body912:                                    ; preds = %while.cond911
  %766 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive913 = getelementptr inbounds %struct.DState, %struct.DState* %766, i32 0, i32 8
  %767 = load i32, i32* %bsLive913, align 4, !tbaa !35
  %cmp914 = icmp sge i32 %767, 8
  br i1 %cmp914, label %if.then916, label %if.end926

if.then916:                                       ; preds = %while.body912
  %768 = bitcast i32* %v917 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %768) #3
  %769 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff918 = getelementptr inbounds %struct.DState, %struct.DState* %769, i32 0, i32 7
  %770 = load i32, i32* %bsBuff918, align 8, !tbaa !36
  %771 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive919 = getelementptr inbounds %struct.DState, %struct.DState* %771, i32 0, i32 8
  %772 = load i32, i32* %bsLive919, align 4, !tbaa !35
  %sub920 = sub nsw i32 %772, 8
  %shr921 = lshr i32 %770, %sub920
  %and922 = and i32 %shr921, 255
  store i32 %and922, i32* %v917, align 4, !tbaa !34
  %773 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive923 = getelementptr inbounds %struct.DState, %struct.DState* %773, i32 0, i32 8
  %774 = load i32, i32* %bsLive923, align 4, !tbaa !35
  %sub924 = sub nsw i32 %774, 8
  store i32 %sub924, i32* %bsLive923, align 4, !tbaa !35
  %775 = load i32, i32* %v917, align 4, !tbaa !34
  %conv925 = trunc i32 %775 to i8
  store i8 %conv925, i8* %uc, align 1, !tbaa !37
  %776 = bitcast i32* %v917 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %776) #3
  br label %while.end960

if.end926:                                        ; preds = %while.body912
  %777 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm927 = getelementptr inbounds %struct.DState, %struct.DState* %777, i32 0, i32 0
  %778 = load %struct.bz_stream*, %struct.bz_stream** %strm927, align 8, !tbaa !6
  %avail_in928 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %778, i32 0, i32 1
  %779 = load i32, i32* %avail_in928, align 8, !tbaa !38
  %cmp929 = icmp eq i32 %779, 0
  br i1 %cmp929, label %if.then931, label %if.end932

if.then931:                                       ; preds = %if.end926
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end932:                                        ; preds = %if.end926
  %780 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff933 = getelementptr inbounds %struct.DState, %struct.DState* %780, i32 0, i32 7
  %781 = load i32, i32* %bsBuff933, align 8, !tbaa !36
  %shl934 = shl i32 %781, 8
  %782 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm935 = getelementptr inbounds %struct.DState, %struct.DState* %782, i32 0, i32 0
  %783 = load %struct.bz_stream*, %struct.bz_stream** %strm935, align 8, !tbaa !6
  %next_in936 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %783, i32 0, i32 0
  %784 = load i8*, i8** %next_in936, align 8, !tbaa !40
  %785 = load i8, i8* %784, align 1, !tbaa !37
  %conv937 = zext i8 %785 to i32
  %or938 = or i32 %shl934, %conv937
  %786 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff939 = getelementptr inbounds %struct.DState, %struct.DState* %786, i32 0, i32 7
  store i32 %or938, i32* %bsBuff939, align 8, !tbaa !36
  %787 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive940 = getelementptr inbounds %struct.DState, %struct.DState* %787, i32 0, i32 8
  %788 = load i32, i32* %bsLive940, align 4, !tbaa !35
  %add941 = add nsw i32 %788, 8
  store i32 %add941, i32* %bsLive940, align 4, !tbaa !35
  %789 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm942 = getelementptr inbounds %struct.DState, %struct.DState* %789, i32 0, i32 0
  %790 = load %struct.bz_stream*, %struct.bz_stream** %strm942, align 8, !tbaa !6
  %next_in943 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %790, i32 0, i32 0
  %791 = load i8*, i8** %next_in943, align 8, !tbaa !40
  %incdec.ptr944 = getelementptr inbounds i8, i8* %791, i32 1
  store i8* %incdec.ptr944, i8** %next_in943, align 8, !tbaa !40
  %792 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm945 = getelementptr inbounds %struct.DState, %struct.DState* %792, i32 0, i32 0
  %793 = load %struct.bz_stream*, %struct.bz_stream** %strm945, align 8, !tbaa !6
  %avail_in946 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %793, i32 0, i32 1
  %794 = load i32, i32* %avail_in946, align 8, !tbaa !38
  %dec947 = add i32 %794, -1
  store i32 %dec947, i32* %avail_in946, align 8, !tbaa !38
  %795 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm948 = getelementptr inbounds %struct.DState, %struct.DState* %795, i32 0, i32 0
  %796 = load %struct.bz_stream*, %struct.bz_stream** %strm948, align 8, !tbaa !6
  %total_in_lo32949 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %796, i32 0, i32 2
  %797 = load i32, i32* %total_in_lo32949, align 4, !tbaa !41
  %inc950 = add i32 %797, 1
  store i32 %inc950, i32* %total_in_lo32949, align 4, !tbaa !41
  %798 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm951 = getelementptr inbounds %struct.DState, %struct.DState* %798, i32 0, i32 0
  %799 = load %struct.bz_stream*, %struct.bz_stream** %strm951, align 8, !tbaa !6
  %total_in_lo32952 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %799, i32 0, i32 2
  %800 = load i32, i32* %total_in_lo32952, align 4, !tbaa !41
  %cmp953 = icmp eq i32 %800, 0
  br i1 %cmp953, label %if.then955, label %if.end959

if.then955:                                       ; preds = %if.end932
  %801 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm956 = getelementptr inbounds %struct.DState, %struct.DState* %801, i32 0, i32 0
  %802 = load %struct.bz_stream*, %struct.bz_stream** %strm956, align 8, !tbaa !6
  %total_in_hi32957 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %802, i32 0, i32 3
  %803 = load i32, i32* %total_in_hi32957, align 8, !tbaa !42
  %inc958 = add i32 %803, 1
  store i32 %inc958, i32* %total_in_hi32957, align 8, !tbaa !42
  br label %if.end959

if.end959:                                        ; preds = %if.then955, %if.end932
  br label %while.cond911, !llvm.loop !71

while.end960:                                     ; preds = %if.then916
  %804 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr961 = getelementptr inbounds %struct.DState, %struct.DState* %804, i32 0, i32 13
  %805 = load i32, i32* %origPtr961, align 8, !tbaa !70
  %shl962 = shl i32 %805, 8
  %806 = load i8, i8* %uc, align 1, !tbaa !37
  %conv963 = zext i8 %806 to i32
  %or964 = or i32 %shl962, %conv963
  %807 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr965 = getelementptr inbounds %struct.DState, %struct.DState* %807, i32 0, i32 13
  store i32 %or964, i32* %origPtr965, align 8, !tbaa !70
  br label %sw.bb966

sw.bb966:                                         ; preds = %if.end, %while.end960
  %808 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state967 = getelementptr inbounds %struct.DState, %struct.DState* %808, i32 0, i32 1
  store i32 26, i32* %state967, align 8, !tbaa !9
  br label %while.cond968

while.cond968:                                    ; preds = %if.end1016, %sw.bb966
  br label %while.body969

while.body969:                                    ; preds = %while.cond968
  %809 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive970 = getelementptr inbounds %struct.DState, %struct.DState* %809, i32 0, i32 8
  %810 = load i32, i32* %bsLive970, align 4, !tbaa !35
  %cmp971 = icmp sge i32 %810, 8
  br i1 %cmp971, label %if.then973, label %if.end983

if.then973:                                       ; preds = %while.body969
  %811 = bitcast i32* %v974 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %811) #3
  %812 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff975 = getelementptr inbounds %struct.DState, %struct.DState* %812, i32 0, i32 7
  %813 = load i32, i32* %bsBuff975, align 8, !tbaa !36
  %814 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive976 = getelementptr inbounds %struct.DState, %struct.DState* %814, i32 0, i32 8
  %815 = load i32, i32* %bsLive976, align 4, !tbaa !35
  %sub977 = sub nsw i32 %815, 8
  %shr978 = lshr i32 %813, %sub977
  %and979 = and i32 %shr978, 255
  store i32 %and979, i32* %v974, align 4, !tbaa !34
  %816 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive980 = getelementptr inbounds %struct.DState, %struct.DState* %816, i32 0, i32 8
  %817 = load i32, i32* %bsLive980, align 4, !tbaa !35
  %sub981 = sub nsw i32 %817, 8
  store i32 %sub981, i32* %bsLive980, align 4, !tbaa !35
  %818 = load i32, i32* %v974, align 4, !tbaa !34
  %conv982 = trunc i32 %818 to i8
  store i8 %conv982, i8* %uc, align 1, !tbaa !37
  %819 = bitcast i32* %v974 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %819) #3
  br label %while.end1017

if.end983:                                        ; preds = %while.body969
  %820 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm984 = getelementptr inbounds %struct.DState, %struct.DState* %820, i32 0, i32 0
  %821 = load %struct.bz_stream*, %struct.bz_stream** %strm984, align 8, !tbaa !6
  %avail_in985 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %821, i32 0, i32 1
  %822 = load i32, i32* %avail_in985, align 8, !tbaa !38
  %cmp986 = icmp eq i32 %822, 0
  br i1 %cmp986, label %if.then988, label %if.end989

if.then988:                                       ; preds = %if.end983
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end989:                                        ; preds = %if.end983
  %823 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff990 = getelementptr inbounds %struct.DState, %struct.DState* %823, i32 0, i32 7
  %824 = load i32, i32* %bsBuff990, align 8, !tbaa !36
  %shl991 = shl i32 %824, 8
  %825 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm992 = getelementptr inbounds %struct.DState, %struct.DState* %825, i32 0, i32 0
  %826 = load %struct.bz_stream*, %struct.bz_stream** %strm992, align 8, !tbaa !6
  %next_in993 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %826, i32 0, i32 0
  %827 = load i8*, i8** %next_in993, align 8, !tbaa !40
  %828 = load i8, i8* %827, align 1, !tbaa !37
  %conv994 = zext i8 %828 to i32
  %or995 = or i32 %shl991, %conv994
  %829 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff996 = getelementptr inbounds %struct.DState, %struct.DState* %829, i32 0, i32 7
  store i32 %or995, i32* %bsBuff996, align 8, !tbaa !36
  %830 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive997 = getelementptr inbounds %struct.DState, %struct.DState* %830, i32 0, i32 8
  %831 = load i32, i32* %bsLive997, align 4, !tbaa !35
  %add998 = add nsw i32 %831, 8
  store i32 %add998, i32* %bsLive997, align 4, !tbaa !35
  %832 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm999 = getelementptr inbounds %struct.DState, %struct.DState* %832, i32 0, i32 0
  %833 = load %struct.bz_stream*, %struct.bz_stream** %strm999, align 8, !tbaa !6
  %next_in1000 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %833, i32 0, i32 0
  %834 = load i8*, i8** %next_in1000, align 8, !tbaa !40
  %incdec.ptr1001 = getelementptr inbounds i8, i8* %834, i32 1
  store i8* %incdec.ptr1001, i8** %next_in1000, align 8, !tbaa !40
  %835 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1002 = getelementptr inbounds %struct.DState, %struct.DState* %835, i32 0, i32 0
  %836 = load %struct.bz_stream*, %struct.bz_stream** %strm1002, align 8, !tbaa !6
  %avail_in1003 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %836, i32 0, i32 1
  %837 = load i32, i32* %avail_in1003, align 8, !tbaa !38
  %dec1004 = add i32 %837, -1
  store i32 %dec1004, i32* %avail_in1003, align 8, !tbaa !38
  %838 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1005 = getelementptr inbounds %struct.DState, %struct.DState* %838, i32 0, i32 0
  %839 = load %struct.bz_stream*, %struct.bz_stream** %strm1005, align 8, !tbaa !6
  %total_in_lo321006 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %839, i32 0, i32 2
  %840 = load i32, i32* %total_in_lo321006, align 4, !tbaa !41
  %inc1007 = add i32 %840, 1
  store i32 %inc1007, i32* %total_in_lo321006, align 4, !tbaa !41
  %841 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1008 = getelementptr inbounds %struct.DState, %struct.DState* %841, i32 0, i32 0
  %842 = load %struct.bz_stream*, %struct.bz_stream** %strm1008, align 8, !tbaa !6
  %total_in_lo321009 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %842, i32 0, i32 2
  %843 = load i32, i32* %total_in_lo321009, align 4, !tbaa !41
  %cmp1010 = icmp eq i32 %843, 0
  br i1 %cmp1010, label %if.then1012, label %if.end1016

if.then1012:                                      ; preds = %if.end989
  %844 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1013 = getelementptr inbounds %struct.DState, %struct.DState* %844, i32 0, i32 0
  %845 = load %struct.bz_stream*, %struct.bz_stream** %strm1013, align 8, !tbaa !6
  %total_in_hi321014 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %845, i32 0, i32 3
  %846 = load i32, i32* %total_in_hi321014, align 8, !tbaa !42
  %inc1015 = add i32 %846, 1
  store i32 %inc1015, i32* %total_in_hi321014, align 8, !tbaa !42
  br label %if.end1016

if.end1016:                                       ; preds = %if.then1012, %if.end989
  br label %while.cond968, !llvm.loop !72

while.end1017:                                    ; preds = %if.then973
  %847 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1018 = getelementptr inbounds %struct.DState, %struct.DState* %847, i32 0, i32 13
  %848 = load i32, i32* %origPtr1018, align 8, !tbaa !70
  %shl1019 = shl i32 %848, 8
  %849 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1020 = zext i8 %849 to i32
  %or1021 = or i32 %shl1019, %conv1020
  %850 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1022 = getelementptr inbounds %struct.DState, %struct.DState* %850, i32 0, i32 13
  store i32 %or1021, i32* %origPtr1022, align 8, !tbaa !70
  br label %sw.bb1023

sw.bb1023:                                        ; preds = %if.end, %while.end1017
  %851 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1024 = getelementptr inbounds %struct.DState, %struct.DState* %851, i32 0, i32 1
  store i32 27, i32* %state1024, align 8, !tbaa !9
  br label %while.cond1025

while.cond1025:                                   ; preds = %if.end1073, %sw.bb1023
  br label %while.body1026

while.body1026:                                   ; preds = %while.cond1025
  %852 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1027 = getelementptr inbounds %struct.DState, %struct.DState* %852, i32 0, i32 8
  %853 = load i32, i32* %bsLive1027, align 4, !tbaa !35
  %cmp1028 = icmp sge i32 %853, 8
  br i1 %cmp1028, label %if.then1030, label %if.end1040

if.then1030:                                      ; preds = %while.body1026
  %854 = bitcast i32* %v1031 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %854) #3
  %855 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1032 = getelementptr inbounds %struct.DState, %struct.DState* %855, i32 0, i32 7
  %856 = load i32, i32* %bsBuff1032, align 8, !tbaa !36
  %857 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1033 = getelementptr inbounds %struct.DState, %struct.DState* %857, i32 0, i32 8
  %858 = load i32, i32* %bsLive1033, align 4, !tbaa !35
  %sub1034 = sub nsw i32 %858, 8
  %shr1035 = lshr i32 %856, %sub1034
  %and1036 = and i32 %shr1035, 255
  store i32 %and1036, i32* %v1031, align 4, !tbaa !34
  %859 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1037 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 8
  %860 = load i32, i32* %bsLive1037, align 4, !tbaa !35
  %sub1038 = sub nsw i32 %860, 8
  store i32 %sub1038, i32* %bsLive1037, align 4, !tbaa !35
  %861 = load i32, i32* %v1031, align 4, !tbaa !34
  %conv1039 = trunc i32 %861 to i8
  store i8 %conv1039, i8* %uc, align 1, !tbaa !37
  %862 = bitcast i32* %v1031 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %862) #3
  br label %while.end1074

if.end1040:                                       ; preds = %while.body1026
  %863 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1041 = getelementptr inbounds %struct.DState, %struct.DState* %863, i32 0, i32 0
  %864 = load %struct.bz_stream*, %struct.bz_stream** %strm1041, align 8, !tbaa !6
  %avail_in1042 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %864, i32 0, i32 1
  %865 = load i32, i32* %avail_in1042, align 8, !tbaa !38
  %cmp1043 = icmp eq i32 %865, 0
  br i1 %cmp1043, label %if.then1045, label %if.end1046

if.then1045:                                      ; preds = %if.end1040
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1046:                                       ; preds = %if.end1040
  %866 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1047 = getelementptr inbounds %struct.DState, %struct.DState* %866, i32 0, i32 7
  %867 = load i32, i32* %bsBuff1047, align 8, !tbaa !36
  %shl1048 = shl i32 %867, 8
  %868 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1049 = getelementptr inbounds %struct.DState, %struct.DState* %868, i32 0, i32 0
  %869 = load %struct.bz_stream*, %struct.bz_stream** %strm1049, align 8, !tbaa !6
  %next_in1050 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %869, i32 0, i32 0
  %870 = load i8*, i8** %next_in1050, align 8, !tbaa !40
  %871 = load i8, i8* %870, align 1, !tbaa !37
  %conv1051 = zext i8 %871 to i32
  %or1052 = or i32 %shl1048, %conv1051
  %872 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1053 = getelementptr inbounds %struct.DState, %struct.DState* %872, i32 0, i32 7
  store i32 %or1052, i32* %bsBuff1053, align 8, !tbaa !36
  %873 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1054 = getelementptr inbounds %struct.DState, %struct.DState* %873, i32 0, i32 8
  %874 = load i32, i32* %bsLive1054, align 4, !tbaa !35
  %add1055 = add nsw i32 %874, 8
  store i32 %add1055, i32* %bsLive1054, align 4, !tbaa !35
  %875 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1056 = getelementptr inbounds %struct.DState, %struct.DState* %875, i32 0, i32 0
  %876 = load %struct.bz_stream*, %struct.bz_stream** %strm1056, align 8, !tbaa !6
  %next_in1057 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %876, i32 0, i32 0
  %877 = load i8*, i8** %next_in1057, align 8, !tbaa !40
  %incdec.ptr1058 = getelementptr inbounds i8, i8* %877, i32 1
  store i8* %incdec.ptr1058, i8** %next_in1057, align 8, !tbaa !40
  %878 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1059 = getelementptr inbounds %struct.DState, %struct.DState* %878, i32 0, i32 0
  %879 = load %struct.bz_stream*, %struct.bz_stream** %strm1059, align 8, !tbaa !6
  %avail_in1060 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %879, i32 0, i32 1
  %880 = load i32, i32* %avail_in1060, align 8, !tbaa !38
  %dec1061 = add i32 %880, -1
  store i32 %dec1061, i32* %avail_in1060, align 8, !tbaa !38
  %881 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1062 = getelementptr inbounds %struct.DState, %struct.DState* %881, i32 0, i32 0
  %882 = load %struct.bz_stream*, %struct.bz_stream** %strm1062, align 8, !tbaa !6
  %total_in_lo321063 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %882, i32 0, i32 2
  %883 = load i32, i32* %total_in_lo321063, align 4, !tbaa !41
  %inc1064 = add i32 %883, 1
  store i32 %inc1064, i32* %total_in_lo321063, align 4, !tbaa !41
  %884 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1065 = getelementptr inbounds %struct.DState, %struct.DState* %884, i32 0, i32 0
  %885 = load %struct.bz_stream*, %struct.bz_stream** %strm1065, align 8, !tbaa !6
  %total_in_lo321066 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %885, i32 0, i32 2
  %886 = load i32, i32* %total_in_lo321066, align 4, !tbaa !41
  %cmp1067 = icmp eq i32 %886, 0
  br i1 %cmp1067, label %if.then1069, label %if.end1073

if.then1069:                                      ; preds = %if.end1046
  %887 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1070 = getelementptr inbounds %struct.DState, %struct.DState* %887, i32 0, i32 0
  %888 = load %struct.bz_stream*, %struct.bz_stream** %strm1070, align 8, !tbaa !6
  %total_in_hi321071 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %888, i32 0, i32 3
  %889 = load i32, i32* %total_in_hi321071, align 8, !tbaa !42
  %inc1072 = add i32 %889, 1
  store i32 %inc1072, i32* %total_in_hi321071, align 8, !tbaa !42
  br label %if.end1073

if.end1073:                                       ; preds = %if.then1069, %if.end1046
  br label %while.cond1025, !llvm.loop !73

while.end1074:                                    ; preds = %if.then1030
  %890 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1075 = getelementptr inbounds %struct.DState, %struct.DState* %890, i32 0, i32 13
  %891 = load i32, i32* %origPtr1075, align 8, !tbaa !70
  %shl1076 = shl i32 %891, 8
  %892 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1077 = zext i8 %892 to i32
  %or1078 = or i32 %shl1076, %conv1077
  %893 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1079 = getelementptr inbounds %struct.DState, %struct.DState* %893, i32 0, i32 13
  store i32 %or1078, i32* %origPtr1079, align 8, !tbaa !70
  %894 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1080 = getelementptr inbounds %struct.DState, %struct.DState* %894, i32 0, i32 13
  %895 = load i32, i32* %origPtr1080, align 8, !tbaa !70
  %cmp1081 = icmp slt i32 %895, 0
  br i1 %cmp1081, label %if.then1083, label %if.end1084

if.then1083:                                      ; preds = %while.end1074
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1084:                                       ; preds = %while.end1074
  %896 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr1085 = getelementptr inbounds %struct.DState, %struct.DState* %896, i32 0, i32 13
  %897 = load i32, i32* %origPtr1085, align 8, !tbaa !70
  %898 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k1086 = getelementptr inbounds %struct.DState, %struct.DState* %898, i32 0, i32 9
  %899 = load i32, i32* %blockSize100k1086, align 8, !tbaa !47
  %mul1087 = mul nsw i32 100000, %899
  %add1088 = add nsw i32 10, %mul1087
  %cmp1089 = icmp sgt i32 %897, %add1088
  br i1 %cmp1089, label %if.then1091, label %if.end1092

if.then1091:                                      ; preds = %if.end1084
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1092:                                       ; preds = %if.end1084
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end1092
  %900 = load i32, i32* %i, align 4, !tbaa !34
  %cmp1093 = icmp slt i32 %900, 16
  br i1 %cmp1093, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb1095

sw.bb1095:                                        ; preds = %if.end, %for.body
  %901 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1096 = getelementptr inbounds %struct.DState, %struct.DState* %901, i32 0, i32 1
  store i32 28, i32* %state1096, align 8, !tbaa !9
  br label %while.cond1097

while.cond1097:                                   ; preds = %if.end1145, %sw.bb1095
  br label %while.body1098

while.body1098:                                   ; preds = %while.cond1097
  %902 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1099 = getelementptr inbounds %struct.DState, %struct.DState* %902, i32 0, i32 8
  %903 = load i32, i32* %bsLive1099, align 4, !tbaa !35
  %cmp1100 = icmp sge i32 %903, 1
  br i1 %cmp1100, label %if.then1102, label %if.end1112

if.then1102:                                      ; preds = %while.body1098
  %904 = bitcast i32* %v1103 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %904) #3
  %905 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1104 = getelementptr inbounds %struct.DState, %struct.DState* %905, i32 0, i32 7
  %906 = load i32, i32* %bsBuff1104, align 8, !tbaa !36
  %907 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1105 = getelementptr inbounds %struct.DState, %struct.DState* %907, i32 0, i32 8
  %908 = load i32, i32* %bsLive1105, align 4, !tbaa !35
  %sub1106 = sub nsw i32 %908, 1
  %shr1107 = lshr i32 %906, %sub1106
  %and1108 = and i32 %shr1107, 1
  store i32 %and1108, i32* %v1103, align 4, !tbaa !34
  %909 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1109 = getelementptr inbounds %struct.DState, %struct.DState* %909, i32 0, i32 8
  %910 = load i32, i32* %bsLive1109, align 4, !tbaa !35
  %sub1110 = sub nsw i32 %910, 1
  store i32 %sub1110, i32* %bsLive1109, align 4, !tbaa !35
  %911 = load i32, i32* %v1103, align 4, !tbaa !34
  %conv1111 = trunc i32 %911 to i8
  store i8 %conv1111, i8* %uc, align 1, !tbaa !37
  %912 = bitcast i32* %v1103 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %912) #3
  br label %while.end1146

if.end1112:                                       ; preds = %while.body1098
  %913 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1113 = getelementptr inbounds %struct.DState, %struct.DState* %913, i32 0, i32 0
  %914 = load %struct.bz_stream*, %struct.bz_stream** %strm1113, align 8, !tbaa !6
  %avail_in1114 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %914, i32 0, i32 1
  %915 = load i32, i32* %avail_in1114, align 8, !tbaa !38
  %cmp1115 = icmp eq i32 %915, 0
  br i1 %cmp1115, label %if.then1117, label %if.end1118

if.then1117:                                      ; preds = %if.end1112
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1118:                                       ; preds = %if.end1112
  %916 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1119 = getelementptr inbounds %struct.DState, %struct.DState* %916, i32 0, i32 7
  %917 = load i32, i32* %bsBuff1119, align 8, !tbaa !36
  %shl1120 = shl i32 %917, 8
  %918 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1121 = getelementptr inbounds %struct.DState, %struct.DState* %918, i32 0, i32 0
  %919 = load %struct.bz_stream*, %struct.bz_stream** %strm1121, align 8, !tbaa !6
  %next_in1122 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %919, i32 0, i32 0
  %920 = load i8*, i8** %next_in1122, align 8, !tbaa !40
  %921 = load i8, i8* %920, align 1, !tbaa !37
  %conv1123 = zext i8 %921 to i32
  %or1124 = or i32 %shl1120, %conv1123
  %922 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1125 = getelementptr inbounds %struct.DState, %struct.DState* %922, i32 0, i32 7
  store i32 %or1124, i32* %bsBuff1125, align 8, !tbaa !36
  %923 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1126 = getelementptr inbounds %struct.DState, %struct.DState* %923, i32 0, i32 8
  %924 = load i32, i32* %bsLive1126, align 4, !tbaa !35
  %add1127 = add nsw i32 %924, 8
  store i32 %add1127, i32* %bsLive1126, align 4, !tbaa !35
  %925 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1128 = getelementptr inbounds %struct.DState, %struct.DState* %925, i32 0, i32 0
  %926 = load %struct.bz_stream*, %struct.bz_stream** %strm1128, align 8, !tbaa !6
  %next_in1129 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %926, i32 0, i32 0
  %927 = load i8*, i8** %next_in1129, align 8, !tbaa !40
  %incdec.ptr1130 = getelementptr inbounds i8, i8* %927, i32 1
  store i8* %incdec.ptr1130, i8** %next_in1129, align 8, !tbaa !40
  %928 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1131 = getelementptr inbounds %struct.DState, %struct.DState* %928, i32 0, i32 0
  %929 = load %struct.bz_stream*, %struct.bz_stream** %strm1131, align 8, !tbaa !6
  %avail_in1132 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %929, i32 0, i32 1
  %930 = load i32, i32* %avail_in1132, align 8, !tbaa !38
  %dec1133 = add i32 %930, -1
  store i32 %dec1133, i32* %avail_in1132, align 8, !tbaa !38
  %931 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1134 = getelementptr inbounds %struct.DState, %struct.DState* %931, i32 0, i32 0
  %932 = load %struct.bz_stream*, %struct.bz_stream** %strm1134, align 8, !tbaa !6
  %total_in_lo321135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %932, i32 0, i32 2
  %933 = load i32, i32* %total_in_lo321135, align 4, !tbaa !41
  %inc1136 = add i32 %933, 1
  store i32 %inc1136, i32* %total_in_lo321135, align 4, !tbaa !41
  %934 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1137 = getelementptr inbounds %struct.DState, %struct.DState* %934, i32 0, i32 0
  %935 = load %struct.bz_stream*, %struct.bz_stream** %strm1137, align 8, !tbaa !6
  %total_in_lo321138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %935, i32 0, i32 2
  %936 = load i32, i32* %total_in_lo321138, align 4, !tbaa !41
  %cmp1139 = icmp eq i32 %936, 0
  br i1 %cmp1139, label %if.then1141, label %if.end1145

if.then1141:                                      ; preds = %if.end1118
  %937 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1142 = getelementptr inbounds %struct.DState, %struct.DState* %937, i32 0, i32 0
  %938 = load %struct.bz_stream*, %struct.bz_stream** %strm1142, align 8, !tbaa !6
  %total_in_hi321143 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %938, i32 0, i32 3
  %939 = load i32, i32* %total_in_hi321143, align 8, !tbaa !42
  %inc1144 = add i32 %939, 1
  store i32 %inc1144, i32* %total_in_hi321143, align 8, !tbaa !42
  br label %if.end1145

if.end1145:                                       ; preds = %if.then1141, %if.end1118
  br label %while.cond1097, !llvm.loop !74

while.end1146:                                    ; preds = %if.then1102
  %940 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1147 = zext i8 %940 to i32
  %cmp1148 = icmp eq i32 %conv1147, 1
  br i1 %cmp1148, label %if.then1150, label %if.else1151

if.then1150:                                      ; preds = %while.end1146
  %941 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse16 = getelementptr inbounds %struct.DState, %struct.DState* %941, i32 0, i32 29
  %942 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %942 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1, !tbaa !37
  br label %if.end1155

if.else1151:                                      ; preds = %while.end1146
  %943 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse161152 = getelementptr inbounds %struct.DState, %struct.DState* %943, i32 0, i32 29
  %944 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1153 = sext i32 %944 to i64
  %arrayidx1154 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161152, i64 0, i64 %idxprom1153
  store i8 0, i8* %arrayidx1154, align 1, !tbaa !37
  br label %if.end1155

if.end1155:                                       ; preds = %if.else1151, %if.then1150
  br label %for.inc

for.inc:                                          ; preds = %if.end1155
  %945 = load i32, i32* %i, align 4, !tbaa !34
  %inc1156 = add nsw i32 %945, 1
  store i32 %inc1156, i32* %i, align 4, !tbaa !34
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1163, %for.end
  %946 = load i32, i32* %i, align 4, !tbaa !34
  %cmp1158 = icmp slt i32 %946, 256
  br i1 %cmp1158, label %for.body1160, label %for.end1165

for.body1160:                                     ; preds = %for.cond1157
  %947 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %947, i32 0, i32 28
  %948 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1161 = sext i32 %948 to i64
  %arrayidx1162 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom1161
  store i8 0, i8* %arrayidx1162, align 1, !tbaa !37
  br label %for.inc1163

for.inc1163:                                      ; preds = %for.body1160
  %949 = load i32, i32* %i, align 4, !tbaa !34
  %inc1164 = add nsw i32 %949, 1
  store i32 %inc1164, i32* %i, align 4, !tbaa !34
  br label %for.cond1157, !llvm.loop !76

for.end1165:                                      ; preds = %for.cond1157
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1166

for.cond1166:                                     ; preds = %for.inc1245, %for.end1165
  %950 = load i32, i32* %i, align 4, !tbaa !34
  %cmp1167 = icmp slt i32 %950, 16
  br i1 %cmp1167, label %for.body1169, label %for.end1247

for.body1169:                                     ; preds = %for.cond1166
  %951 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse161170 = getelementptr inbounds %struct.DState, %struct.DState* %951, i32 0, i32 29
  %952 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1171 = sext i32 %952 to i64
  %arrayidx1172 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161170, i64 0, i64 %idxprom1171
  %953 = load i8, i8* %arrayidx1172, align 1, !tbaa !37
  %tobool1173 = icmp ne i8 %953, 0
  br i1 %tobool1173, label %if.then1174, label %if.end1244

if.then1174:                                      ; preds = %for.body1169
  store i32 0, i32* %j, align 4, !tbaa !34
  br label %for.cond1175

for.cond1175:                                     ; preds = %for.inc1241, %if.then1174
  %954 = load i32, i32* %j, align 4, !tbaa !34
  %cmp1176 = icmp slt i32 %954, 16
  br i1 %cmp1176, label %for.body1178, label %for.end1243

for.body1178:                                     ; preds = %for.cond1175
  br label %sw.bb1179

sw.bb1179:                                        ; preds = %if.end, %for.body1178
  %955 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1180 = getelementptr inbounds %struct.DState, %struct.DState* %955, i32 0, i32 1
  store i32 29, i32* %state1180, align 8, !tbaa !9
  br label %while.cond1181

while.cond1181:                                   ; preds = %if.end1229, %sw.bb1179
  br label %while.body1182

while.body1182:                                   ; preds = %while.cond1181
  %956 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1183 = getelementptr inbounds %struct.DState, %struct.DState* %956, i32 0, i32 8
  %957 = load i32, i32* %bsLive1183, align 4, !tbaa !35
  %cmp1184 = icmp sge i32 %957, 1
  br i1 %cmp1184, label %if.then1186, label %if.end1196

if.then1186:                                      ; preds = %while.body1182
  %958 = bitcast i32* %v1187 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %958) #3
  %959 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1188 = getelementptr inbounds %struct.DState, %struct.DState* %959, i32 0, i32 7
  %960 = load i32, i32* %bsBuff1188, align 8, !tbaa !36
  %961 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1189 = getelementptr inbounds %struct.DState, %struct.DState* %961, i32 0, i32 8
  %962 = load i32, i32* %bsLive1189, align 4, !tbaa !35
  %sub1190 = sub nsw i32 %962, 1
  %shr1191 = lshr i32 %960, %sub1190
  %and1192 = and i32 %shr1191, 1
  store i32 %and1192, i32* %v1187, align 4, !tbaa !34
  %963 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1193 = getelementptr inbounds %struct.DState, %struct.DState* %963, i32 0, i32 8
  %964 = load i32, i32* %bsLive1193, align 4, !tbaa !35
  %sub1194 = sub nsw i32 %964, 1
  store i32 %sub1194, i32* %bsLive1193, align 4, !tbaa !35
  %965 = load i32, i32* %v1187, align 4, !tbaa !34
  %conv1195 = trunc i32 %965 to i8
  store i8 %conv1195, i8* %uc, align 1, !tbaa !37
  %966 = bitcast i32* %v1187 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %966) #3
  br label %while.end1230

if.end1196:                                       ; preds = %while.body1182
  %967 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1197 = getelementptr inbounds %struct.DState, %struct.DState* %967, i32 0, i32 0
  %968 = load %struct.bz_stream*, %struct.bz_stream** %strm1197, align 8, !tbaa !6
  %avail_in1198 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %968, i32 0, i32 1
  %969 = load i32, i32* %avail_in1198, align 8, !tbaa !38
  %cmp1199 = icmp eq i32 %969, 0
  br i1 %cmp1199, label %if.then1201, label %if.end1202

if.then1201:                                      ; preds = %if.end1196
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1202:                                       ; preds = %if.end1196
  %970 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1203 = getelementptr inbounds %struct.DState, %struct.DState* %970, i32 0, i32 7
  %971 = load i32, i32* %bsBuff1203, align 8, !tbaa !36
  %shl1204 = shl i32 %971, 8
  %972 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1205 = getelementptr inbounds %struct.DState, %struct.DState* %972, i32 0, i32 0
  %973 = load %struct.bz_stream*, %struct.bz_stream** %strm1205, align 8, !tbaa !6
  %next_in1206 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %973, i32 0, i32 0
  %974 = load i8*, i8** %next_in1206, align 8, !tbaa !40
  %975 = load i8, i8* %974, align 1, !tbaa !37
  %conv1207 = zext i8 %975 to i32
  %or1208 = or i32 %shl1204, %conv1207
  %976 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1209 = getelementptr inbounds %struct.DState, %struct.DState* %976, i32 0, i32 7
  store i32 %or1208, i32* %bsBuff1209, align 8, !tbaa !36
  %977 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1210 = getelementptr inbounds %struct.DState, %struct.DState* %977, i32 0, i32 8
  %978 = load i32, i32* %bsLive1210, align 4, !tbaa !35
  %add1211 = add nsw i32 %978, 8
  store i32 %add1211, i32* %bsLive1210, align 4, !tbaa !35
  %979 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1212 = getelementptr inbounds %struct.DState, %struct.DState* %979, i32 0, i32 0
  %980 = load %struct.bz_stream*, %struct.bz_stream** %strm1212, align 8, !tbaa !6
  %next_in1213 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %980, i32 0, i32 0
  %981 = load i8*, i8** %next_in1213, align 8, !tbaa !40
  %incdec.ptr1214 = getelementptr inbounds i8, i8* %981, i32 1
  store i8* %incdec.ptr1214, i8** %next_in1213, align 8, !tbaa !40
  %982 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1215 = getelementptr inbounds %struct.DState, %struct.DState* %982, i32 0, i32 0
  %983 = load %struct.bz_stream*, %struct.bz_stream** %strm1215, align 8, !tbaa !6
  %avail_in1216 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %983, i32 0, i32 1
  %984 = load i32, i32* %avail_in1216, align 8, !tbaa !38
  %dec1217 = add i32 %984, -1
  store i32 %dec1217, i32* %avail_in1216, align 8, !tbaa !38
  %985 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1218 = getelementptr inbounds %struct.DState, %struct.DState* %985, i32 0, i32 0
  %986 = load %struct.bz_stream*, %struct.bz_stream** %strm1218, align 8, !tbaa !6
  %total_in_lo321219 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %986, i32 0, i32 2
  %987 = load i32, i32* %total_in_lo321219, align 4, !tbaa !41
  %inc1220 = add i32 %987, 1
  store i32 %inc1220, i32* %total_in_lo321219, align 4, !tbaa !41
  %988 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1221 = getelementptr inbounds %struct.DState, %struct.DState* %988, i32 0, i32 0
  %989 = load %struct.bz_stream*, %struct.bz_stream** %strm1221, align 8, !tbaa !6
  %total_in_lo321222 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %989, i32 0, i32 2
  %990 = load i32, i32* %total_in_lo321222, align 4, !tbaa !41
  %cmp1223 = icmp eq i32 %990, 0
  br i1 %cmp1223, label %if.then1225, label %if.end1229

if.then1225:                                      ; preds = %if.end1202
  %991 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1226 = getelementptr inbounds %struct.DState, %struct.DState* %991, i32 0, i32 0
  %992 = load %struct.bz_stream*, %struct.bz_stream** %strm1226, align 8, !tbaa !6
  %total_in_hi321227 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %992, i32 0, i32 3
  %993 = load i32, i32* %total_in_hi321227, align 8, !tbaa !42
  %inc1228 = add i32 %993, 1
  store i32 %inc1228, i32* %total_in_hi321227, align 8, !tbaa !42
  br label %if.end1229

if.end1229:                                       ; preds = %if.then1225, %if.end1202
  br label %while.cond1181, !llvm.loop !77

while.end1230:                                    ; preds = %if.then1186
  %994 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1231 = zext i8 %994 to i32
  %cmp1232 = icmp eq i32 %conv1231, 1
  br i1 %cmp1232, label %if.then1234, label %if.end1240

if.then1234:                                      ; preds = %while.end1230
  %995 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse1235 = getelementptr inbounds %struct.DState, %struct.DState* %995, i32 0, i32 28
  %996 = load i32, i32* %i, align 4, !tbaa !34
  %mul1236 = mul nsw i32 %996, 16
  %997 = load i32, i32* %j, align 4, !tbaa !34
  %add1237 = add nsw i32 %mul1236, %997
  %idxprom1238 = sext i32 %add1237 to i64
  %arrayidx1239 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse1235, i64 0, i64 %idxprom1238
  store i8 1, i8* %arrayidx1239, align 1, !tbaa !37
  br label %if.end1240

if.end1240:                                       ; preds = %if.then1234, %while.end1230
  br label %for.inc1241

for.inc1241:                                      ; preds = %if.end1240
  %998 = load i32, i32* %j, align 4, !tbaa !34
  %inc1242 = add nsw i32 %998, 1
  store i32 %inc1242, i32* %j, align 4, !tbaa !34
  br label %for.cond1175, !llvm.loop !78

for.end1243:                                      ; preds = %for.cond1175
  br label %if.end1244

if.end1244:                                       ; preds = %for.end1243, %for.body1169
  br label %for.inc1245

for.inc1245:                                      ; preds = %if.end1244
  %999 = load i32, i32* %i, align 4, !tbaa !34
  %inc1246 = add nsw i32 %999, 1
  store i32 %inc1246, i32* %i, align 4, !tbaa !34
  br label %for.cond1166, !llvm.loop !79

for.end1247:                                      ; preds = %for.cond1166
  %1000 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  call void @makeMaps_d(%struct.DState* %1000)
  %1001 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %1001, i32 0, i32 27
  %1002 = load i32, i32* %nInUse, align 8, !tbaa !80
  %cmp1248 = icmp eq i32 %1002, 0
  br i1 %cmp1248, label %if.then1250, label %if.end1251

if.then1250:                                      ; preds = %for.end1247
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1251:                                       ; preds = %for.end1247
  %1003 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse1252 = getelementptr inbounds %struct.DState, %struct.DState* %1003, i32 0, i32 27
  %1004 = load i32, i32* %nInUse1252, align 8, !tbaa !80
  %add1253 = add nsw i32 %1004, 2
  store i32 %add1253, i32* %alphaSize, align 4, !tbaa !34
  br label %sw.bb1254

sw.bb1254:                                        ; preds = %if.end, %if.end1251
  %1005 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1255 = getelementptr inbounds %struct.DState, %struct.DState* %1005, i32 0, i32 1
  store i32 30, i32* %state1255, align 8, !tbaa !9
  br label %while.cond1256

while.cond1256:                                   ; preds = %if.end1303, %sw.bb1254
  br label %while.body1257

while.body1257:                                   ; preds = %while.cond1256
  %1006 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1258 = getelementptr inbounds %struct.DState, %struct.DState* %1006, i32 0, i32 8
  %1007 = load i32, i32* %bsLive1258, align 4, !tbaa !35
  %cmp1259 = icmp sge i32 %1007, 3
  br i1 %cmp1259, label %if.then1261, label %if.end1270

if.then1261:                                      ; preds = %while.body1257
  %1008 = bitcast i32* %v1262 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1008) #3
  %1009 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1263 = getelementptr inbounds %struct.DState, %struct.DState* %1009, i32 0, i32 7
  %1010 = load i32, i32* %bsBuff1263, align 8, !tbaa !36
  %1011 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1264 = getelementptr inbounds %struct.DState, %struct.DState* %1011, i32 0, i32 8
  %1012 = load i32, i32* %bsLive1264, align 4, !tbaa !35
  %sub1265 = sub nsw i32 %1012, 3
  %shr1266 = lshr i32 %1010, %sub1265
  %and1267 = and i32 %shr1266, 7
  store i32 %and1267, i32* %v1262, align 4, !tbaa !34
  %1013 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1268 = getelementptr inbounds %struct.DState, %struct.DState* %1013, i32 0, i32 8
  %1014 = load i32, i32* %bsLive1268, align 4, !tbaa !35
  %sub1269 = sub nsw i32 %1014, 3
  store i32 %sub1269, i32* %bsLive1268, align 4, !tbaa !35
  %1015 = load i32, i32* %v1262, align 4, !tbaa !34
  store i32 %1015, i32* %nGroups, align 4, !tbaa !34
  %1016 = bitcast i32* %v1262 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1016) #3
  br label %while.end1304

if.end1270:                                       ; preds = %while.body1257
  %1017 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1271 = getelementptr inbounds %struct.DState, %struct.DState* %1017, i32 0, i32 0
  %1018 = load %struct.bz_stream*, %struct.bz_stream** %strm1271, align 8, !tbaa !6
  %avail_in1272 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1018, i32 0, i32 1
  %1019 = load i32, i32* %avail_in1272, align 8, !tbaa !38
  %cmp1273 = icmp eq i32 %1019, 0
  br i1 %cmp1273, label %if.then1275, label %if.end1276

if.then1275:                                      ; preds = %if.end1270
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1276:                                       ; preds = %if.end1270
  %1020 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1277 = getelementptr inbounds %struct.DState, %struct.DState* %1020, i32 0, i32 7
  %1021 = load i32, i32* %bsBuff1277, align 8, !tbaa !36
  %shl1278 = shl i32 %1021, 8
  %1022 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1279 = getelementptr inbounds %struct.DState, %struct.DState* %1022, i32 0, i32 0
  %1023 = load %struct.bz_stream*, %struct.bz_stream** %strm1279, align 8, !tbaa !6
  %next_in1280 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1023, i32 0, i32 0
  %1024 = load i8*, i8** %next_in1280, align 8, !tbaa !40
  %1025 = load i8, i8* %1024, align 1, !tbaa !37
  %conv1281 = zext i8 %1025 to i32
  %or1282 = or i32 %shl1278, %conv1281
  %1026 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1283 = getelementptr inbounds %struct.DState, %struct.DState* %1026, i32 0, i32 7
  store i32 %or1282, i32* %bsBuff1283, align 8, !tbaa !36
  %1027 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1284 = getelementptr inbounds %struct.DState, %struct.DState* %1027, i32 0, i32 8
  %1028 = load i32, i32* %bsLive1284, align 4, !tbaa !35
  %add1285 = add nsw i32 %1028, 8
  store i32 %add1285, i32* %bsLive1284, align 4, !tbaa !35
  %1029 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1286 = getelementptr inbounds %struct.DState, %struct.DState* %1029, i32 0, i32 0
  %1030 = load %struct.bz_stream*, %struct.bz_stream** %strm1286, align 8, !tbaa !6
  %next_in1287 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1030, i32 0, i32 0
  %1031 = load i8*, i8** %next_in1287, align 8, !tbaa !40
  %incdec.ptr1288 = getelementptr inbounds i8, i8* %1031, i32 1
  store i8* %incdec.ptr1288, i8** %next_in1287, align 8, !tbaa !40
  %1032 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1289 = getelementptr inbounds %struct.DState, %struct.DState* %1032, i32 0, i32 0
  %1033 = load %struct.bz_stream*, %struct.bz_stream** %strm1289, align 8, !tbaa !6
  %avail_in1290 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1033, i32 0, i32 1
  %1034 = load i32, i32* %avail_in1290, align 8, !tbaa !38
  %dec1291 = add i32 %1034, -1
  store i32 %dec1291, i32* %avail_in1290, align 8, !tbaa !38
  %1035 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1292 = getelementptr inbounds %struct.DState, %struct.DState* %1035, i32 0, i32 0
  %1036 = load %struct.bz_stream*, %struct.bz_stream** %strm1292, align 8, !tbaa !6
  %total_in_lo321293 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1036, i32 0, i32 2
  %1037 = load i32, i32* %total_in_lo321293, align 4, !tbaa !41
  %inc1294 = add i32 %1037, 1
  store i32 %inc1294, i32* %total_in_lo321293, align 4, !tbaa !41
  %1038 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1295 = getelementptr inbounds %struct.DState, %struct.DState* %1038, i32 0, i32 0
  %1039 = load %struct.bz_stream*, %struct.bz_stream** %strm1295, align 8, !tbaa !6
  %total_in_lo321296 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1039, i32 0, i32 2
  %1040 = load i32, i32* %total_in_lo321296, align 4, !tbaa !41
  %cmp1297 = icmp eq i32 %1040, 0
  br i1 %cmp1297, label %if.then1299, label %if.end1303

if.then1299:                                      ; preds = %if.end1276
  %1041 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1300 = getelementptr inbounds %struct.DState, %struct.DState* %1041, i32 0, i32 0
  %1042 = load %struct.bz_stream*, %struct.bz_stream** %strm1300, align 8, !tbaa !6
  %total_in_hi321301 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1042, i32 0, i32 3
  %1043 = load i32, i32* %total_in_hi321301, align 8, !tbaa !42
  %inc1302 = add i32 %1043, 1
  store i32 %inc1302, i32* %total_in_hi321301, align 8, !tbaa !42
  br label %if.end1303

if.end1303:                                       ; preds = %if.then1299, %if.end1276
  br label %while.cond1256, !llvm.loop !81

while.end1304:                                    ; preds = %if.then1261
  %1044 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1305 = icmp slt i32 %1044, 2
  br i1 %cmp1305, label %if.then1310, label %lor.lhs.false1307

lor.lhs.false1307:                                ; preds = %while.end1304
  %1045 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1308 = icmp sgt i32 %1045, 6
  br i1 %cmp1308, label %if.then1310, label %if.end1311

if.then1310:                                      ; preds = %lor.lhs.false1307, %while.end1304
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1311:                                       ; preds = %lor.lhs.false1307
  br label %sw.bb1312

sw.bb1312:                                        ; preds = %if.end, %if.end1311
  %1046 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1313 = getelementptr inbounds %struct.DState, %struct.DState* %1046, i32 0, i32 1
  store i32 31, i32* %state1313, align 8, !tbaa !9
  br label %while.cond1314

while.cond1314:                                   ; preds = %if.end1361, %sw.bb1312
  br label %while.body1315

while.body1315:                                   ; preds = %while.cond1314
  %1047 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1316 = getelementptr inbounds %struct.DState, %struct.DState* %1047, i32 0, i32 8
  %1048 = load i32, i32* %bsLive1316, align 4, !tbaa !35
  %cmp1317 = icmp sge i32 %1048, 15
  br i1 %cmp1317, label %if.then1319, label %if.end1328

if.then1319:                                      ; preds = %while.body1315
  %1049 = bitcast i32* %v1320 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1049) #3
  %1050 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1321 = getelementptr inbounds %struct.DState, %struct.DState* %1050, i32 0, i32 7
  %1051 = load i32, i32* %bsBuff1321, align 8, !tbaa !36
  %1052 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1322 = getelementptr inbounds %struct.DState, %struct.DState* %1052, i32 0, i32 8
  %1053 = load i32, i32* %bsLive1322, align 4, !tbaa !35
  %sub1323 = sub nsw i32 %1053, 15
  %shr1324 = lshr i32 %1051, %sub1323
  %and1325 = and i32 %shr1324, 32767
  store i32 %and1325, i32* %v1320, align 4, !tbaa !34
  %1054 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1326 = getelementptr inbounds %struct.DState, %struct.DState* %1054, i32 0, i32 8
  %1055 = load i32, i32* %bsLive1326, align 4, !tbaa !35
  %sub1327 = sub nsw i32 %1055, 15
  store i32 %sub1327, i32* %bsLive1326, align 4, !tbaa !35
  %1056 = load i32, i32* %v1320, align 4, !tbaa !34
  store i32 %1056, i32* %nSelectors, align 4, !tbaa !34
  %1057 = bitcast i32* %v1320 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1057) #3
  br label %while.end1362

if.end1328:                                       ; preds = %while.body1315
  %1058 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1329 = getelementptr inbounds %struct.DState, %struct.DState* %1058, i32 0, i32 0
  %1059 = load %struct.bz_stream*, %struct.bz_stream** %strm1329, align 8, !tbaa !6
  %avail_in1330 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1059, i32 0, i32 1
  %1060 = load i32, i32* %avail_in1330, align 8, !tbaa !38
  %cmp1331 = icmp eq i32 %1060, 0
  br i1 %cmp1331, label %if.then1333, label %if.end1334

if.then1333:                                      ; preds = %if.end1328
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1334:                                       ; preds = %if.end1328
  %1061 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1335 = getelementptr inbounds %struct.DState, %struct.DState* %1061, i32 0, i32 7
  %1062 = load i32, i32* %bsBuff1335, align 8, !tbaa !36
  %shl1336 = shl i32 %1062, 8
  %1063 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1337 = getelementptr inbounds %struct.DState, %struct.DState* %1063, i32 0, i32 0
  %1064 = load %struct.bz_stream*, %struct.bz_stream** %strm1337, align 8, !tbaa !6
  %next_in1338 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1064, i32 0, i32 0
  %1065 = load i8*, i8** %next_in1338, align 8, !tbaa !40
  %1066 = load i8, i8* %1065, align 1, !tbaa !37
  %conv1339 = zext i8 %1066 to i32
  %or1340 = or i32 %shl1336, %conv1339
  %1067 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1341 = getelementptr inbounds %struct.DState, %struct.DState* %1067, i32 0, i32 7
  store i32 %or1340, i32* %bsBuff1341, align 8, !tbaa !36
  %1068 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1342 = getelementptr inbounds %struct.DState, %struct.DState* %1068, i32 0, i32 8
  %1069 = load i32, i32* %bsLive1342, align 4, !tbaa !35
  %add1343 = add nsw i32 %1069, 8
  store i32 %add1343, i32* %bsLive1342, align 4, !tbaa !35
  %1070 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1344 = getelementptr inbounds %struct.DState, %struct.DState* %1070, i32 0, i32 0
  %1071 = load %struct.bz_stream*, %struct.bz_stream** %strm1344, align 8, !tbaa !6
  %next_in1345 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1071, i32 0, i32 0
  %1072 = load i8*, i8** %next_in1345, align 8, !tbaa !40
  %incdec.ptr1346 = getelementptr inbounds i8, i8* %1072, i32 1
  store i8* %incdec.ptr1346, i8** %next_in1345, align 8, !tbaa !40
  %1073 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1347 = getelementptr inbounds %struct.DState, %struct.DState* %1073, i32 0, i32 0
  %1074 = load %struct.bz_stream*, %struct.bz_stream** %strm1347, align 8, !tbaa !6
  %avail_in1348 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1074, i32 0, i32 1
  %1075 = load i32, i32* %avail_in1348, align 8, !tbaa !38
  %dec1349 = add i32 %1075, -1
  store i32 %dec1349, i32* %avail_in1348, align 8, !tbaa !38
  %1076 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1350 = getelementptr inbounds %struct.DState, %struct.DState* %1076, i32 0, i32 0
  %1077 = load %struct.bz_stream*, %struct.bz_stream** %strm1350, align 8, !tbaa !6
  %total_in_lo321351 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1077, i32 0, i32 2
  %1078 = load i32, i32* %total_in_lo321351, align 4, !tbaa !41
  %inc1352 = add i32 %1078, 1
  store i32 %inc1352, i32* %total_in_lo321351, align 4, !tbaa !41
  %1079 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1353 = getelementptr inbounds %struct.DState, %struct.DState* %1079, i32 0, i32 0
  %1080 = load %struct.bz_stream*, %struct.bz_stream** %strm1353, align 8, !tbaa !6
  %total_in_lo321354 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1080, i32 0, i32 2
  %1081 = load i32, i32* %total_in_lo321354, align 4, !tbaa !41
  %cmp1355 = icmp eq i32 %1081, 0
  br i1 %cmp1355, label %if.then1357, label %if.end1361

if.then1357:                                      ; preds = %if.end1334
  %1082 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1358 = getelementptr inbounds %struct.DState, %struct.DState* %1082, i32 0, i32 0
  %1083 = load %struct.bz_stream*, %struct.bz_stream** %strm1358, align 8, !tbaa !6
  %total_in_hi321359 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1083, i32 0, i32 3
  %1084 = load i32, i32* %total_in_hi321359, align 8, !tbaa !42
  %inc1360 = add i32 %1084, 1
  store i32 %inc1360, i32* %total_in_hi321359, align 8, !tbaa !42
  br label %if.end1361

if.end1361:                                       ; preds = %if.then1357, %if.end1334
  br label %while.cond1314, !llvm.loop !82

while.end1362:                                    ; preds = %if.then1319
  %1085 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp1363 = icmp slt i32 %1085, 1
  br i1 %cmp1363, label %if.then1365, label %if.end1366

if.then1365:                                      ; preds = %while.end1362
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1366:                                       ; preds = %while.end1362
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1367

for.cond1367:                                     ; preds = %for.inc1439, %if.end1366
  %1086 = load i32, i32* %i, align 4, !tbaa !34
  %1087 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp1368 = icmp slt i32 %1086, %1087
  br i1 %cmp1368, label %for.body1370, label %for.end1441

for.body1370:                                     ; preds = %for.cond1367
  store i32 0, i32* %j, align 4, !tbaa !34
  br label %while.cond1371

while.cond1371:                                   ; preds = %if.end1434, %for.body1370
  br label %while.body1372

while.body1372:                                   ; preds = %while.cond1371
  br label %sw.bb1373

sw.bb1373:                                        ; preds = %if.end, %while.body1372
  %1088 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1374 = getelementptr inbounds %struct.DState, %struct.DState* %1088, i32 0, i32 1
  store i32 32, i32* %state1374, align 8, !tbaa !9
  br label %while.cond1375

while.cond1375:                                   ; preds = %if.end1423, %sw.bb1373
  br label %while.body1376

while.body1376:                                   ; preds = %while.cond1375
  %1089 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1377 = getelementptr inbounds %struct.DState, %struct.DState* %1089, i32 0, i32 8
  %1090 = load i32, i32* %bsLive1377, align 4, !tbaa !35
  %cmp1378 = icmp sge i32 %1090, 1
  br i1 %cmp1378, label %if.then1380, label %if.end1390

if.then1380:                                      ; preds = %while.body1376
  %1091 = bitcast i32* %v1381 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1091) #3
  %1092 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1382 = getelementptr inbounds %struct.DState, %struct.DState* %1092, i32 0, i32 7
  %1093 = load i32, i32* %bsBuff1382, align 8, !tbaa !36
  %1094 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1383 = getelementptr inbounds %struct.DState, %struct.DState* %1094, i32 0, i32 8
  %1095 = load i32, i32* %bsLive1383, align 4, !tbaa !35
  %sub1384 = sub nsw i32 %1095, 1
  %shr1385 = lshr i32 %1093, %sub1384
  %and1386 = and i32 %shr1385, 1
  store i32 %and1386, i32* %v1381, align 4, !tbaa !34
  %1096 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1387 = getelementptr inbounds %struct.DState, %struct.DState* %1096, i32 0, i32 8
  %1097 = load i32, i32* %bsLive1387, align 4, !tbaa !35
  %sub1388 = sub nsw i32 %1097, 1
  store i32 %sub1388, i32* %bsLive1387, align 4, !tbaa !35
  %1098 = load i32, i32* %v1381, align 4, !tbaa !34
  %conv1389 = trunc i32 %1098 to i8
  store i8 %conv1389, i8* %uc, align 1, !tbaa !37
  %1099 = bitcast i32* %v1381 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1099) #3
  br label %while.end1424

if.end1390:                                       ; preds = %while.body1376
  %1100 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1391 = getelementptr inbounds %struct.DState, %struct.DState* %1100, i32 0, i32 0
  %1101 = load %struct.bz_stream*, %struct.bz_stream** %strm1391, align 8, !tbaa !6
  %avail_in1392 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1101, i32 0, i32 1
  %1102 = load i32, i32* %avail_in1392, align 8, !tbaa !38
  %cmp1393 = icmp eq i32 %1102, 0
  br i1 %cmp1393, label %if.then1395, label %if.end1396

if.then1395:                                      ; preds = %if.end1390
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1396:                                       ; preds = %if.end1390
  %1103 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1397 = getelementptr inbounds %struct.DState, %struct.DState* %1103, i32 0, i32 7
  %1104 = load i32, i32* %bsBuff1397, align 8, !tbaa !36
  %shl1398 = shl i32 %1104, 8
  %1105 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1399 = getelementptr inbounds %struct.DState, %struct.DState* %1105, i32 0, i32 0
  %1106 = load %struct.bz_stream*, %struct.bz_stream** %strm1399, align 8, !tbaa !6
  %next_in1400 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1106, i32 0, i32 0
  %1107 = load i8*, i8** %next_in1400, align 8, !tbaa !40
  %1108 = load i8, i8* %1107, align 1, !tbaa !37
  %conv1401 = zext i8 %1108 to i32
  %or1402 = or i32 %shl1398, %conv1401
  %1109 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1403 = getelementptr inbounds %struct.DState, %struct.DState* %1109, i32 0, i32 7
  store i32 %or1402, i32* %bsBuff1403, align 8, !tbaa !36
  %1110 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1404 = getelementptr inbounds %struct.DState, %struct.DState* %1110, i32 0, i32 8
  %1111 = load i32, i32* %bsLive1404, align 4, !tbaa !35
  %add1405 = add nsw i32 %1111, 8
  store i32 %add1405, i32* %bsLive1404, align 4, !tbaa !35
  %1112 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1406 = getelementptr inbounds %struct.DState, %struct.DState* %1112, i32 0, i32 0
  %1113 = load %struct.bz_stream*, %struct.bz_stream** %strm1406, align 8, !tbaa !6
  %next_in1407 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1113, i32 0, i32 0
  %1114 = load i8*, i8** %next_in1407, align 8, !tbaa !40
  %incdec.ptr1408 = getelementptr inbounds i8, i8* %1114, i32 1
  store i8* %incdec.ptr1408, i8** %next_in1407, align 8, !tbaa !40
  %1115 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1409 = getelementptr inbounds %struct.DState, %struct.DState* %1115, i32 0, i32 0
  %1116 = load %struct.bz_stream*, %struct.bz_stream** %strm1409, align 8, !tbaa !6
  %avail_in1410 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1116, i32 0, i32 1
  %1117 = load i32, i32* %avail_in1410, align 8, !tbaa !38
  %dec1411 = add i32 %1117, -1
  store i32 %dec1411, i32* %avail_in1410, align 8, !tbaa !38
  %1118 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1412 = getelementptr inbounds %struct.DState, %struct.DState* %1118, i32 0, i32 0
  %1119 = load %struct.bz_stream*, %struct.bz_stream** %strm1412, align 8, !tbaa !6
  %total_in_lo321413 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1119, i32 0, i32 2
  %1120 = load i32, i32* %total_in_lo321413, align 4, !tbaa !41
  %inc1414 = add i32 %1120, 1
  store i32 %inc1414, i32* %total_in_lo321413, align 4, !tbaa !41
  %1121 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1415 = getelementptr inbounds %struct.DState, %struct.DState* %1121, i32 0, i32 0
  %1122 = load %struct.bz_stream*, %struct.bz_stream** %strm1415, align 8, !tbaa !6
  %total_in_lo321416 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1122, i32 0, i32 2
  %1123 = load i32, i32* %total_in_lo321416, align 4, !tbaa !41
  %cmp1417 = icmp eq i32 %1123, 0
  br i1 %cmp1417, label %if.then1419, label %if.end1423

if.then1419:                                      ; preds = %if.end1396
  %1124 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1420 = getelementptr inbounds %struct.DState, %struct.DState* %1124, i32 0, i32 0
  %1125 = load %struct.bz_stream*, %struct.bz_stream** %strm1420, align 8, !tbaa !6
  %total_in_hi321421 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1125, i32 0, i32 3
  %1126 = load i32, i32* %total_in_hi321421, align 8, !tbaa !42
  %inc1422 = add i32 %1126, 1
  store i32 %inc1422, i32* %total_in_hi321421, align 8, !tbaa !42
  br label %if.end1423

if.end1423:                                       ; preds = %if.then1419, %if.end1396
  br label %while.cond1375, !llvm.loop !83

while.end1424:                                    ; preds = %if.then1380
  %1127 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1425 = zext i8 %1127 to i32
  %cmp1426 = icmp eq i32 %conv1425, 0
  br i1 %cmp1426, label %if.then1428, label %if.end1429

if.then1428:                                      ; preds = %while.end1424
  br label %while.end1435

if.end1429:                                       ; preds = %while.end1424
  %1128 = load i32, i32* %j, align 4, !tbaa !34
  %inc1430 = add nsw i32 %1128, 1
  store i32 %inc1430, i32* %j, align 4, !tbaa !34
  %1129 = load i32, i32* %j, align 4, !tbaa !34
  %1130 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1431 = icmp sge i32 %1129, %1130
  br i1 %cmp1431, label %if.then1433, label %if.end1434

if.then1433:                                      ; preds = %if.end1429
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1434:                                       ; preds = %if.end1429
  br label %while.cond1371, !llvm.loop !84

while.end1435:                                    ; preds = %if.then1428
  %1131 = load i32, i32* %j, align 4, !tbaa !34
  %conv1436 = trunc i32 %1131 to i8
  %1132 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selectorMtf = getelementptr inbounds %struct.DState, %struct.DState* %1132, i32 0, i32 34
  %1133 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1437 = sext i32 %1133 to i64
  %arrayidx1438 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf, i64 0, i64 %idxprom1437
  store i8 %conv1436, i8* %arrayidx1438, align 1, !tbaa !37
  br label %for.inc1439

for.inc1439:                                      ; preds = %while.end1435
  %1134 = load i32, i32* %i, align 4, !tbaa !34
  %inc1440 = add nsw i32 %1134, 1
  store i32 %inc1440, i32* %i, align 4, !tbaa !34
  br label %for.cond1367, !llvm.loop !85

for.end1441:                                      ; preds = %for.cond1367
  %1135 = bitcast [6 x i8]* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 6, i8* %1135) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %tmp) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %v1442) #3
  store i8 0, i8* %v1442, align 1, !tbaa !37
  br label %for.cond1443

for.cond1443:                                     ; preds = %for.inc1450, %for.end1441
  %1136 = load i8, i8* %v1442, align 1, !tbaa !37
  %conv1444 = zext i8 %1136 to i32
  %1137 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1445 = icmp slt i32 %conv1444, %1137
  br i1 %cmp1445, label %for.body1447, label %for.end1452

for.body1447:                                     ; preds = %for.cond1443
  %1138 = load i8, i8* %v1442, align 1, !tbaa !37
  %1139 = load i8, i8* %v1442, align 1, !tbaa !37
  %idxprom1448 = zext i8 %1139 to i64
  %arrayidx1449 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1448
  store i8 %1138, i8* %arrayidx1449, align 1, !tbaa !37
  br label %for.inc1450

for.inc1450:                                      ; preds = %for.body1447
  %1140 = load i8, i8* %v1442, align 1, !tbaa !37
  %inc1451 = add i8 %1140, 1
  store i8 %inc1451, i8* %v1442, align 1, !tbaa !37
  br label %for.cond1443, !llvm.loop !86

for.end1452:                                      ; preds = %for.cond1443
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1453

for.cond1453:                                     ; preds = %for.inc1478, %for.end1452
  %1141 = load i32, i32* %i, align 4, !tbaa !34
  %1142 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp1454 = icmp slt i32 %1141, %1142
  br i1 %cmp1454, label %for.body1456, label %for.end1480

for.body1456:                                     ; preds = %for.cond1453
  %1143 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selectorMtf1457 = getelementptr inbounds %struct.DState, %struct.DState* %1143, i32 0, i32 34
  %1144 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1458 = sext i32 %1144 to i64
  %arrayidx1459 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf1457, i64 0, i64 %idxprom1458
  %1145 = load i8, i8* %arrayidx1459, align 1, !tbaa !37
  store i8 %1145, i8* %v1442, align 1, !tbaa !37
  %1146 = load i8, i8* %v1442, align 1, !tbaa !37
  %idxprom1460 = zext i8 %1146 to i64
  %arrayidx1461 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1460
  %1147 = load i8, i8* %arrayidx1461, align 1, !tbaa !37
  store i8 %1147, i8* %tmp, align 1, !tbaa !37
  br label %while.cond1462

while.cond1462:                                   ; preds = %while.body1466, %for.body1456
  %1148 = load i8, i8* %v1442, align 1, !tbaa !37
  %conv1463 = zext i8 %1148 to i32
  %cmp1464 = icmp sgt i32 %conv1463, 0
  br i1 %cmp1464, label %while.body1466, label %while.end1474

while.body1466:                                   ; preds = %while.cond1462
  %1149 = load i8, i8* %v1442, align 1, !tbaa !37
  %conv1467 = zext i8 %1149 to i32
  %sub1468 = sub nsw i32 %conv1467, 1
  %idxprom1469 = sext i32 %sub1468 to i64
  %arrayidx1470 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1469
  %1150 = load i8, i8* %arrayidx1470, align 1, !tbaa !37
  %1151 = load i8, i8* %v1442, align 1, !tbaa !37
  %idxprom1471 = zext i8 %1151 to i64
  %arrayidx1472 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1471
  store i8 %1150, i8* %arrayidx1472, align 1, !tbaa !37
  %1152 = load i8, i8* %v1442, align 1, !tbaa !37
  %dec1473 = add i8 %1152, -1
  store i8 %dec1473, i8* %v1442, align 1, !tbaa !37
  br label %while.cond1462, !llvm.loop !87

while.end1474:                                    ; preds = %while.cond1462
  %1153 = load i8, i8* %tmp, align 1, !tbaa !37
  %arrayidx1475 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 0
  store i8 %1153, i8* %arrayidx1475, align 1, !tbaa !37
  %1154 = load i8, i8* %tmp, align 1, !tbaa !37
  %1155 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selector = getelementptr inbounds %struct.DState, %struct.DState* %1155, i32 0, i32 33
  %1156 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1476 = sext i32 %1156 to i64
  %arrayidx1477 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector, i64 0, i64 %idxprom1476
  store i8 %1154, i8* %arrayidx1477, align 1, !tbaa !37
  br label %for.inc1478

for.inc1478:                                      ; preds = %while.end1474
  %1157 = load i32, i32* %i, align 4, !tbaa !34
  %inc1479 = add nsw i32 %1157, 1
  store i32 %inc1479, i32* %i, align 4, !tbaa !34
  br label %for.cond1453, !llvm.loop !88

for.end1480:                                      ; preds = %for.cond1453
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %v1442) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %tmp) #3
  %1158 = bitcast [6 x i8]* %pos to i8*
  call void @llvm.lifetime.end.p0i8(i64 6, i8* %1158) #3
  store i32 0, i32* %t, align 4, !tbaa !34
  br label %for.cond1481

for.cond1481:                                     ; preds = %for.inc1675, %for.end1480
  %1159 = load i32, i32* %t, align 4, !tbaa !34
  %1160 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1482 = icmp slt i32 %1159, %1160
  br i1 %cmp1482, label %for.body1484, label %for.end1677

for.body1484:                                     ; preds = %for.cond1481
  br label %sw.bb1485

sw.bb1485:                                        ; preds = %if.end, %for.body1484
  %1161 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1486 = getelementptr inbounds %struct.DState, %struct.DState* %1161, i32 0, i32 1
  store i32 33, i32* %state1486, align 8, !tbaa !9
  br label %while.cond1487

while.cond1487:                                   ; preds = %if.end1534, %sw.bb1485
  br label %while.body1488

while.body1488:                                   ; preds = %while.cond1487
  %1162 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1489 = getelementptr inbounds %struct.DState, %struct.DState* %1162, i32 0, i32 8
  %1163 = load i32, i32* %bsLive1489, align 4, !tbaa !35
  %cmp1490 = icmp sge i32 %1163, 5
  br i1 %cmp1490, label %if.then1492, label %if.end1501

if.then1492:                                      ; preds = %while.body1488
  %1164 = bitcast i32* %v1493 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1164) #3
  %1165 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1494 = getelementptr inbounds %struct.DState, %struct.DState* %1165, i32 0, i32 7
  %1166 = load i32, i32* %bsBuff1494, align 8, !tbaa !36
  %1167 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1495 = getelementptr inbounds %struct.DState, %struct.DState* %1167, i32 0, i32 8
  %1168 = load i32, i32* %bsLive1495, align 4, !tbaa !35
  %sub1496 = sub nsw i32 %1168, 5
  %shr1497 = lshr i32 %1166, %sub1496
  %and1498 = and i32 %shr1497, 31
  store i32 %and1498, i32* %v1493, align 4, !tbaa !34
  %1169 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1499 = getelementptr inbounds %struct.DState, %struct.DState* %1169, i32 0, i32 8
  %1170 = load i32, i32* %bsLive1499, align 4, !tbaa !35
  %sub1500 = sub nsw i32 %1170, 5
  store i32 %sub1500, i32* %bsLive1499, align 4, !tbaa !35
  %1171 = load i32, i32* %v1493, align 4, !tbaa !34
  store i32 %1171, i32* %curr, align 4, !tbaa !34
  %1172 = bitcast i32* %v1493 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1172) #3
  br label %while.end1535

if.end1501:                                       ; preds = %while.body1488
  %1173 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1502 = getelementptr inbounds %struct.DState, %struct.DState* %1173, i32 0, i32 0
  %1174 = load %struct.bz_stream*, %struct.bz_stream** %strm1502, align 8, !tbaa !6
  %avail_in1503 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1174, i32 0, i32 1
  %1175 = load i32, i32* %avail_in1503, align 8, !tbaa !38
  %cmp1504 = icmp eq i32 %1175, 0
  br i1 %cmp1504, label %if.then1506, label %if.end1507

if.then1506:                                      ; preds = %if.end1501
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1507:                                       ; preds = %if.end1501
  %1176 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1508 = getelementptr inbounds %struct.DState, %struct.DState* %1176, i32 0, i32 7
  %1177 = load i32, i32* %bsBuff1508, align 8, !tbaa !36
  %shl1509 = shl i32 %1177, 8
  %1178 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1510 = getelementptr inbounds %struct.DState, %struct.DState* %1178, i32 0, i32 0
  %1179 = load %struct.bz_stream*, %struct.bz_stream** %strm1510, align 8, !tbaa !6
  %next_in1511 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1179, i32 0, i32 0
  %1180 = load i8*, i8** %next_in1511, align 8, !tbaa !40
  %1181 = load i8, i8* %1180, align 1, !tbaa !37
  %conv1512 = zext i8 %1181 to i32
  %or1513 = or i32 %shl1509, %conv1512
  %1182 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1514 = getelementptr inbounds %struct.DState, %struct.DState* %1182, i32 0, i32 7
  store i32 %or1513, i32* %bsBuff1514, align 8, !tbaa !36
  %1183 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1515 = getelementptr inbounds %struct.DState, %struct.DState* %1183, i32 0, i32 8
  %1184 = load i32, i32* %bsLive1515, align 4, !tbaa !35
  %add1516 = add nsw i32 %1184, 8
  store i32 %add1516, i32* %bsLive1515, align 4, !tbaa !35
  %1185 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1517 = getelementptr inbounds %struct.DState, %struct.DState* %1185, i32 0, i32 0
  %1186 = load %struct.bz_stream*, %struct.bz_stream** %strm1517, align 8, !tbaa !6
  %next_in1518 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1186, i32 0, i32 0
  %1187 = load i8*, i8** %next_in1518, align 8, !tbaa !40
  %incdec.ptr1519 = getelementptr inbounds i8, i8* %1187, i32 1
  store i8* %incdec.ptr1519, i8** %next_in1518, align 8, !tbaa !40
  %1188 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1520 = getelementptr inbounds %struct.DState, %struct.DState* %1188, i32 0, i32 0
  %1189 = load %struct.bz_stream*, %struct.bz_stream** %strm1520, align 8, !tbaa !6
  %avail_in1521 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1189, i32 0, i32 1
  %1190 = load i32, i32* %avail_in1521, align 8, !tbaa !38
  %dec1522 = add i32 %1190, -1
  store i32 %dec1522, i32* %avail_in1521, align 8, !tbaa !38
  %1191 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1523 = getelementptr inbounds %struct.DState, %struct.DState* %1191, i32 0, i32 0
  %1192 = load %struct.bz_stream*, %struct.bz_stream** %strm1523, align 8, !tbaa !6
  %total_in_lo321524 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1192, i32 0, i32 2
  %1193 = load i32, i32* %total_in_lo321524, align 4, !tbaa !41
  %inc1525 = add i32 %1193, 1
  store i32 %inc1525, i32* %total_in_lo321524, align 4, !tbaa !41
  %1194 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1526 = getelementptr inbounds %struct.DState, %struct.DState* %1194, i32 0, i32 0
  %1195 = load %struct.bz_stream*, %struct.bz_stream** %strm1526, align 8, !tbaa !6
  %total_in_lo321527 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1195, i32 0, i32 2
  %1196 = load i32, i32* %total_in_lo321527, align 4, !tbaa !41
  %cmp1528 = icmp eq i32 %1196, 0
  br i1 %cmp1528, label %if.then1530, label %if.end1534

if.then1530:                                      ; preds = %if.end1507
  %1197 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1531 = getelementptr inbounds %struct.DState, %struct.DState* %1197, i32 0, i32 0
  %1198 = load %struct.bz_stream*, %struct.bz_stream** %strm1531, align 8, !tbaa !6
  %total_in_hi321532 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1198, i32 0, i32 3
  %1199 = load i32, i32* %total_in_hi321532, align 8, !tbaa !42
  %inc1533 = add i32 %1199, 1
  store i32 %inc1533, i32* %total_in_hi321532, align 8, !tbaa !42
  br label %if.end1534

if.end1534:                                       ; preds = %if.then1530, %if.end1507
  br label %while.cond1487, !llvm.loop !89

while.end1535:                                    ; preds = %if.then1492
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1536

for.cond1536:                                     ; preds = %for.inc1672, %while.end1535
  %1200 = load i32, i32* %i, align 4, !tbaa !34
  %1201 = load i32, i32* %alphaSize, align 4, !tbaa !34
  %cmp1537 = icmp slt i32 %1200, %1201
  br i1 %cmp1537, label %for.body1539, label %for.end1674

for.body1539:                                     ; preds = %for.cond1536
  br label %while.cond1540

while.cond1540:                                   ; preds = %if.end1665, %for.body1539
  br label %while.body1541

while.body1541:                                   ; preds = %while.cond1540
  %1202 = load i32, i32* %curr, align 4, !tbaa !34
  %cmp1542 = icmp slt i32 %1202, 1
  br i1 %cmp1542, label %if.then1547, label %lor.lhs.false1544

lor.lhs.false1544:                                ; preds = %while.body1541
  %1203 = load i32, i32* %curr, align 4, !tbaa !34
  %cmp1545 = icmp sgt i32 %1203, 20
  br i1 %cmp1545, label %if.then1547, label %if.end1548

if.then1547:                                      ; preds = %lor.lhs.false1544, %while.body1541
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1548:                                       ; preds = %lor.lhs.false1544
  br label %sw.bb1549

sw.bb1549:                                        ; preds = %if.end, %if.end1548
  %1204 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1550 = getelementptr inbounds %struct.DState, %struct.DState* %1204, i32 0, i32 1
  store i32 34, i32* %state1550, align 8, !tbaa !9
  br label %while.cond1551

while.cond1551:                                   ; preds = %if.end1599, %sw.bb1549
  br label %while.body1552

while.body1552:                                   ; preds = %while.cond1551
  %1205 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1553 = getelementptr inbounds %struct.DState, %struct.DState* %1205, i32 0, i32 8
  %1206 = load i32, i32* %bsLive1553, align 4, !tbaa !35
  %cmp1554 = icmp sge i32 %1206, 1
  br i1 %cmp1554, label %if.then1556, label %if.end1566

if.then1556:                                      ; preds = %while.body1552
  %1207 = bitcast i32* %v1557 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1207) #3
  %1208 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1558 = getelementptr inbounds %struct.DState, %struct.DState* %1208, i32 0, i32 7
  %1209 = load i32, i32* %bsBuff1558, align 8, !tbaa !36
  %1210 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1559 = getelementptr inbounds %struct.DState, %struct.DState* %1210, i32 0, i32 8
  %1211 = load i32, i32* %bsLive1559, align 4, !tbaa !35
  %sub1560 = sub nsw i32 %1211, 1
  %shr1561 = lshr i32 %1209, %sub1560
  %and1562 = and i32 %shr1561, 1
  store i32 %and1562, i32* %v1557, align 4, !tbaa !34
  %1212 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1563 = getelementptr inbounds %struct.DState, %struct.DState* %1212, i32 0, i32 8
  %1213 = load i32, i32* %bsLive1563, align 4, !tbaa !35
  %sub1564 = sub nsw i32 %1213, 1
  store i32 %sub1564, i32* %bsLive1563, align 4, !tbaa !35
  %1214 = load i32, i32* %v1557, align 4, !tbaa !34
  %conv1565 = trunc i32 %1214 to i8
  store i8 %conv1565, i8* %uc, align 1, !tbaa !37
  %1215 = bitcast i32* %v1557 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1215) #3
  br label %while.end1600

if.end1566:                                       ; preds = %while.body1552
  %1216 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1567 = getelementptr inbounds %struct.DState, %struct.DState* %1216, i32 0, i32 0
  %1217 = load %struct.bz_stream*, %struct.bz_stream** %strm1567, align 8, !tbaa !6
  %avail_in1568 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1217, i32 0, i32 1
  %1218 = load i32, i32* %avail_in1568, align 8, !tbaa !38
  %cmp1569 = icmp eq i32 %1218, 0
  br i1 %cmp1569, label %if.then1571, label %if.end1572

if.then1571:                                      ; preds = %if.end1566
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1572:                                       ; preds = %if.end1566
  %1219 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1573 = getelementptr inbounds %struct.DState, %struct.DState* %1219, i32 0, i32 7
  %1220 = load i32, i32* %bsBuff1573, align 8, !tbaa !36
  %shl1574 = shl i32 %1220, 8
  %1221 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1575 = getelementptr inbounds %struct.DState, %struct.DState* %1221, i32 0, i32 0
  %1222 = load %struct.bz_stream*, %struct.bz_stream** %strm1575, align 8, !tbaa !6
  %next_in1576 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1222, i32 0, i32 0
  %1223 = load i8*, i8** %next_in1576, align 8, !tbaa !40
  %1224 = load i8, i8* %1223, align 1, !tbaa !37
  %conv1577 = zext i8 %1224 to i32
  %or1578 = or i32 %shl1574, %conv1577
  %1225 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1579 = getelementptr inbounds %struct.DState, %struct.DState* %1225, i32 0, i32 7
  store i32 %or1578, i32* %bsBuff1579, align 8, !tbaa !36
  %1226 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1580 = getelementptr inbounds %struct.DState, %struct.DState* %1226, i32 0, i32 8
  %1227 = load i32, i32* %bsLive1580, align 4, !tbaa !35
  %add1581 = add nsw i32 %1227, 8
  store i32 %add1581, i32* %bsLive1580, align 4, !tbaa !35
  %1228 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1582 = getelementptr inbounds %struct.DState, %struct.DState* %1228, i32 0, i32 0
  %1229 = load %struct.bz_stream*, %struct.bz_stream** %strm1582, align 8, !tbaa !6
  %next_in1583 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1229, i32 0, i32 0
  %1230 = load i8*, i8** %next_in1583, align 8, !tbaa !40
  %incdec.ptr1584 = getelementptr inbounds i8, i8* %1230, i32 1
  store i8* %incdec.ptr1584, i8** %next_in1583, align 8, !tbaa !40
  %1231 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1585 = getelementptr inbounds %struct.DState, %struct.DState* %1231, i32 0, i32 0
  %1232 = load %struct.bz_stream*, %struct.bz_stream** %strm1585, align 8, !tbaa !6
  %avail_in1586 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1232, i32 0, i32 1
  %1233 = load i32, i32* %avail_in1586, align 8, !tbaa !38
  %dec1587 = add i32 %1233, -1
  store i32 %dec1587, i32* %avail_in1586, align 8, !tbaa !38
  %1234 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1588 = getelementptr inbounds %struct.DState, %struct.DState* %1234, i32 0, i32 0
  %1235 = load %struct.bz_stream*, %struct.bz_stream** %strm1588, align 8, !tbaa !6
  %total_in_lo321589 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1235, i32 0, i32 2
  %1236 = load i32, i32* %total_in_lo321589, align 4, !tbaa !41
  %inc1590 = add i32 %1236, 1
  store i32 %inc1590, i32* %total_in_lo321589, align 4, !tbaa !41
  %1237 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1591 = getelementptr inbounds %struct.DState, %struct.DState* %1237, i32 0, i32 0
  %1238 = load %struct.bz_stream*, %struct.bz_stream** %strm1591, align 8, !tbaa !6
  %total_in_lo321592 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1238, i32 0, i32 2
  %1239 = load i32, i32* %total_in_lo321592, align 4, !tbaa !41
  %cmp1593 = icmp eq i32 %1239, 0
  br i1 %cmp1593, label %if.then1595, label %if.end1599

if.then1595:                                      ; preds = %if.end1572
  %1240 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1596 = getelementptr inbounds %struct.DState, %struct.DState* %1240, i32 0, i32 0
  %1241 = load %struct.bz_stream*, %struct.bz_stream** %strm1596, align 8, !tbaa !6
  %total_in_hi321597 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1241, i32 0, i32 3
  %1242 = load i32, i32* %total_in_hi321597, align 8, !tbaa !42
  %inc1598 = add i32 %1242, 1
  store i32 %inc1598, i32* %total_in_hi321597, align 8, !tbaa !42
  br label %if.end1599

if.end1599:                                       ; preds = %if.then1595, %if.end1572
  br label %while.cond1551, !llvm.loop !90

while.end1600:                                    ; preds = %if.then1556
  %1243 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1601 = zext i8 %1243 to i32
  %cmp1602 = icmp eq i32 %conv1601, 0
  br i1 %cmp1602, label %if.then1604, label %if.end1605

if.then1604:                                      ; preds = %while.end1600
  br label %while.end1666

if.end1605:                                       ; preds = %while.end1600
  br label %sw.bb1606

sw.bb1606:                                        ; preds = %if.end, %if.end1605
  %1244 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1607 = getelementptr inbounds %struct.DState, %struct.DState* %1244, i32 0, i32 1
  store i32 35, i32* %state1607, align 8, !tbaa !9
  br label %while.cond1608

while.cond1608:                                   ; preds = %if.end1656, %sw.bb1606
  br label %while.body1609

while.body1609:                                   ; preds = %while.cond1608
  %1245 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1610 = getelementptr inbounds %struct.DState, %struct.DState* %1245, i32 0, i32 8
  %1246 = load i32, i32* %bsLive1610, align 4, !tbaa !35
  %cmp1611 = icmp sge i32 %1246, 1
  br i1 %cmp1611, label %if.then1613, label %if.end1623

if.then1613:                                      ; preds = %while.body1609
  %1247 = bitcast i32* %v1614 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1247) #3
  %1248 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1615 = getelementptr inbounds %struct.DState, %struct.DState* %1248, i32 0, i32 7
  %1249 = load i32, i32* %bsBuff1615, align 8, !tbaa !36
  %1250 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1616 = getelementptr inbounds %struct.DState, %struct.DState* %1250, i32 0, i32 8
  %1251 = load i32, i32* %bsLive1616, align 4, !tbaa !35
  %sub1617 = sub nsw i32 %1251, 1
  %shr1618 = lshr i32 %1249, %sub1617
  %and1619 = and i32 %shr1618, 1
  store i32 %and1619, i32* %v1614, align 4, !tbaa !34
  %1252 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1620 = getelementptr inbounds %struct.DState, %struct.DState* %1252, i32 0, i32 8
  %1253 = load i32, i32* %bsLive1620, align 4, !tbaa !35
  %sub1621 = sub nsw i32 %1253, 1
  store i32 %sub1621, i32* %bsLive1620, align 4, !tbaa !35
  %1254 = load i32, i32* %v1614, align 4, !tbaa !34
  %conv1622 = trunc i32 %1254 to i8
  store i8 %conv1622, i8* %uc, align 1, !tbaa !37
  %1255 = bitcast i32* %v1614 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1255) #3
  br label %while.end1657

if.end1623:                                       ; preds = %while.body1609
  %1256 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1624 = getelementptr inbounds %struct.DState, %struct.DState* %1256, i32 0, i32 0
  %1257 = load %struct.bz_stream*, %struct.bz_stream** %strm1624, align 8, !tbaa !6
  %avail_in1625 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1257, i32 0, i32 1
  %1258 = load i32, i32* %avail_in1625, align 8, !tbaa !38
  %cmp1626 = icmp eq i32 %1258, 0
  br i1 %cmp1626, label %if.then1628, label %if.end1629

if.then1628:                                      ; preds = %if.end1623
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1629:                                       ; preds = %if.end1623
  %1259 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1630 = getelementptr inbounds %struct.DState, %struct.DState* %1259, i32 0, i32 7
  %1260 = load i32, i32* %bsBuff1630, align 8, !tbaa !36
  %shl1631 = shl i32 %1260, 8
  %1261 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1632 = getelementptr inbounds %struct.DState, %struct.DState* %1261, i32 0, i32 0
  %1262 = load %struct.bz_stream*, %struct.bz_stream** %strm1632, align 8, !tbaa !6
  %next_in1633 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1262, i32 0, i32 0
  %1263 = load i8*, i8** %next_in1633, align 8, !tbaa !40
  %1264 = load i8, i8* %1263, align 1, !tbaa !37
  %conv1634 = zext i8 %1264 to i32
  %or1635 = or i32 %shl1631, %conv1634
  %1265 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1636 = getelementptr inbounds %struct.DState, %struct.DState* %1265, i32 0, i32 7
  store i32 %or1635, i32* %bsBuff1636, align 8, !tbaa !36
  %1266 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1637 = getelementptr inbounds %struct.DState, %struct.DState* %1266, i32 0, i32 8
  %1267 = load i32, i32* %bsLive1637, align 4, !tbaa !35
  %add1638 = add nsw i32 %1267, 8
  store i32 %add1638, i32* %bsLive1637, align 4, !tbaa !35
  %1268 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1639 = getelementptr inbounds %struct.DState, %struct.DState* %1268, i32 0, i32 0
  %1269 = load %struct.bz_stream*, %struct.bz_stream** %strm1639, align 8, !tbaa !6
  %next_in1640 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1269, i32 0, i32 0
  %1270 = load i8*, i8** %next_in1640, align 8, !tbaa !40
  %incdec.ptr1641 = getelementptr inbounds i8, i8* %1270, i32 1
  store i8* %incdec.ptr1641, i8** %next_in1640, align 8, !tbaa !40
  %1271 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1642 = getelementptr inbounds %struct.DState, %struct.DState* %1271, i32 0, i32 0
  %1272 = load %struct.bz_stream*, %struct.bz_stream** %strm1642, align 8, !tbaa !6
  %avail_in1643 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1272, i32 0, i32 1
  %1273 = load i32, i32* %avail_in1643, align 8, !tbaa !38
  %dec1644 = add i32 %1273, -1
  store i32 %dec1644, i32* %avail_in1643, align 8, !tbaa !38
  %1274 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1645 = getelementptr inbounds %struct.DState, %struct.DState* %1274, i32 0, i32 0
  %1275 = load %struct.bz_stream*, %struct.bz_stream** %strm1645, align 8, !tbaa !6
  %total_in_lo321646 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1275, i32 0, i32 2
  %1276 = load i32, i32* %total_in_lo321646, align 4, !tbaa !41
  %inc1647 = add i32 %1276, 1
  store i32 %inc1647, i32* %total_in_lo321646, align 4, !tbaa !41
  %1277 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1648 = getelementptr inbounds %struct.DState, %struct.DState* %1277, i32 0, i32 0
  %1278 = load %struct.bz_stream*, %struct.bz_stream** %strm1648, align 8, !tbaa !6
  %total_in_lo321649 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1278, i32 0, i32 2
  %1279 = load i32, i32* %total_in_lo321649, align 4, !tbaa !41
  %cmp1650 = icmp eq i32 %1279, 0
  br i1 %cmp1650, label %if.then1652, label %if.end1656

if.then1652:                                      ; preds = %if.end1629
  %1280 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1653 = getelementptr inbounds %struct.DState, %struct.DState* %1280, i32 0, i32 0
  %1281 = load %struct.bz_stream*, %struct.bz_stream** %strm1653, align 8, !tbaa !6
  %total_in_hi321654 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1281, i32 0, i32 3
  %1282 = load i32, i32* %total_in_hi321654, align 8, !tbaa !42
  %inc1655 = add i32 %1282, 1
  store i32 %inc1655, i32* %total_in_hi321654, align 8, !tbaa !42
  br label %if.end1656

if.end1656:                                       ; preds = %if.then1652, %if.end1629
  br label %while.cond1608, !llvm.loop !91

while.end1657:                                    ; preds = %if.then1613
  %1283 = load i8, i8* %uc, align 1, !tbaa !37
  %conv1658 = zext i8 %1283 to i32
  %cmp1659 = icmp eq i32 %conv1658, 0
  br i1 %cmp1659, label %if.then1661, label %if.else1663

if.then1661:                                      ; preds = %while.end1657
  %1284 = load i32, i32* %curr, align 4, !tbaa !34
  %inc1662 = add nsw i32 %1284, 1
  store i32 %inc1662, i32* %curr, align 4, !tbaa !34
  br label %if.end1665

if.else1663:                                      ; preds = %while.end1657
  %1285 = load i32, i32* %curr, align 4, !tbaa !34
  %dec1664 = add nsw i32 %1285, -1
  store i32 %dec1664, i32* %curr, align 4, !tbaa !34
  br label %if.end1665

if.end1665:                                       ; preds = %if.else1663, %if.then1661
  br label %while.cond1540, !llvm.loop !92

while.end1666:                                    ; preds = %if.then1604
  %1286 = load i32, i32* %curr, align 4, !tbaa !34
  %conv1667 = trunc i32 %1286 to i8
  %1287 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len = getelementptr inbounds %struct.DState, %struct.DState* %1287, i32 0, i32 35
  %1288 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1668 = sext i32 %1288 to i64
  %arrayidx1669 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len, i64 0, i64 %idxprom1668
  %1289 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1670 = sext i32 %1289 to i64
  %arrayidx1671 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1669, i64 0, i64 %idxprom1670
  store i8 %conv1667, i8* %arrayidx1671, align 1, !tbaa !37
  br label %for.inc1672

for.inc1672:                                      ; preds = %while.end1666
  %1290 = load i32, i32* %i, align 4, !tbaa !34
  %inc1673 = add nsw i32 %1290, 1
  store i32 %inc1673, i32* %i, align 4, !tbaa !34
  br label %for.cond1536, !llvm.loop !93

for.end1674:                                      ; preds = %for.cond1536
  br label %for.inc1675

for.inc1675:                                      ; preds = %for.end1674
  %1291 = load i32, i32* %t, align 4, !tbaa !34
  %inc1676 = add nsw i32 %1291, 1
  store i32 %inc1676, i32* %t, align 4, !tbaa !34
  br label %for.cond1481, !llvm.loop !94

for.end1677:                                      ; preds = %for.cond1481
  store i32 0, i32* %t, align 4, !tbaa !34
  br label %for.cond1678

for.cond1678:                                     ; preds = %for.inc1736, %for.end1677
  %1292 = load i32, i32* %t, align 4, !tbaa !34
  %1293 = load i32, i32* %nGroups, align 4, !tbaa !34
  %cmp1679 = icmp slt i32 %1292, %1293
  br i1 %cmp1679, label %for.body1681, label %for.end1738

for.body1681:                                     ; preds = %for.cond1678
  store i32 32, i32* %minLen, align 4, !tbaa !34
  store i32 0, i32* %maxLen, align 4, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1682

for.cond1682:                                     ; preds = %for.inc1718, %for.body1681
  %1294 = load i32, i32* %i, align 4, !tbaa !34
  %1295 = load i32, i32* %alphaSize, align 4, !tbaa !34
  %cmp1683 = icmp slt i32 %1294, %1295
  br i1 %cmp1683, label %for.body1685, label %for.end1720

for.body1685:                                     ; preds = %for.cond1682
  %1296 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len1686 = getelementptr inbounds %struct.DState, %struct.DState* %1296, i32 0, i32 35
  %1297 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1687 = sext i32 %1297 to i64
  %arrayidx1688 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1686, i64 0, i64 %idxprom1687
  %1298 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1689 = sext i32 %1298 to i64
  %arrayidx1690 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1688, i64 0, i64 %idxprom1689
  %1299 = load i8, i8* %arrayidx1690, align 1, !tbaa !37
  %conv1691 = zext i8 %1299 to i32
  %1300 = load i32, i32* %maxLen, align 4, !tbaa !34
  %cmp1692 = icmp sgt i32 %conv1691, %1300
  br i1 %cmp1692, label %if.then1694, label %if.end1701

if.then1694:                                      ; preds = %for.body1685
  %1301 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len1695 = getelementptr inbounds %struct.DState, %struct.DState* %1301, i32 0, i32 35
  %1302 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1696 = sext i32 %1302 to i64
  %arrayidx1697 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1695, i64 0, i64 %idxprom1696
  %1303 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1698 = sext i32 %1303 to i64
  %arrayidx1699 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1697, i64 0, i64 %idxprom1698
  %1304 = load i8, i8* %arrayidx1699, align 1, !tbaa !37
  %conv1700 = zext i8 %1304 to i32
  store i32 %conv1700, i32* %maxLen, align 4, !tbaa !34
  br label %if.end1701

if.end1701:                                       ; preds = %if.then1694, %for.body1685
  %1305 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len1702 = getelementptr inbounds %struct.DState, %struct.DState* %1305, i32 0, i32 35
  %1306 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1703 = sext i32 %1306 to i64
  %arrayidx1704 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1702, i64 0, i64 %idxprom1703
  %1307 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1705 = sext i32 %1307 to i64
  %arrayidx1706 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1704, i64 0, i64 %idxprom1705
  %1308 = load i8, i8* %arrayidx1706, align 1, !tbaa !37
  %conv1707 = zext i8 %1308 to i32
  %1309 = load i32, i32* %minLen, align 4, !tbaa !34
  %cmp1708 = icmp slt i32 %conv1707, %1309
  br i1 %cmp1708, label %if.then1710, label %if.end1717

if.then1710:                                      ; preds = %if.end1701
  %1310 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len1711 = getelementptr inbounds %struct.DState, %struct.DState* %1310, i32 0, i32 35
  %1311 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1712 = sext i32 %1311 to i64
  %arrayidx1713 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1711, i64 0, i64 %idxprom1712
  %1312 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1714 = sext i32 %1312 to i64
  %arrayidx1715 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1713, i64 0, i64 %idxprom1714
  %1313 = load i8, i8* %arrayidx1715, align 1, !tbaa !37
  %conv1716 = zext i8 %1313 to i32
  store i32 %conv1716, i32* %minLen, align 4, !tbaa !34
  br label %if.end1717

if.end1717:                                       ; preds = %if.then1710, %if.end1701
  br label %for.inc1718

for.inc1718:                                      ; preds = %if.end1717
  %1314 = load i32, i32* %i, align 4, !tbaa !34
  %inc1719 = add nsw i32 %1314, 1
  store i32 %inc1719, i32* %i, align 4, !tbaa !34
  br label %for.cond1682, !llvm.loop !95

for.end1720:                                      ; preds = %for.cond1682
  %1315 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %limit = getelementptr inbounds %struct.DState, %struct.DState* %1315, i32 0, i32 36
  %1316 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1721 = sext i32 %1316 to i64
  %arrayidx1722 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit, i64 0, i64 %idxprom1721
  %arrayidx1723 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1722, i64 0, i64 0
  %1317 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %base = getelementptr inbounds %struct.DState, %struct.DState* %1317, i32 0, i32 37
  %1318 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1724 = sext i32 %1318 to i64
  %arrayidx1725 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base, i64 0, i64 %idxprom1724
  %arrayidx1726 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1725, i64 0, i64 0
  %1319 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %perm = getelementptr inbounds %struct.DState, %struct.DState* %1319, i32 0, i32 38
  %1320 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1727 = sext i32 %1320 to i64
  %arrayidx1728 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm, i64 0, i64 %idxprom1727
  %arrayidx1729 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1728, i64 0, i64 0
  %1321 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %len1730 = getelementptr inbounds %struct.DState, %struct.DState* %1321, i32 0, i32 35
  %1322 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1731 = sext i32 %1322 to i64
  %arrayidx1732 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1730, i64 0, i64 %idxprom1731
  %arrayidx1733 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1732, i64 0, i64 0
  %1323 = load i32, i32* %minLen, align 4, !tbaa !34
  %1324 = load i32, i32* %maxLen, align 4, !tbaa !34
  %1325 = load i32, i32* %alphaSize, align 4, !tbaa !34
  call void @BZ2_hbCreateDecodeTables(i32* %arrayidx1723, i32* %arrayidx1726, i32* %arrayidx1729, i8* %arrayidx1733, i32 %1323, i32 %1324, i32 %1325)
  %1326 = load i32, i32* %minLen, align 4, !tbaa !34
  %1327 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %minLens = getelementptr inbounds %struct.DState, %struct.DState* %1327, i32 0, i32 39
  %1328 = load i32, i32* %t, align 4, !tbaa !34
  %idxprom1734 = sext i32 %1328 to i64
  %arrayidx1735 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens, i64 0, i64 %idxprom1734
  store i32 %1326, i32* %arrayidx1735, align 4, !tbaa !34
  br label %for.inc1736

for.inc1736:                                      ; preds = %for.end1720
  %1329 = load i32, i32* %t, align 4, !tbaa !34
  %inc1737 = add nsw i32 %1329, 1
  store i32 %inc1737, i32* %t, align 4, !tbaa !34
  br label %for.cond1678, !llvm.loop !96

for.end1738:                                      ; preds = %for.cond1678
  %1330 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse1739 = getelementptr inbounds %struct.DState, %struct.DState* %1330, i32 0, i32 27
  %1331 = load i32, i32* %nInUse1739, align 8, !tbaa !80
  %add1740 = add nsw i32 %1331, 1
  store i32 %add1740, i32* %EOB, align 4, !tbaa !34
  %1332 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockSize100k1741 = getelementptr inbounds %struct.DState, %struct.DState* %1332, i32 0, i32 9
  %1333 = load i32, i32* %blockSize100k1741, align 8, !tbaa !47
  %mul1742 = mul nsw i32 100000, %1333
  store i32 %mul1742, i32* %nblockMAX, align 4, !tbaa !34
  store i32 -1, i32* %groupNo, align 4, !tbaa !34
  store i32 0, i32* %groupPos, align 4, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond1743

for.cond1743:                                     ; preds = %for.inc1749, %for.end1738
  %1334 = load i32, i32* %i, align 4, !tbaa !34
  %cmp1744 = icmp sle i32 %1334, 255
  br i1 %cmp1744, label %for.body1746, label %for.end1751

for.body1746:                                     ; preds = %for.cond1743
  %1335 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %unzftab = getelementptr inbounds %struct.DState, %struct.DState* %1335, i32 0, i32 16
  %1336 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom1747 = sext i32 %1336 to i64
  %arrayidx1748 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab, i64 0, i64 %idxprom1747
  store i32 0, i32* %arrayidx1748, align 4, !tbaa !34
  br label %for.inc1749

for.inc1749:                                      ; preds = %for.body1746
  %1337 = load i32, i32* %i, align 4, !tbaa !34
  %inc1750 = add nsw i32 %1337, 1
  store i32 %inc1750, i32* %i, align 4, !tbaa !34
  br label %for.cond1743, !llvm.loop !97

for.end1751:                                      ; preds = %for.cond1743
  %1338 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1338) #3
  %1339 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1339) #3
  %1340 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1340) #3
  store i32 4095, i32* %kk, align 4, !tbaa !34
  store i32 15, i32* %ii, align 4, !tbaa !34
  br label %for.cond1752

for.cond1752:                                     ; preds = %for.inc1772, %for.end1751
  %1341 = load i32, i32* %ii, align 4, !tbaa !34
  %cmp1753 = icmp sge i32 %1341, 0
  br i1 %cmp1753, label %for.body1755, label %for.end1774

for.body1755:                                     ; preds = %for.cond1752
  store i32 15, i32* %jj, align 4, !tbaa !34
  br label %for.cond1756

for.cond1756:                                     ; preds = %for.inc1766, %for.body1755
  %1342 = load i32, i32* %jj, align 4, !tbaa !34
  %cmp1757 = icmp sge i32 %1342, 0
  br i1 %cmp1757, label %for.body1759, label %for.end1768

for.body1759:                                     ; preds = %for.cond1756
  %1343 = load i32, i32* %ii, align 4, !tbaa !34
  %mul1760 = mul nsw i32 %1343, 16
  %1344 = load i32, i32* %jj, align 4, !tbaa !34
  %add1761 = add nsw i32 %mul1760, %1344
  %conv1762 = trunc i32 %add1761 to i8
  %1345 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa = getelementptr inbounds %struct.DState, %struct.DState* %1345, i32 0, i32 31
  %1346 = load i32, i32* %kk, align 4, !tbaa !34
  %idxprom1763 = sext i32 %1346 to i64
  %arrayidx1764 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa, i64 0, i64 %idxprom1763
  store i8 %conv1762, i8* %arrayidx1764, align 1, !tbaa !37
  %1347 = load i32, i32* %kk, align 4, !tbaa !34
  %dec1765 = add nsw i32 %1347, -1
  store i32 %dec1765, i32* %kk, align 4, !tbaa !34
  br label %for.inc1766

for.inc1766:                                      ; preds = %for.body1759
  %1348 = load i32, i32* %jj, align 4, !tbaa !34
  %dec1767 = add nsw i32 %1348, -1
  store i32 %dec1767, i32* %jj, align 4, !tbaa !34
  br label %for.cond1756, !llvm.loop !98

for.end1768:                                      ; preds = %for.cond1756
  %1349 = load i32, i32* %kk, align 4, !tbaa !34
  %add1769 = add nsw i32 %1349, 1
  %1350 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase = getelementptr inbounds %struct.DState, %struct.DState* %1350, i32 0, i32 32
  %1351 = load i32, i32* %ii, align 4, !tbaa !34
  %idxprom1770 = sext i32 %1351 to i64
  %arrayidx1771 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase, i64 0, i64 %idxprom1770
  store i32 %add1769, i32* %arrayidx1771, align 4, !tbaa !34
  br label %for.inc1772

for.inc1772:                                      ; preds = %for.end1768
  %1352 = load i32, i32* %ii, align 4, !tbaa !34
  %dec1773 = add nsw i32 %1352, -1
  store i32 %dec1773, i32* %ii, align 4, !tbaa !34
  br label %for.cond1752, !llvm.loop !99

for.end1774:                                      ; preds = %for.cond1752
  %1353 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1353) #3
  %1354 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1354) #3
  %1355 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1355) #3
  store i32 0, i32* %nblock, align 4, !tbaa !34
  %1356 = load i32, i32* %groupPos, align 4, !tbaa !34
  %cmp1775 = icmp eq i32 %1356, 0
  br i1 %cmp1775, label %if.then1777, label %if.end1802

if.then1777:                                      ; preds = %for.end1774
  %1357 = load i32, i32* %groupNo, align 4, !tbaa !34
  %inc1778 = add nsw i32 %1357, 1
  store i32 %inc1778, i32* %groupNo, align 4, !tbaa !34
  %1358 = load i32, i32* %groupNo, align 4, !tbaa !34
  %1359 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp1779 = icmp sge i32 %1358, %1359
  br i1 %cmp1779, label %if.then1781, label %if.end1782

if.then1781:                                      ; preds = %if.then1777
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1782:                                       ; preds = %if.then1777
  store i32 50, i32* %groupPos, align 4, !tbaa !34
  %1360 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selector1783 = getelementptr inbounds %struct.DState, %struct.DState* %1360, i32 0, i32 33
  %1361 = load i32, i32* %groupNo, align 4, !tbaa !34
  %idxprom1784 = sext i32 %1361 to i64
  %arrayidx1785 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1783, i64 0, i64 %idxprom1784
  %1362 = load i8, i8* %arrayidx1785, align 1, !tbaa !37
  %conv1786 = zext i8 %1362 to i32
  store i32 %conv1786, i32* %gSel, align 4, !tbaa !34
  %1363 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %minLens1787 = getelementptr inbounds %struct.DState, %struct.DState* %1363, i32 0, i32 39
  %1364 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1788 = sext i32 %1364 to i64
  %arrayidx1789 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1787, i64 0, i64 %idxprom1788
  %1365 = load i32, i32* %arrayidx1789, align 4, !tbaa !34
  store i32 %1365, i32* %gMinlen, align 4, !tbaa !34
  %1366 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %limit1790 = getelementptr inbounds %struct.DState, %struct.DState* %1366, i32 0, i32 36
  %1367 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1791 = sext i32 %1367 to i64
  %arrayidx1792 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1790, i64 0, i64 %idxprom1791
  %arrayidx1793 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1792, i64 0, i64 0
  store i32* %arrayidx1793, i32** %gLimit, align 8, !tbaa !2
  %1368 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %perm1794 = getelementptr inbounds %struct.DState, %struct.DState* %1368, i32 0, i32 38
  %1369 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1795 = sext i32 %1369 to i64
  %arrayidx1796 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1794, i64 0, i64 %idxprom1795
  %arrayidx1797 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1796, i64 0, i64 0
  store i32* %arrayidx1797, i32** %gPerm, align 8, !tbaa !2
  %1370 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %base1798 = getelementptr inbounds %struct.DState, %struct.DState* %1370, i32 0, i32 37
  %1371 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1799 = sext i32 %1371 to i64
  %arrayidx1800 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1798, i64 0, i64 %idxprom1799
  %arrayidx1801 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1800, i64 0, i64 0
  store i32* %arrayidx1801, i32** %gBase, align 8, !tbaa !2
  br label %if.end1802

if.end1802:                                       ; preds = %if.end1782, %for.end1774
  %1372 = load i32, i32* %groupPos, align 4, !tbaa !34
  %dec1803 = add nsw i32 %1372, -1
  store i32 %dec1803, i32* %groupPos, align 4, !tbaa !34
  %1373 = load i32, i32* %gMinlen, align 4, !tbaa !34
  store i32 %1373, i32* %zn, align 4, !tbaa !34
  br label %sw.bb1804

sw.bb1804:                                        ; preds = %if.end, %if.end1802
  %1374 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1805 = getelementptr inbounds %struct.DState, %struct.DState* %1374, i32 0, i32 1
  store i32 36, i32* %state1805, align 8, !tbaa !9
  br label %while.cond1806

while.cond1806:                                   ; preds = %if.end1855, %sw.bb1804
  br label %while.body1807

while.body1807:                                   ; preds = %while.cond1806
  %1375 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1808 = getelementptr inbounds %struct.DState, %struct.DState* %1375, i32 0, i32 8
  %1376 = load i32, i32* %bsLive1808, align 4, !tbaa !35
  %1377 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp1809 = icmp sge i32 %1376, %1377
  br i1 %cmp1809, label %if.then1811, label %if.end1822

if.then1811:                                      ; preds = %while.body1807
  %1378 = bitcast i32* %v1812 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1378) #3
  %1379 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1813 = getelementptr inbounds %struct.DState, %struct.DState* %1379, i32 0, i32 7
  %1380 = load i32, i32* %bsBuff1813, align 8, !tbaa !36
  %1381 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1814 = getelementptr inbounds %struct.DState, %struct.DState* %1381, i32 0, i32 8
  %1382 = load i32, i32* %bsLive1814, align 4, !tbaa !35
  %1383 = load i32, i32* %zn, align 4, !tbaa !34
  %sub1815 = sub nsw i32 %1382, %1383
  %shr1816 = lshr i32 %1380, %sub1815
  %1384 = load i32, i32* %zn, align 4, !tbaa !34
  %shl1817 = shl i32 1, %1384
  %sub1818 = sub nsw i32 %shl1817, 1
  %and1819 = and i32 %shr1816, %sub1818
  store i32 %and1819, i32* %v1812, align 4, !tbaa !34
  %1385 = load i32, i32* %zn, align 4, !tbaa !34
  %1386 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1820 = getelementptr inbounds %struct.DState, %struct.DState* %1386, i32 0, i32 8
  %1387 = load i32, i32* %bsLive1820, align 4, !tbaa !35
  %sub1821 = sub nsw i32 %1387, %1385
  store i32 %sub1821, i32* %bsLive1820, align 4, !tbaa !35
  %1388 = load i32, i32* %v1812, align 4, !tbaa !34
  store i32 %1388, i32* %zvec, align 4, !tbaa !34
  %1389 = bitcast i32* %v1812 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1389) #3
  br label %while.end1856

if.end1822:                                       ; preds = %while.body1807
  %1390 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1823 = getelementptr inbounds %struct.DState, %struct.DState* %1390, i32 0, i32 0
  %1391 = load %struct.bz_stream*, %struct.bz_stream** %strm1823, align 8, !tbaa !6
  %avail_in1824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1391, i32 0, i32 1
  %1392 = load i32, i32* %avail_in1824, align 8, !tbaa !38
  %cmp1825 = icmp eq i32 %1392, 0
  br i1 %cmp1825, label %if.then1827, label %if.end1828

if.then1827:                                      ; preds = %if.end1822
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1828:                                       ; preds = %if.end1822
  %1393 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1829 = getelementptr inbounds %struct.DState, %struct.DState* %1393, i32 0, i32 7
  %1394 = load i32, i32* %bsBuff1829, align 8, !tbaa !36
  %shl1830 = shl i32 %1394, 8
  %1395 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1831 = getelementptr inbounds %struct.DState, %struct.DState* %1395, i32 0, i32 0
  %1396 = load %struct.bz_stream*, %struct.bz_stream** %strm1831, align 8, !tbaa !6
  %next_in1832 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1396, i32 0, i32 0
  %1397 = load i8*, i8** %next_in1832, align 8, !tbaa !40
  %1398 = load i8, i8* %1397, align 1, !tbaa !37
  %conv1833 = zext i8 %1398 to i32
  %or1834 = or i32 %shl1830, %conv1833
  %1399 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1835 = getelementptr inbounds %struct.DState, %struct.DState* %1399, i32 0, i32 7
  store i32 %or1834, i32* %bsBuff1835, align 8, !tbaa !36
  %1400 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1836 = getelementptr inbounds %struct.DState, %struct.DState* %1400, i32 0, i32 8
  %1401 = load i32, i32* %bsLive1836, align 4, !tbaa !35
  %add1837 = add nsw i32 %1401, 8
  store i32 %add1837, i32* %bsLive1836, align 4, !tbaa !35
  %1402 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1838 = getelementptr inbounds %struct.DState, %struct.DState* %1402, i32 0, i32 0
  %1403 = load %struct.bz_stream*, %struct.bz_stream** %strm1838, align 8, !tbaa !6
  %next_in1839 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1403, i32 0, i32 0
  %1404 = load i8*, i8** %next_in1839, align 8, !tbaa !40
  %incdec.ptr1840 = getelementptr inbounds i8, i8* %1404, i32 1
  store i8* %incdec.ptr1840, i8** %next_in1839, align 8, !tbaa !40
  %1405 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1841 = getelementptr inbounds %struct.DState, %struct.DState* %1405, i32 0, i32 0
  %1406 = load %struct.bz_stream*, %struct.bz_stream** %strm1841, align 8, !tbaa !6
  %avail_in1842 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1406, i32 0, i32 1
  %1407 = load i32, i32* %avail_in1842, align 8, !tbaa !38
  %dec1843 = add i32 %1407, -1
  store i32 %dec1843, i32* %avail_in1842, align 8, !tbaa !38
  %1408 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1844 = getelementptr inbounds %struct.DState, %struct.DState* %1408, i32 0, i32 0
  %1409 = load %struct.bz_stream*, %struct.bz_stream** %strm1844, align 8, !tbaa !6
  %total_in_lo321845 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1409, i32 0, i32 2
  %1410 = load i32, i32* %total_in_lo321845, align 4, !tbaa !41
  %inc1846 = add i32 %1410, 1
  store i32 %inc1846, i32* %total_in_lo321845, align 4, !tbaa !41
  %1411 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1847 = getelementptr inbounds %struct.DState, %struct.DState* %1411, i32 0, i32 0
  %1412 = load %struct.bz_stream*, %struct.bz_stream** %strm1847, align 8, !tbaa !6
  %total_in_lo321848 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1412, i32 0, i32 2
  %1413 = load i32, i32* %total_in_lo321848, align 4, !tbaa !41
  %cmp1849 = icmp eq i32 %1413, 0
  br i1 %cmp1849, label %if.then1851, label %if.end1855

if.then1851:                                      ; preds = %if.end1828
  %1414 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1852 = getelementptr inbounds %struct.DState, %struct.DState* %1414, i32 0, i32 0
  %1415 = load %struct.bz_stream*, %struct.bz_stream** %strm1852, align 8, !tbaa !6
  %total_in_hi321853 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1415, i32 0, i32 3
  %1416 = load i32, i32* %total_in_hi321853, align 8, !tbaa !42
  %inc1854 = add i32 %1416, 1
  store i32 %inc1854, i32* %total_in_hi321853, align 8, !tbaa !42
  br label %if.end1855

if.end1855:                                       ; preds = %if.then1851, %if.end1828
  br label %while.cond1806, !llvm.loop !100

while.end1856:                                    ; preds = %if.then1811
  br label %while.cond1857

while.cond1857:                                   ; preds = %while.end1920, %while.end1856
  br label %while.body1858

while.body1858:                                   ; preds = %while.cond1857
  %1417 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp1859 = icmp sgt i32 %1417, 20
  br i1 %cmp1859, label %if.then1861, label %if.end1862

if.then1861:                                      ; preds = %while.body1858
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1862:                                       ; preds = %while.body1858
  %1418 = load i32, i32* %zvec, align 4, !tbaa !34
  %1419 = load i32*, i32** %gLimit, align 8, !tbaa !2
  %1420 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom1863 = sext i32 %1420 to i64
  %arrayidx1864 = getelementptr inbounds i32, i32* %1419, i64 %idxprom1863
  %1421 = load i32, i32* %arrayidx1864, align 4, !tbaa !34
  %cmp1865 = icmp sle i32 %1418, %1421
  br i1 %cmp1865, label %if.then1867, label %if.end1868

if.then1867:                                      ; preds = %if.end1862
  br label %while.end1923

if.end1868:                                       ; preds = %if.end1862
  %1422 = load i32, i32* %zn, align 4, !tbaa !34
  %inc1869 = add nsw i32 %1422, 1
  store i32 %inc1869, i32* %zn, align 4, !tbaa !34
  br label %sw.bb1870

sw.bb1870:                                        ; preds = %if.end, %if.end1868
  %1423 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1871 = getelementptr inbounds %struct.DState, %struct.DState* %1423, i32 0, i32 1
  store i32 37, i32* %state1871, align 8, !tbaa !9
  br label %while.cond1872

while.cond1872:                                   ; preds = %if.end1919, %sw.bb1870
  br label %while.body1873

while.body1873:                                   ; preds = %while.cond1872
  %1424 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1874 = getelementptr inbounds %struct.DState, %struct.DState* %1424, i32 0, i32 8
  %1425 = load i32, i32* %bsLive1874, align 4, !tbaa !35
  %cmp1875 = icmp sge i32 %1425, 1
  br i1 %cmp1875, label %if.then1877, label %if.end1886

if.then1877:                                      ; preds = %while.body1873
  %1426 = bitcast i32* %v1878 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1426) #3
  %1427 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1879 = getelementptr inbounds %struct.DState, %struct.DState* %1427, i32 0, i32 7
  %1428 = load i32, i32* %bsBuff1879, align 8, !tbaa !36
  %1429 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1880 = getelementptr inbounds %struct.DState, %struct.DState* %1429, i32 0, i32 8
  %1430 = load i32, i32* %bsLive1880, align 4, !tbaa !35
  %sub1881 = sub nsw i32 %1430, 1
  %shr1882 = lshr i32 %1428, %sub1881
  %and1883 = and i32 %shr1882, 1
  store i32 %and1883, i32* %v1878, align 4, !tbaa !34
  %1431 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1884 = getelementptr inbounds %struct.DState, %struct.DState* %1431, i32 0, i32 8
  %1432 = load i32, i32* %bsLive1884, align 4, !tbaa !35
  %sub1885 = sub nsw i32 %1432, 1
  store i32 %sub1885, i32* %bsLive1884, align 4, !tbaa !35
  %1433 = load i32, i32* %v1878, align 4, !tbaa !34
  store i32 %1433, i32* %zj, align 4, !tbaa !34
  %1434 = bitcast i32* %v1878 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1434) #3
  br label %while.end1920

if.end1886:                                       ; preds = %while.body1873
  %1435 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1887 = getelementptr inbounds %struct.DState, %struct.DState* %1435, i32 0, i32 0
  %1436 = load %struct.bz_stream*, %struct.bz_stream** %strm1887, align 8, !tbaa !6
  %avail_in1888 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1436, i32 0, i32 1
  %1437 = load i32, i32* %avail_in1888, align 8, !tbaa !38
  %cmp1889 = icmp eq i32 %1437, 0
  br i1 %cmp1889, label %if.then1891, label %if.end1892

if.then1891:                                      ; preds = %if.end1886
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1892:                                       ; preds = %if.end1886
  %1438 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1893 = getelementptr inbounds %struct.DState, %struct.DState* %1438, i32 0, i32 7
  %1439 = load i32, i32* %bsBuff1893, align 8, !tbaa !36
  %shl1894 = shl i32 %1439, 8
  %1440 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1895 = getelementptr inbounds %struct.DState, %struct.DState* %1440, i32 0, i32 0
  %1441 = load %struct.bz_stream*, %struct.bz_stream** %strm1895, align 8, !tbaa !6
  %next_in1896 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1441, i32 0, i32 0
  %1442 = load i8*, i8** %next_in1896, align 8, !tbaa !40
  %1443 = load i8, i8* %1442, align 1, !tbaa !37
  %conv1897 = zext i8 %1443 to i32
  %or1898 = or i32 %shl1894, %conv1897
  %1444 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff1899 = getelementptr inbounds %struct.DState, %struct.DState* %1444, i32 0, i32 7
  store i32 %or1898, i32* %bsBuff1899, align 8, !tbaa !36
  %1445 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive1900 = getelementptr inbounds %struct.DState, %struct.DState* %1445, i32 0, i32 8
  %1446 = load i32, i32* %bsLive1900, align 4, !tbaa !35
  %add1901 = add nsw i32 %1446, 8
  store i32 %add1901, i32* %bsLive1900, align 4, !tbaa !35
  %1447 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1902 = getelementptr inbounds %struct.DState, %struct.DState* %1447, i32 0, i32 0
  %1448 = load %struct.bz_stream*, %struct.bz_stream** %strm1902, align 8, !tbaa !6
  %next_in1903 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1448, i32 0, i32 0
  %1449 = load i8*, i8** %next_in1903, align 8, !tbaa !40
  %incdec.ptr1904 = getelementptr inbounds i8, i8* %1449, i32 1
  store i8* %incdec.ptr1904, i8** %next_in1903, align 8, !tbaa !40
  %1450 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1905 = getelementptr inbounds %struct.DState, %struct.DState* %1450, i32 0, i32 0
  %1451 = load %struct.bz_stream*, %struct.bz_stream** %strm1905, align 8, !tbaa !6
  %avail_in1906 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1451, i32 0, i32 1
  %1452 = load i32, i32* %avail_in1906, align 8, !tbaa !38
  %dec1907 = add i32 %1452, -1
  store i32 %dec1907, i32* %avail_in1906, align 8, !tbaa !38
  %1453 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1908 = getelementptr inbounds %struct.DState, %struct.DState* %1453, i32 0, i32 0
  %1454 = load %struct.bz_stream*, %struct.bz_stream** %strm1908, align 8, !tbaa !6
  %total_in_lo321909 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1454, i32 0, i32 2
  %1455 = load i32, i32* %total_in_lo321909, align 4, !tbaa !41
  %inc1910 = add i32 %1455, 1
  store i32 %inc1910, i32* %total_in_lo321909, align 4, !tbaa !41
  %1456 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1911 = getelementptr inbounds %struct.DState, %struct.DState* %1456, i32 0, i32 0
  %1457 = load %struct.bz_stream*, %struct.bz_stream** %strm1911, align 8, !tbaa !6
  %total_in_lo321912 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1457, i32 0, i32 2
  %1458 = load i32, i32* %total_in_lo321912, align 4, !tbaa !41
  %cmp1913 = icmp eq i32 %1458, 0
  br i1 %cmp1913, label %if.then1915, label %if.end1919

if.then1915:                                      ; preds = %if.end1892
  %1459 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm1916 = getelementptr inbounds %struct.DState, %struct.DState* %1459, i32 0, i32 0
  %1460 = load %struct.bz_stream*, %struct.bz_stream** %strm1916, align 8, !tbaa !6
  %total_in_hi321917 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1460, i32 0, i32 3
  %1461 = load i32, i32* %total_in_hi321917, align 8, !tbaa !42
  %inc1918 = add i32 %1461, 1
  store i32 %inc1918, i32* %total_in_hi321917, align 8, !tbaa !42
  br label %if.end1919

if.end1919:                                       ; preds = %if.then1915, %if.end1892
  br label %while.cond1872, !llvm.loop !101

while.end1920:                                    ; preds = %if.then1877
  %1462 = load i32, i32* %zvec, align 4, !tbaa !34
  %shl1921 = shl i32 %1462, 1
  %1463 = load i32, i32* %zj, align 4, !tbaa !34
  %or1922 = or i32 %shl1921, %1463
  store i32 %or1922, i32* %zvec, align 4, !tbaa !34
  br label %while.cond1857, !llvm.loop !102

while.end1923:                                    ; preds = %if.then1867
  %1464 = load i32, i32* %zvec, align 4, !tbaa !34
  %1465 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1466 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom1924 = sext i32 %1466 to i64
  %arrayidx1925 = getelementptr inbounds i32, i32* %1465, i64 %idxprom1924
  %1467 = load i32, i32* %arrayidx1925, align 4, !tbaa !34
  %sub1926 = sub nsw i32 %1464, %1467
  %cmp1927 = icmp slt i32 %sub1926, 0
  br i1 %cmp1927, label %if.then1935, label %lor.lhs.false1929

lor.lhs.false1929:                                ; preds = %while.end1923
  %1468 = load i32, i32* %zvec, align 4, !tbaa !34
  %1469 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1470 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom1930 = sext i32 %1470 to i64
  %arrayidx1931 = getelementptr inbounds i32, i32* %1469, i64 %idxprom1930
  %1471 = load i32, i32* %arrayidx1931, align 4, !tbaa !34
  %sub1932 = sub nsw i32 %1468, %1471
  %cmp1933 = icmp sge i32 %sub1932, 258
  br i1 %cmp1933, label %if.then1935, label %if.end1936

if.then1935:                                      ; preds = %lor.lhs.false1929, %while.end1923
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1936:                                       ; preds = %lor.lhs.false1929
  %1472 = load i32*, i32** %gPerm, align 8, !tbaa !2
  %1473 = load i32, i32* %zvec, align 4, !tbaa !34
  %1474 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1475 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom1937 = sext i32 %1475 to i64
  %arrayidx1938 = getelementptr inbounds i32, i32* %1474, i64 %idxprom1937
  %1476 = load i32, i32* %arrayidx1938, align 4, !tbaa !34
  %sub1939 = sub nsw i32 %1473, %1476
  %idxprom1940 = sext i32 %sub1939 to i64
  %arrayidx1941 = getelementptr inbounds i32, i32* %1472, i64 %idxprom1940
  %1477 = load i32, i32* %arrayidx1941, align 4, !tbaa !34
  store i32 %1477, i32* %nextSym, align 4, !tbaa !34
  br label %while.cond1942

while.cond1942:                                   ; preds = %if.end2545, %if.end2185, %if.end1936
  br label %while.body1943

while.body1943:                                   ; preds = %while.cond1942
  %1478 = load i32, i32* %nextSym, align 4, !tbaa !34
  %1479 = load i32, i32* %EOB, align 4, !tbaa !34
  %cmp1944 = icmp eq i32 %1478, %1479
  br i1 %cmp1944, label %if.then1946, label %if.end1947

if.then1946:                                      ; preds = %while.body1943
  br label %while.end2551

if.end1947:                                       ; preds = %while.body1943
  %1480 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp1948 = icmp eq i32 %1480, 0
  br i1 %cmp1948, label %if.then1953, label %lor.lhs.false1950

lor.lhs.false1950:                                ; preds = %if.end1947
  %1481 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp1951 = icmp eq i32 %1481, 1
  br i1 %cmp1951, label %if.then1953, label %if.else2186

if.then1953:                                      ; preds = %lor.lhs.false1950, %if.end1947
  store i32 -1, i32* %es, align 4, !tbaa !34
  store i32 1, i32* %N, align 4, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then1953
  %1482 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp1954 = icmp eq i32 %1482, 0
  br i1 %cmp1954, label %if.then1956, label %if.else1959

if.then1956:                                      ; preds = %do.body
  %1483 = load i32, i32* %es, align 4, !tbaa !34
  %1484 = load i32, i32* %N, align 4, !tbaa !34
  %mul1957 = mul nsw i32 1, %1484
  %add1958 = add nsw i32 %1483, %mul1957
  store i32 %add1958, i32* %es, align 4, !tbaa !34
  br label %if.end1966

if.else1959:                                      ; preds = %do.body
  %1485 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp1960 = icmp eq i32 %1485, 1
  br i1 %cmp1960, label %if.then1962, label %if.end1965

if.then1962:                                      ; preds = %if.else1959
  %1486 = load i32, i32* %es, align 4, !tbaa !34
  %1487 = load i32, i32* %N, align 4, !tbaa !34
  %mul1963 = mul nsw i32 2, %1487
  %add1964 = add nsw i32 %1486, %mul1963
  store i32 %add1964, i32* %es, align 4, !tbaa !34
  br label %if.end1965

if.end1965:                                       ; preds = %if.then1962, %if.else1959
  br label %if.end1966

if.end1966:                                       ; preds = %if.end1965, %if.then1956
  %1488 = load i32, i32* %N, align 4, !tbaa !34
  %mul1967 = mul nsw i32 %1488, 2
  store i32 %mul1967, i32* %N, align 4, !tbaa !34
  %1489 = load i32, i32* %groupPos, align 4, !tbaa !34
  %cmp1968 = icmp eq i32 %1489, 0
  br i1 %cmp1968, label %if.then1970, label %if.end1995

if.then1970:                                      ; preds = %if.end1966
  %1490 = load i32, i32* %groupNo, align 4, !tbaa !34
  %inc1971 = add nsw i32 %1490, 1
  store i32 %inc1971, i32* %groupNo, align 4, !tbaa !34
  %1491 = load i32, i32* %groupNo, align 4, !tbaa !34
  %1492 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp1972 = icmp sge i32 %1491, %1492
  br i1 %cmp1972, label %if.then1974, label %if.end1975

if.then1974:                                      ; preds = %if.then1970
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end1975:                                       ; preds = %if.then1970
  store i32 50, i32* %groupPos, align 4, !tbaa !34
  %1493 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selector1976 = getelementptr inbounds %struct.DState, %struct.DState* %1493, i32 0, i32 33
  %1494 = load i32, i32* %groupNo, align 4, !tbaa !34
  %idxprom1977 = sext i32 %1494 to i64
  %arrayidx1978 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1976, i64 0, i64 %idxprom1977
  %1495 = load i8, i8* %arrayidx1978, align 1, !tbaa !37
  %conv1979 = zext i8 %1495 to i32
  store i32 %conv1979, i32* %gSel, align 4, !tbaa !34
  %1496 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %minLens1980 = getelementptr inbounds %struct.DState, %struct.DState* %1496, i32 0, i32 39
  %1497 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1981 = sext i32 %1497 to i64
  %arrayidx1982 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1980, i64 0, i64 %idxprom1981
  %1498 = load i32, i32* %arrayidx1982, align 4, !tbaa !34
  store i32 %1498, i32* %gMinlen, align 4, !tbaa !34
  %1499 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %limit1983 = getelementptr inbounds %struct.DState, %struct.DState* %1499, i32 0, i32 36
  %1500 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1984 = sext i32 %1500 to i64
  %arrayidx1985 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1983, i64 0, i64 %idxprom1984
  %arrayidx1986 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1985, i64 0, i64 0
  store i32* %arrayidx1986, i32** %gLimit, align 8, !tbaa !2
  %1501 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %perm1987 = getelementptr inbounds %struct.DState, %struct.DState* %1501, i32 0, i32 38
  %1502 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1988 = sext i32 %1502 to i64
  %arrayidx1989 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1987, i64 0, i64 %idxprom1988
  %arrayidx1990 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1989, i64 0, i64 0
  store i32* %arrayidx1990, i32** %gPerm, align 8, !tbaa !2
  %1503 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %base1991 = getelementptr inbounds %struct.DState, %struct.DState* %1503, i32 0, i32 37
  %1504 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom1992 = sext i32 %1504 to i64
  %arrayidx1993 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1991, i64 0, i64 %idxprom1992
  %arrayidx1994 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1993, i64 0, i64 0
  store i32* %arrayidx1994, i32** %gBase, align 8, !tbaa !2
  br label %if.end1995

if.end1995:                                       ; preds = %if.end1975, %if.end1966
  %1505 = load i32, i32* %groupPos, align 4, !tbaa !34
  %dec1996 = add nsw i32 %1505, -1
  store i32 %dec1996, i32* %groupPos, align 4, !tbaa !34
  %1506 = load i32, i32* %gMinlen, align 4, !tbaa !34
  store i32 %1506, i32* %zn, align 4, !tbaa !34
  br label %sw.bb1997

sw.bb1997:                                        ; preds = %if.end, %if.end1995
  %1507 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state1998 = getelementptr inbounds %struct.DState, %struct.DState* %1507, i32 0, i32 1
  store i32 38, i32* %state1998, align 8, !tbaa !9
  br label %while.cond1999

while.cond1999:                                   ; preds = %if.end2048, %sw.bb1997
  br label %while.body2000

while.body2000:                                   ; preds = %while.cond1999
  %1508 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2001 = getelementptr inbounds %struct.DState, %struct.DState* %1508, i32 0, i32 8
  %1509 = load i32, i32* %bsLive2001, align 4, !tbaa !35
  %1510 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp2002 = icmp sge i32 %1509, %1510
  br i1 %cmp2002, label %if.then2004, label %if.end2015

if.then2004:                                      ; preds = %while.body2000
  %1511 = bitcast i32* %v2005 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1511) #3
  %1512 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2006 = getelementptr inbounds %struct.DState, %struct.DState* %1512, i32 0, i32 7
  %1513 = load i32, i32* %bsBuff2006, align 8, !tbaa !36
  %1514 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2007 = getelementptr inbounds %struct.DState, %struct.DState* %1514, i32 0, i32 8
  %1515 = load i32, i32* %bsLive2007, align 4, !tbaa !35
  %1516 = load i32, i32* %zn, align 4, !tbaa !34
  %sub2008 = sub nsw i32 %1515, %1516
  %shr2009 = lshr i32 %1513, %sub2008
  %1517 = load i32, i32* %zn, align 4, !tbaa !34
  %shl2010 = shl i32 1, %1517
  %sub2011 = sub nsw i32 %shl2010, 1
  %and2012 = and i32 %shr2009, %sub2011
  store i32 %and2012, i32* %v2005, align 4, !tbaa !34
  %1518 = load i32, i32* %zn, align 4, !tbaa !34
  %1519 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2013 = getelementptr inbounds %struct.DState, %struct.DState* %1519, i32 0, i32 8
  %1520 = load i32, i32* %bsLive2013, align 4, !tbaa !35
  %sub2014 = sub nsw i32 %1520, %1518
  store i32 %sub2014, i32* %bsLive2013, align 4, !tbaa !35
  %1521 = load i32, i32* %v2005, align 4, !tbaa !34
  store i32 %1521, i32* %zvec, align 4, !tbaa !34
  %1522 = bitcast i32* %v2005 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1522) #3
  br label %while.end2049

if.end2015:                                       ; preds = %while.body2000
  %1523 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2016 = getelementptr inbounds %struct.DState, %struct.DState* %1523, i32 0, i32 0
  %1524 = load %struct.bz_stream*, %struct.bz_stream** %strm2016, align 8, !tbaa !6
  %avail_in2017 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1524, i32 0, i32 1
  %1525 = load i32, i32* %avail_in2017, align 8, !tbaa !38
  %cmp2018 = icmp eq i32 %1525, 0
  br i1 %cmp2018, label %if.then2020, label %if.end2021

if.then2020:                                      ; preds = %if.end2015
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2021:                                       ; preds = %if.end2015
  %1526 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2022 = getelementptr inbounds %struct.DState, %struct.DState* %1526, i32 0, i32 7
  %1527 = load i32, i32* %bsBuff2022, align 8, !tbaa !36
  %shl2023 = shl i32 %1527, 8
  %1528 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2024 = getelementptr inbounds %struct.DState, %struct.DState* %1528, i32 0, i32 0
  %1529 = load %struct.bz_stream*, %struct.bz_stream** %strm2024, align 8, !tbaa !6
  %next_in2025 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1529, i32 0, i32 0
  %1530 = load i8*, i8** %next_in2025, align 8, !tbaa !40
  %1531 = load i8, i8* %1530, align 1, !tbaa !37
  %conv2026 = zext i8 %1531 to i32
  %or2027 = or i32 %shl2023, %conv2026
  %1532 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2028 = getelementptr inbounds %struct.DState, %struct.DState* %1532, i32 0, i32 7
  store i32 %or2027, i32* %bsBuff2028, align 8, !tbaa !36
  %1533 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2029 = getelementptr inbounds %struct.DState, %struct.DState* %1533, i32 0, i32 8
  %1534 = load i32, i32* %bsLive2029, align 4, !tbaa !35
  %add2030 = add nsw i32 %1534, 8
  store i32 %add2030, i32* %bsLive2029, align 4, !tbaa !35
  %1535 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2031 = getelementptr inbounds %struct.DState, %struct.DState* %1535, i32 0, i32 0
  %1536 = load %struct.bz_stream*, %struct.bz_stream** %strm2031, align 8, !tbaa !6
  %next_in2032 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1536, i32 0, i32 0
  %1537 = load i8*, i8** %next_in2032, align 8, !tbaa !40
  %incdec.ptr2033 = getelementptr inbounds i8, i8* %1537, i32 1
  store i8* %incdec.ptr2033, i8** %next_in2032, align 8, !tbaa !40
  %1538 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2034 = getelementptr inbounds %struct.DState, %struct.DState* %1538, i32 0, i32 0
  %1539 = load %struct.bz_stream*, %struct.bz_stream** %strm2034, align 8, !tbaa !6
  %avail_in2035 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1539, i32 0, i32 1
  %1540 = load i32, i32* %avail_in2035, align 8, !tbaa !38
  %dec2036 = add i32 %1540, -1
  store i32 %dec2036, i32* %avail_in2035, align 8, !tbaa !38
  %1541 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2037 = getelementptr inbounds %struct.DState, %struct.DState* %1541, i32 0, i32 0
  %1542 = load %struct.bz_stream*, %struct.bz_stream** %strm2037, align 8, !tbaa !6
  %total_in_lo322038 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1542, i32 0, i32 2
  %1543 = load i32, i32* %total_in_lo322038, align 4, !tbaa !41
  %inc2039 = add i32 %1543, 1
  store i32 %inc2039, i32* %total_in_lo322038, align 4, !tbaa !41
  %1544 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2040 = getelementptr inbounds %struct.DState, %struct.DState* %1544, i32 0, i32 0
  %1545 = load %struct.bz_stream*, %struct.bz_stream** %strm2040, align 8, !tbaa !6
  %total_in_lo322041 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1545, i32 0, i32 2
  %1546 = load i32, i32* %total_in_lo322041, align 4, !tbaa !41
  %cmp2042 = icmp eq i32 %1546, 0
  br i1 %cmp2042, label %if.then2044, label %if.end2048

if.then2044:                                      ; preds = %if.end2021
  %1547 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2045 = getelementptr inbounds %struct.DState, %struct.DState* %1547, i32 0, i32 0
  %1548 = load %struct.bz_stream*, %struct.bz_stream** %strm2045, align 8, !tbaa !6
  %total_in_hi322046 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1548, i32 0, i32 3
  %1549 = load i32, i32* %total_in_hi322046, align 8, !tbaa !42
  %inc2047 = add i32 %1549, 1
  store i32 %inc2047, i32* %total_in_hi322046, align 8, !tbaa !42
  br label %if.end2048

if.end2048:                                       ; preds = %if.then2044, %if.end2021
  br label %while.cond1999, !llvm.loop !103

while.end2049:                                    ; preds = %if.then2004
  br label %while.cond2050

while.cond2050:                                   ; preds = %while.end2113, %while.end2049
  br label %while.body2051

while.body2051:                                   ; preds = %while.cond2050
  %1550 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp2052 = icmp sgt i32 %1550, 20
  br i1 %cmp2052, label %if.then2054, label %if.end2055

if.then2054:                                      ; preds = %while.body2051
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2055:                                       ; preds = %while.body2051
  %1551 = load i32, i32* %zvec, align 4, !tbaa !34
  %1552 = load i32*, i32** %gLimit, align 8, !tbaa !2
  %1553 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2056 = sext i32 %1553 to i64
  %arrayidx2057 = getelementptr inbounds i32, i32* %1552, i64 %idxprom2056
  %1554 = load i32, i32* %arrayidx2057, align 4, !tbaa !34
  %cmp2058 = icmp sle i32 %1551, %1554
  br i1 %cmp2058, label %if.then2060, label %if.end2061

if.then2060:                                      ; preds = %if.end2055
  br label %while.end2116

if.end2061:                                       ; preds = %if.end2055
  %1555 = load i32, i32* %zn, align 4, !tbaa !34
  %inc2062 = add nsw i32 %1555, 1
  store i32 %inc2062, i32* %zn, align 4, !tbaa !34
  br label %sw.bb2063

sw.bb2063:                                        ; preds = %if.end, %if.end2061
  %1556 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state2064 = getelementptr inbounds %struct.DState, %struct.DState* %1556, i32 0, i32 1
  store i32 39, i32* %state2064, align 8, !tbaa !9
  br label %while.cond2065

while.cond2065:                                   ; preds = %if.end2112, %sw.bb2063
  br label %while.body2066

while.body2066:                                   ; preds = %while.cond2065
  %1557 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2067 = getelementptr inbounds %struct.DState, %struct.DState* %1557, i32 0, i32 8
  %1558 = load i32, i32* %bsLive2067, align 4, !tbaa !35
  %cmp2068 = icmp sge i32 %1558, 1
  br i1 %cmp2068, label %if.then2070, label %if.end2079

if.then2070:                                      ; preds = %while.body2066
  %1559 = bitcast i32* %v2071 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1559) #3
  %1560 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2072 = getelementptr inbounds %struct.DState, %struct.DState* %1560, i32 0, i32 7
  %1561 = load i32, i32* %bsBuff2072, align 8, !tbaa !36
  %1562 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2073 = getelementptr inbounds %struct.DState, %struct.DState* %1562, i32 0, i32 8
  %1563 = load i32, i32* %bsLive2073, align 4, !tbaa !35
  %sub2074 = sub nsw i32 %1563, 1
  %shr2075 = lshr i32 %1561, %sub2074
  %and2076 = and i32 %shr2075, 1
  store i32 %and2076, i32* %v2071, align 4, !tbaa !34
  %1564 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2077 = getelementptr inbounds %struct.DState, %struct.DState* %1564, i32 0, i32 8
  %1565 = load i32, i32* %bsLive2077, align 4, !tbaa !35
  %sub2078 = sub nsw i32 %1565, 1
  store i32 %sub2078, i32* %bsLive2077, align 4, !tbaa !35
  %1566 = load i32, i32* %v2071, align 4, !tbaa !34
  store i32 %1566, i32* %zj, align 4, !tbaa !34
  %1567 = bitcast i32* %v2071 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1567) #3
  br label %while.end2113

if.end2079:                                       ; preds = %while.body2066
  %1568 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2080 = getelementptr inbounds %struct.DState, %struct.DState* %1568, i32 0, i32 0
  %1569 = load %struct.bz_stream*, %struct.bz_stream** %strm2080, align 8, !tbaa !6
  %avail_in2081 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1569, i32 0, i32 1
  %1570 = load i32, i32* %avail_in2081, align 8, !tbaa !38
  %cmp2082 = icmp eq i32 %1570, 0
  br i1 %cmp2082, label %if.then2084, label %if.end2085

if.then2084:                                      ; preds = %if.end2079
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2085:                                       ; preds = %if.end2079
  %1571 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2086 = getelementptr inbounds %struct.DState, %struct.DState* %1571, i32 0, i32 7
  %1572 = load i32, i32* %bsBuff2086, align 8, !tbaa !36
  %shl2087 = shl i32 %1572, 8
  %1573 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2088 = getelementptr inbounds %struct.DState, %struct.DState* %1573, i32 0, i32 0
  %1574 = load %struct.bz_stream*, %struct.bz_stream** %strm2088, align 8, !tbaa !6
  %next_in2089 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1574, i32 0, i32 0
  %1575 = load i8*, i8** %next_in2089, align 8, !tbaa !40
  %1576 = load i8, i8* %1575, align 1, !tbaa !37
  %conv2090 = zext i8 %1576 to i32
  %or2091 = or i32 %shl2087, %conv2090
  %1577 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2092 = getelementptr inbounds %struct.DState, %struct.DState* %1577, i32 0, i32 7
  store i32 %or2091, i32* %bsBuff2092, align 8, !tbaa !36
  %1578 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2093 = getelementptr inbounds %struct.DState, %struct.DState* %1578, i32 0, i32 8
  %1579 = load i32, i32* %bsLive2093, align 4, !tbaa !35
  %add2094 = add nsw i32 %1579, 8
  store i32 %add2094, i32* %bsLive2093, align 4, !tbaa !35
  %1580 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2095 = getelementptr inbounds %struct.DState, %struct.DState* %1580, i32 0, i32 0
  %1581 = load %struct.bz_stream*, %struct.bz_stream** %strm2095, align 8, !tbaa !6
  %next_in2096 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1581, i32 0, i32 0
  %1582 = load i8*, i8** %next_in2096, align 8, !tbaa !40
  %incdec.ptr2097 = getelementptr inbounds i8, i8* %1582, i32 1
  store i8* %incdec.ptr2097, i8** %next_in2096, align 8, !tbaa !40
  %1583 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2098 = getelementptr inbounds %struct.DState, %struct.DState* %1583, i32 0, i32 0
  %1584 = load %struct.bz_stream*, %struct.bz_stream** %strm2098, align 8, !tbaa !6
  %avail_in2099 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1584, i32 0, i32 1
  %1585 = load i32, i32* %avail_in2099, align 8, !tbaa !38
  %dec2100 = add i32 %1585, -1
  store i32 %dec2100, i32* %avail_in2099, align 8, !tbaa !38
  %1586 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2101 = getelementptr inbounds %struct.DState, %struct.DState* %1586, i32 0, i32 0
  %1587 = load %struct.bz_stream*, %struct.bz_stream** %strm2101, align 8, !tbaa !6
  %total_in_lo322102 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1587, i32 0, i32 2
  %1588 = load i32, i32* %total_in_lo322102, align 4, !tbaa !41
  %inc2103 = add i32 %1588, 1
  store i32 %inc2103, i32* %total_in_lo322102, align 4, !tbaa !41
  %1589 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2104 = getelementptr inbounds %struct.DState, %struct.DState* %1589, i32 0, i32 0
  %1590 = load %struct.bz_stream*, %struct.bz_stream** %strm2104, align 8, !tbaa !6
  %total_in_lo322105 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1590, i32 0, i32 2
  %1591 = load i32, i32* %total_in_lo322105, align 4, !tbaa !41
  %cmp2106 = icmp eq i32 %1591, 0
  br i1 %cmp2106, label %if.then2108, label %if.end2112

if.then2108:                                      ; preds = %if.end2085
  %1592 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2109 = getelementptr inbounds %struct.DState, %struct.DState* %1592, i32 0, i32 0
  %1593 = load %struct.bz_stream*, %struct.bz_stream** %strm2109, align 8, !tbaa !6
  %total_in_hi322110 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1593, i32 0, i32 3
  %1594 = load i32, i32* %total_in_hi322110, align 8, !tbaa !42
  %inc2111 = add i32 %1594, 1
  store i32 %inc2111, i32* %total_in_hi322110, align 8, !tbaa !42
  br label %if.end2112

if.end2112:                                       ; preds = %if.then2108, %if.end2085
  br label %while.cond2065, !llvm.loop !104

while.end2113:                                    ; preds = %if.then2070
  %1595 = load i32, i32* %zvec, align 4, !tbaa !34
  %shl2114 = shl i32 %1595, 1
  %1596 = load i32, i32* %zj, align 4, !tbaa !34
  %or2115 = or i32 %shl2114, %1596
  store i32 %or2115, i32* %zvec, align 4, !tbaa !34
  br label %while.cond2050, !llvm.loop !105

while.end2116:                                    ; preds = %if.then2060
  %1597 = load i32, i32* %zvec, align 4, !tbaa !34
  %1598 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1599 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2117 = sext i32 %1599 to i64
  %arrayidx2118 = getelementptr inbounds i32, i32* %1598, i64 %idxprom2117
  %1600 = load i32, i32* %arrayidx2118, align 4, !tbaa !34
  %sub2119 = sub nsw i32 %1597, %1600
  %cmp2120 = icmp slt i32 %sub2119, 0
  br i1 %cmp2120, label %if.then2128, label %lor.lhs.false2122

lor.lhs.false2122:                                ; preds = %while.end2116
  %1601 = load i32, i32* %zvec, align 4, !tbaa !34
  %1602 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1603 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2123 = sext i32 %1603 to i64
  %arrayidx2124 = getelementptr inbounds i32, i32* %1602, i64 %idxprom2123
  %1604 = load i32, i32* %arrayidx2124, align 4, !tbaa !34
  %sub2125 = sub nsw i32 %1601, %1604
  %cmp2126 = icmp sge i32 %sub2125, 258
  br i1 %cmp2126, label %if.then2128, label %if.end2129

if.then2128:                                      ; preds = %lor.lhs.false2122, %while.end2116
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2129:                                       ; preds = %lor.lhs.false2122
  %1605 = load i32*, i32** %gPerm, align 8, !tbaa !2
  %1606 = load i32, i32* %zvec, align 4, !tbaa !34
  %1607 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1608 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2130 = sext i32 %1608 to i64
  %arrayidx2131 = getelementptr inbounds i32, i32* %1607, i64 %idxprom2130
  %1609 = load i32, i32* %arrayidx2131, align 4, !tbaa !34
  %sub2132 = sub nsw i32 %1606, %1609
  %idxprom2133 = sext i32 %sub2132 to i64
  %arrayidx2134 = getelementptr inbounds i32, i32* %1605, i64 %idxprom2133
  %1610 = load i32, i32* %arrayidx2134, align 4, !tbaa !34
  store i32 %1610, i32* %nextSym, align 4, !tbaa !34
  br label %do.cond

do.cond:                                          ; preds = %if.end2129
  %1611 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp2135 = icmp eq i32 %1611, 0
  br i1 %cmp2135, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1612 = load i32, i32* %nextSym, align 4, !tbaa !34
  %cmp2137 = icmp eq i32 %1612, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %1613 = phi i1 [ true, %do.cond ], [ %cmp2137, %lor.rhs ]
  br i1 %1613, label %do.body, label %do.end, !llvm.loop !106

do.end:                                           ; preds = %lor.end
  %1614 = load i32, i32* %es, align 4, !tbaa !34
  %inc2139 = add nsw i32 %1614, 1
  store i32 %inc2139, i32* %es, align 4, !tbaa !34
  %1615 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %1615, i32 0, i32 30
  %1616 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2140 = getelementptr inbounds %struct.DState, %struct.DState* %1616, i32 0, i32 31
  %1617 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2141 = getelementptr inbounds %struct.DState, %struct.DState* %1617, i32 0, i32 32
  %arrayidx2142 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2141, i64 0, i64 0
  %1618 = load i32, i32* %arrayidx2142, align 4, !tbaa !34
  %idxprom2143 = sext i32 %1618 to i64
  %arrayidx2144 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2140, i64 0, i64 %idxprom2143
  %1619 = load i8, i8* %arrayidx2144, align 1, !tbaa !37
  %idxprom2145 = zext i8 %1619 to i64
  %arrayidx2146 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i64 0, i64 %idxprom2145
  %1620 = load i8, i8* %arrayidx2146, align 1, !tbaa !37
  store i8 %1620, i8* %uc, align 1, !tbaa !37
  %1621 = load i32, i32* %es, align 4, !tbaa !34
  %1622 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %unzftab2147 = getelementptr inbounds %struct.DState, %struct.DState* %1622, i32 0, i32 16
  %1623 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2148 = zext i8 %1623 to i64
  %arrayidx2149 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2147, i64 0, i64 %idxprom2148
  %1624 = load i32, i32* %arrayidx2149, align 4, !tbaa !34
  %add2150 = add nsw i32 %1624, %1621
  store i32 %add2150, i32* %arrayidx2149, align 4, !tbaa !34
  %1625 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %smallDecompress2151 = getelementptr inbounds %struct.DState, %struct.DState* %1625, i32 0, i32 10
  %1626 = load i8, i8* %smallDecompress2151, align 4, !tbaa !49
  %tobool2152 = icmp ne i8 %1626, 0
  br i1 %tobool2152, label %if.then2153, label %if.else2169

if.then2153:                                      ; preds = %do.end
  br label %while.cond2154

while.cond2154:                                   ; preds = %if.end2161, %if.then2153
  %1627 = load i32, i32* %es, align 4, !tbaa !34
  %cmp2155 = icmp sgt i32 %1627, 0
  br i1 %cmp2155, label %while.body2157, label %while.end2168

while.body2157:                                   ; preds = %while.cond2154
  %1628 = load i32, i32* %nblock, align 4, !tbaa !34
  %1629 = load i32, i32* %nblockMAX, align 4, !tbaa !34
  %cmp2158 = icmp sge i32 %1628, %1629
  br i1 %cmp2158, label %if.then2160, label %if.end2161

if.then2160:                                      ; preds = %while.body2157
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2161:                                       ; preds = %while.body2157
  %1630 = load i8, i8* %uc, align 1, !tbaa !37
  %conv2162 = zext i8 %1630 to i16
  %1631 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162163 = getelementptr inbounds %struct.DState, %struct.DState* %1631, i32 0, i32 21
  %1632 = load i16*, i16** %ll162163, align 8, !tbaa !52
  %1633 = load i32, i32* %nblock, align 4, !tbaa !34
  %idxprom2164 = sext i32 %1633 to i64
  %arrayidx2165 = getelementptr inbounds i16, i16* %1632, i64 %idxprom2164
  store i16 %conv2162, i16* %arrayidx2165, align 2, !tbaa !107
  %1634 = load i32, i32* %nblock, align 4, !tbaa !34
  %inc2166 = add nsw i32 %1634, 1
  store i32 %inc2166, i32* %nblock, align 4, !tbaa !34
  %1635 = load i32, i32* %es, align 4, !tbaa !34
  %dec2167 = add nsw i32 %1635, -1
  store i32 %dec2167, i32* %es, align 4, !tbaa !34
  br label %while.cond2154, !llvm.loop !109

while.end2168:                                    ; preds = %while.cond2154
  br label %if.end2185

if.else2169:                                      ; preds = %do.end
  br label %while.cond2170

while.cond2170:                                   ; preds = %if.end2177, %if.else2169
  %1636 = load i32, i32* %es, align 4, !tbaa !34
  %cmp2171 = icmp sgt i32 %1636, 0
  br i1 %cmp2171, label %while.body2173, label %while.end2184

while.body2173:                                   ; preds = %while.cond2170
  %1637 = load i32, i32* %nblock, align 4, !tbaa !34
  %1638 = load i32, i32* %nblockMAX, align 4, !tbaa !34
  %cmp2174 = icmp sge i32 %1637, %1638
  br i1 %cmp2174, label %if.then2176, label %if.end2177

if.then2176:                                      ; preds = %while.body2173
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2177:                                       ; preds = %while.body2173
  %1639 = load i8, i8* %uc, align 1, !tbaa !37
  %conv2178 = zext i8 %1639 to i32
  %1640 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2179 = getelementptr inbounds %struct.DState, %struct.DState* %1640, i32 0, i32 20
  %1641 = load i32*, i32** %tt2179, align 8, !tbaa !54
  %1642 = load i32, i32* %nblock, align 4, !tbaa !34
  %idxprom2180 = sext i32 %1642 to i64
  %arrayidx2181 = getelementptr inbounds i32, i32* %1641, i64 %idxprom2180
  store i32 %conv2178, i32* %arrayidx2181, align 4, !tbaa !34
  %1643 = load i32, i32* %nblock, align 4, !tbaa !34
  %inc2182 = add nsw i32 %1643, 1
  store i32 %inc2182, i32* %nblock, align 4, !tbaa !34
  %1644 = load i32, i32* %es, align 4, !tbaa !34
  %dec2183 = add nsw i32 %1644, -1
  store i32 %dec2183, i32* %es, align 4, !tbaa !34
  br label %while.cond2170, !llvm.loop !110

while.end2184:                                    ; preds = %while.cond2170
  br label %if.end2185

if.end2185:                                       ; preds = %while.end2184, %while.end2168
  br label %while.cond1942, !llvm.loop !111

if.else2186:                                      ; preds = %lor.lhs.false1950
  %1645 = load i32, i32* %nblock, align 4, !tbaa !34
  %1646 = load i32, i32* %nblockMAX, align 4, !tbaa !34
  %cmp2187 = icmp sge i32 %1645, %1646
  br i1 %cmp2187, label %if.then2189, label %if.end2190

if.then2189:                                      ; preds = %if.else2186
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2190:                                       ; preds = %if.else2186
  %1647 = bitcast i32* %ii2191 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1647) #3
  %1648 = bitcast i32* %jj2192 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1648) #3
  %1649 = bitcast i32* %kk2193 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1649) #3
  %1650 = bitcast i32* %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1650) #3
  %1651 = bitcast i32* %lno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1651) #3
  %1652 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1652) #3
  %1653 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1653) #3
  %1654 = load i32, i32* %nextSym, align 4, !tbaa !34
  %sub2194 = sub nsw i32 %1654, 1
  store i32 %sub2194, i32* %nn, align 4, !tbaa !34
  %1655 = load i32, i32* %nn, align 4, !tbaa !34
  %cmp2195 = icmp ult i32 %1655, 16
  br i1 %cmp2195, label %if.then2197, label %if.else2260

if.then2197:                                      ; preds = %if.end2190
  %1656 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2198 = getelementptr inbounds %struct.DState, %struct.DState* %1656, i32 0, i32 32
  %arrayidx2199 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2198, i64 0, i64 0
  %1657 = load i32, i32* %arrayidx2199, align 4, !tbaa !34
  store i32 %1657, i32* %pp, align 4, !tbaa !34
  %1658 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2200 = getelementptr inbounds %struct.DState, %struct.DState* %1658, i32 0, i32 31
  %1659 = load i32, i32* %pp, align 4, !tbaa !34
  %1660 = load i32, i32* %nn, align 4, !tbaa !34
  %add2201 = add i32 %1659, %1660
  %idxprom2202 = zext i32 %add2201 to i64
  %arrayidx2203 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2200, i64 0, i64 %idxprom2202
  %1661 = load i8, i8* %arrayidx2203, align 1, !tbaa !37
  store i8 %1661, i8* %uc, align 1, !tbaa !37
  br label %while.cond2204

while.cond2204:                                   ; preds = %while.body2207, %if.then2197
  %1662 = load i32, i32* %nn, align 4, !tbaa !34
  %cmp2205 = icmp ugt i32 %1662, 3
  br i1 %cmp2205, label %while.body2207, label %while.end2241

while.body2207:                                   ; preds = %while.cond2204
  %1663 = bitcast i32* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1663) #3
  %1664 = load i32, i32* %pp, align 4, !tbaa !34
  %1665 = load i32, i32* %nn, align 4, !tbaa !34
  %add2208 = add i32 %1664, %1665
  store i32 %add2208, i32* %z, align 4, !tbaa !34
  %1666 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2209 = getelementptr inbounds %struct.DState, %struct.DState* %1666, i32 0, i32 31
  %1667 = load i32, i32* %z, align 4, !tbaa !34
  %sub2210 = sub nsw i32 %1667, 1
  %idxprom2211 = sext i32 %sub2210 to i64
  %arrayidx2212 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2209, i64 0, i64 %idxprom2211
  %1668 = load i8, i8* %arrayidx2212, align 1, !tbaa !37
  %1669 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2213 = getelementptr inbounds %struct.DState, %struct.DState* %1669, i32 0, i32 31
  %1670 = load i32, i32* %z, align 4, !tbaa !34
  %idxprom2214 = sext i32 %1670 to i64
  %arrayidx2215 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2213, i64 0, i64 %idxprom2214
  store i8 %1668, i8* %arrayidx2215, align 1, !tbaa !37
  %1671 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2216 = getelementptr inbounds %struct.DState, %struct.DState* %1671, i32 0, i32 31
  %1672 = load i32, i32* %z, align 4, !tbaa !34
  %sub2217 = sub nsw i32 %1672, 2
  %idxprom2218 = sext i32 %sub2217 to i64
  %arrayidx2219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2216, i64 0, i64 %idxprom2218
  %1673 = load i8, i8* %arrayidx2219, align 1, !tbaa !37
  %1674 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2220 = getelementptr inbounds %struct.DState, %struct.DState* %1674, i32 0, i32 31
  %1675 = load i32, i32* %z, align 4, !tbaa !34
  %sub2221 = sub nsw i32 %1675, 1
  %idxprom2222 = sext i32 %sub2221 to i64
  %arrayidx2223 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2220, i64 0, i64 %idxprom2222
  store i8 %1673, i8* %arrayidx2223, align 1, !tbaa !37
  %1676 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2224 = getelementptr inbounds %struct.DState, %struct.DState* %1676, i32 0, i32 31
  %1677 = load i32, i32* %z, align 4, !tbaa !34
  %sub2225 = sub nsw i32 %1677, 3
  %idxprom2226 = sext i32 %sub2225 to i64
  %arrayidx2227 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2224, i64 0, i64 %idxprom2226
  %1678 = load i8, i8* %arrayidx2227, align 1, !tbaa !37
  %1679 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2228 = getelementptr inbounds %struct.DState, %struct.DState* %1679, i32 0, i32 31
  %1680 = load i32, i32* %z, align 4, !tbaa !34
  %sub2229 = sub nsw i32 %1680, 2
  %idxprom2230 = sext i32 %sub2229 to i64
  %arrayidx2231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2228, i64 0, i64 %idxprom2230
  store i8 %1678, i8* %arrayidx2231, align 1, !tbaa !37
  %1681 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2232 = getelementptr inbounds %struct.DState, %struct.DState* %1681, i32 0, i32 31
  %1682 = load i32, i32* %z, align 4, !tbaa !34
  %sub2233 = sub nsw i32 %1682, 4
  %idxprom2234 = sext i32 %sub2233 to i64
  %arrayidx2235 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2232, i64 0, i64 %idxprom2234
  %1683 = load i8, i8* %arrayidx2235, align 1, !tbaa !37
  %1684 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2236 = getelementptr inbounds %struct.DState, %struct.DState* %1684, i32 0, i32 31
  %1685 = load i32, i32* %z, align 4, !tbaa !34
  %sub2237 = sub nsw i32 %1685, 3
  %idxprom2238 = sext i32 %sub2237 to i64
  %arrayidx2239 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2236, i64 0, i64 %idxprom2238
  store i8 %1683, i8* %arrayidx2239, align 1, !tbaa !37
  %1686 = load i32, i32* %nn, align 4, !tbaa !34
  %sub2240 = sub i32 %1686, 4
  store i32 %sub2240, i32* %nn, align 4, !tbaa !34
  %1687 = bitcast i32* %z to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1687) #3
  br label %while.cond2204, !llvm.loop !112

while.end2241:                                    ; preds = %while.cond2204
  br label %while.cond2242

while.cond2242:                                   ; preds = %while.body2245, %while.end2241
  %1688 = load i32, i32* %nn, align 4, !tbaa !34
  %cmp2243 = icmp ugt i32 %1688, 0
  br i1 %cmp2243, label %while.body2245, label %while.end2256

while.body2245:                                   ; preds = %while.cond2242
  %1689 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2246 = getelementptr inbounds %struct.DState, %struct.DState* %1689, i32 0, i32 31
  %1690 = load i32, i32* %pp, align 4, !tbaa !34
  %1691 = load i32, i32* %nn, align 4, !tbaa !34
  %add2247 = add i32 %1690, %1691
  %sub2248 = sub i32 %add2247, 1
  %idxprom2249 = zext i32 %sub2248 to i64
  %arrayidx2250 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2246, i64 0, i64 %idxprom2249
  %1692 = load i8, i8* %arrayidx2250, align 1, !tbaa !37
  %1693 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2251 = getelementptr inbounds %struct.DState, %struct.DState* %1693, i32 0, i32 31
  %1694 = load i32, i32* %pp, align 4, !tbaa !34
  %1695 = load i32, i32* %nn, align 4, !tbaa !34
  %add2252 = add i32 %1694, %1695
  %idxprom2253 = zext i32 %add2252 to i64
  %arrayidx2254 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2251, i64 0, i64 %idxprom2253
  store i8 %1692, i8* %arrayidx2254, align 1, !tbaa !37
  %1696 = load i32, i32* %nn, align 4, !tbaa !34
  %dec2255 = add i32 %1696, -1
  store i32 %dec2255, i32* %nn, align 4, !tbaa !34
  br label %while.cond2242, !llvm.loop !113

while.end2256:                                    ; preds = %while.cond2242
  %1697 = load i8, i8* %uc, align 1, !tbaa !37
  %1698 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2257 = getelementptr inbounds %struct.DState, %struct.DState* %1698, i32 0, i32 31
  %1699 = load i32, i32* %pp, align 4, !tbaa !34
  %idxprom2258 = sext i32 %1699 to i64
  %arrayidx2259 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2257, i64 0, i64 %idxprom2258
  store i8 %1697, i8* %arrayidx2259, align 1, !tbaa !37
  br label %if.end2356

if.else2260:                                      ; preds = %if.end2190
  %1700 = load i32, i32* %nn, align 4, !tbaa !34
  %div = udiv i32 %1700, 16
  store i32 %div, i32* %lno, align 4, !tbaa !34
  %1701 = load i32, i32* %nn, align 4, !tbaa !34
  %rem = urem i32 %1701, 16
  store i32 %rem, i32* %off, align 4, !tbaa !34
  %1702 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2261 = getelementptr inbounds %struct.DState, %struct.DState* %1702, i32 0, i32 32
  %1703 = load i32, i32* %lno, align 4, !tbaa !34
  %idxprom2262 = sext i32 %1703 to i64
  %arrayidx2263 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2261, i64 0, i64 %idxprom2262
  %1704 = load i32, i32* %arrayidx2263, align 4, !tbaa !34
  %1705 = load i32, i32* %off, align 4, !tbaa !34
  %add2264 = add nsw i32 %1704, %1705
  store i32 %add2264, i32* %pp, align 4, !tbaa !34
  %1706 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2265 = getelementptr inbounds %struct.DState, %struct.DState* %1706, i32 0, i32 31
  %1707 = load i32, i32* %pp, align 4, !tbaa !34
  %idxprom2266 = sext i32 %1707 to i64
  %arrayidx2267 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2265, i64 0, i64 %idxprom2266
  %1708 = load i8, i8* %arrayidx2267, align 1, !tbaa !37
  store i8 %1708, i8* %uc, align 1, !tbaa !37
  br label %while.cond2268

while.cond2268:                                   ; preds = %while.body2274, %if.else2260
  %1709 = load i32, i32* %pp, align 4, !tbaa !34
  %1710 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2269 = getelementptr inbounds %struct.DState, %struct.DState* %1710, i32 0, i32 32
  %1711 = load i32, i32* %lno, align 4, !tbaa !34
  %idxprom2270 = sext i32 %1711 to i64
  %arrayidx2271 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2269, i64 0, i64 %idxprom2270
  %1712 = load i32, i32* %arrayidx2271, align 4, !tbaa !34
  %cmp2272 = icmp sgt i32 %1709, %1712
  br i1 %cmp2272, label %while.body2274, label %while.end2283

while.body2274:                                   ; preds = %while.cond2268
  %1713 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2275 = getelementptr inbounds %struct.DState, %struct.DState* %1713, i32 0, i32 31
  %1714 = load i32, i32* %pp, align 4, !tbaa !34
  %sub2276 = sub nsw i32 %1714, 1
  %idxprom2277 = sext i32 %sub2276 to i64
  %arrayidx2278 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2275, i64 0, i64 %idxprom2277
  %1715 = load i8, i8* %arrayidx2278, align 1, !tbaa !37
  %1716 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2279 = getelementptr inbounds %struct.DState, %struct.DState* %1716, i32 0, i32 31
  %1717 = load i32, i32* %pp, align 4, !tbaa !34
  %idxprom2280 = sext i32 %1717 to i64
  %arrayidx2281 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2279, i64 0, i64 %idxprom2280
  store i8 %1715, i8* %arrayidx2281, align 1, !tbaa !37
  %1718 = load i32, i32* %pp, align 4, !tbaa !34
  %dec2282 = add nsw i32 %1718, -1
  store i32 %dec2282, i32* %pp, align 4, !tbaa !34
  br label %while.cond2268, !llvm.loop !114

while.end2283:                                    ; preds = %while.cond2268
  %1719 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2284 = getelementptr inbounds %struct.DState, %struct.DState* %1719, i32 0, i32 32
  %1720 = load i32, i32* %lno, align 4, !tbaa !34
  %idxprom2285 = sext i32 %1720 to i64
  %arrayidx2286 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2284, i64 0, i64 %idxprom2285
  %1721 = load i32, i32* %arrayidx2286, align 4, !tbaa !34
  %inc2287 = add nsw i32 %1721, 1
  store i32 %inc2287, i32* %arrayidx2286, align 4, !tbaa !34
  br label %while.cond2288

while.cond2288:                                   ; preds = %while.body2291, %while.end2283
  %1722 = load i32, i32* %lno, align 4, !tbaa !34
  %cmp2289 = icmp sgt i32 %1722, 0
  br i1 %cmp2289, label %while.body2291, label %while.end2312

while.body2291:                                   ; preds = %while.cond2288
  %1723 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2292 = getelementptr inbounds %struct.DState, %struct.DState* %1723, i32 0, i32 32
  %1724 = load i32, i32* %lno, align 4, !tbaa !34
  %idxprom2293 = sext i32 %1724 to i64
  %arrayidx2294 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2292, i64 0, i64 %idxprom2293
  %1725 = load i32, i32* %arrayidx2294, align 4, !tbaa !34
  %dec2295 = add nsw i32 %1725, -1
  store i32 %dec2295, i32* %arrayidx2294, align 4, !tbaa !34
  %1726 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2296 = getelementptr inbounds %struct.DState, %struct.DState* %1726, i32 0, i32 31
  %1727 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2297 = getelementptr inbounds %struct.DState, %struct.DState* %1727, i32 0, i32 32
  %1728 = load i32, i32* %lno, align 4, !tbaa !34
  %sub2298 = sub nsw i32 %1728, 1
  %idxprom2299 = sext i32 %sub2298 to i64
  %arrayidx2300 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2297, i64 0, i64 %idxprom2299
  %1729 = load i32, i32* %arrayidx2300, align 4, !tbaa !34
  %add2301 = add nsw i32 %1729, 16
  %sub2302 = sub nsw i32 %add2301, 1
  %idxprom2303 = sext i32 %sub2302 to i64
  %arrayidx2304 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2296, i64 0, i64 %idxprom2303
  %1730 = load i8, i8* %arrayidx2304, align 1, !tbaa !37
  %1731 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2305 = getelementptr inbounds %struct.DState, %struct.DState* %1731, i32 0, i32 31
  %1732 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2306 = getelementptr inbounds %struct.DState, %struct.DState* %1732, i32 0, i32 32
  %1733 = load i32, i32* %lno, align 4, !tbaa !34
  %idxprom2307 = sext i32 %1733 to i64
  %arrayidx2308 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2306, i64 0, i64 %idxprom2307
  %1734 = load i32, i32* %arrayidx2308, align 4, !tbaa !34
  %idxprom2309 = sext i32 %1734 to i64
  %arrayidx2310 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2305, i64 0, i64 %idxprom2309
  store i8 %1730, i8* %arrayidx2310, align 1, !tbaa !37
  %1735 = load i32, i32* %lno, align 4, !tbaa !34
  %dec2311 = add nsw i32 %1735, -1
  store i32 %dec2311, i32* %lno, align 4, !tbaa !34
  br label %while.cond2288, !llvm.loop !115

while.end2312:                                    ; preds = %while.cond2288
  %1736 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2313 = getelementptr inbounds %struct.DState, %struct.DState* %1736, i32 0, i32 32
  %arrayidx2314 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2313, i64 0, i64 0
  %1737 = load i32, i32* %arrayidx2314, align 4, !tbaa !34
  %dec2315 = add nsw i32 %1737, -1
  store i32 %dec2315, i32* %arrayidx2314, align 4, !tbaa !34
  %1738 = load i8, i8* %uc, align 1, !tbaa !37
  %1739 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2316 = getelementptr inbounds %struct.DState, %struct.DState* %1739, i32 0, i32 31
  %1740 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2317 = getelementptr inbounds %struct.DState, %struct.DState* %1740, i32 0, i32 32
  %arrayidx2318 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2317, i64 0, i64 0
  %1741 = load i32, i32* %arrayidx2318, align 4, !tbaa !34
  %idxprom2319 = sext i32 %1741 to i64
  %arrayidx2320 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2316, i64 0, i64 %idxprom2319
  store i8 %1738, i8* %arrayidx2320, align 1, !tbaa !37
  %1742 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2321 = getelementptr inbounds %struct.DState, %struct.DState* %1742, i32 0, i32 32
  %arrayidx2322 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2321, i64 0, i64 0
  %1743 = load i32, i32* %arrayidx2322, align 4, !tbaa !34
  %cmp2323 = icmp eq i32 %1743, 0
  br i1 %cmp2323, label %if.then2325, label %if.end2355

if.then2325:                                      ; preds = %while.end2312
  store i32 4095, i32* %kk2193, align 4, !tbaa !34
  store i32 15, i32* %ii2191, align 4, !tbaa !34
  br label %for.cond2326

for.cond2326:                                     ; preds = %for.inc2352, %if.then2325
  %1744 = load i32, i32* %ii2191, align 4, !tbaa !34
  %cmp2327 = icmp sge i32 %1744, 0
  br i1 %cmp2327, label %for.body2329, label %for.end2354

for.body2329:                                     ; preds = %for.cond2326
  store i32 15, i32* %jj2192, align 4, !tbaa !34
  br label %for.cond2330

for.cond2330:                                     ; preds = %for.inc2345, %for.body2329
  %1745 = load i32, i32* %jj2192, align 4, !tbaa !34
  %cmp2331 = icmp sge i32 %1745, 0
  br i1 %cmp2331, label %for.body2333, label %for.end2347

for.body2333:                                     ; preds = %for.cond2330
  %1746 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2334 = getelementptr inbounds %struct.DState, %struct.DState* %1746, i32 0, i32 31
  %1747 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2335 = getelementptr inbounds %struct.DState, %struct.DState* %1747, i32 0, i32 32
  %1748 = load i32, i32* %ii2191, align 4, !tbaa !34
  %idxprom2336 = sext i32 %1748 to i64
  %arrayidx2337 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2335, i64 0, i64 %idxprom2336
  %1749 = load i32, i32* %arrayidx2337, align 4, !tbaa !34
  %1750 = load i32, i32* %jj2192, align 4, !tbaa !34
  %add2338 = add nsw i32 %1749, %1750
  %idxprom2339 = sext i32 %add2338 to i64
  %arrayidx2340 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2334, i64 0, i64 %idxprom2339
  %1751 = load i8, i8* %arrayidx2340, align 1, !tbaa !37
  %1752 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfa2341 = getelementptr inbounds %struct.DState, %struct.DState* %1752, i32 0, i32 31
  %1753 = load i32, i32* %kk2193, align 4, !tbaa !34
  %idxprom2342 = sext i32 %1753 to i64
  %arrayidx2343 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2341, i64 0, i64 %idxprom2342
  store i8 %1751, i8* %arrayidx2343, align 1, !tbaa !37
  %1754 = load i32, i32* %kk2193, align 4, !tbaa !34
  %dec2344 = add nsw i32 %1754, -1
  store i32 %dec2344, i32* %kk2193, align 4, !tbaa !34
  br label %for.inc2345

for.inc2345:                                      ; preds = %for.body2333
  %1755 = load i32, i32* %jj2192, align 4, !tbaa !34
  %dec2346 = add nsw i32 %1755, -1
  store i32 %dec2346, i32* %jj2192, align 4, !tbaa !34
  br label %for.cond2330, !llvm.loop !116

for.end2347:                                      ; preds = %for.cond2330
  %1756 = load i32, i32* %kk2193, align 4, !tbaa !34
  %add2348 = add nsw i32 %1756, 1
  %1757 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %mtfbase2349 = getelementptr inbounds %struct.DState, %struct.DState* %1757, i32 0, i32 32
  %1758 = load i32, i32* %ii2191, align 4, !tbaa !34
  %idxprom2350 = sext i32 %1758 to i64
  %arrayidx2351 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2349, i64 0, i64 %idxprom2350
  store i32 %add2348, i32* %arrayidx2351, align 4, !tbaa !34
  br label %for.inc2352

for.inc2352:                                      ; preds = %for.end2347
  %1759 = load i32, i32* %ii2191, align 4, !tbaa !34
  %dec2353 = add nsw i32 %1759, -1
  store i32 %dec2353, i32* %ii2191, align 4, !tbaa !34
  br label %for.cond2326, !llvm.loop !117

for.end2354:                                      ; preds = %for.cond2326
  br label %if.end2355

if.end2355:                                       ; preds = %for.end2354, %while.end2312
  br label %if.end2356

if.end2356:                                       ; preds = %if.end2355, %while.end2256
  %1760 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1760) #3
  %1761 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1761) #3
  %1762 = bitcast i32* %lno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1762) #3
  %1763 = bitcast i32* %pp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1763) #3
  %1764 = bitcast i32* %kk2193 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1764) #3
  %1765 = bitcast i32* %jj2192 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1765) #3
  %1766 = bitcast i32* %ii2191 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1766) #3
  %1767 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %unzftab2357 = getelementptr inbounds %struct.DState, %struct.DState* %1767, i32 0, i32 16
  %1768 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %seqToUnseq2358 = getelementptr inbounds %struct.DState, %struct.DState* %1768, i32 0, i32 30
  %1769 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2359 = zext i8 %1769 to i64
  %arrayidx2360 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2358, i64 0, i64 %idxprom2359
  %1770 = load i8, i8* %arrayidx2360, align 1, !tbaa !37
  %idxprom2361 = zext i8 %1770 to i64
  %arrayidx2362 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2357, i64 0, i64 %idxprom2361
  %1771 = load i32, i32* %arrayidx2362, align 4, !tbaa !34
  %inc2363 = add nsw i32 %1771, 1
  store i32 %inc2363, i32* %arrayidx2362, align 4, !tbaa !34
  %1772 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %smallDecompress2364 = getelementptr inbounds %struct.DState, %struct.DState* %1772, i32 0, i32 10
  %1773 = load i8, i8* %smallDecompress2364, align 4, !tbaa !49
  %tobool2365 = icmp ne i8 %1773, 0
  br i1 %tobool2365, label %if.then2366, label %if.else2374

if.then2366:                                      ; preds = %if.end2356
  %1774 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %seqToUnseq2367 = getelementptr inbounds %struct.DState, %struct.DState* %1774, i32 0, i32 30
  %1775 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2368 = zext i8 %1775 to i64
  %arrayidx2369 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2367, i64 0, i64 %idxprom2368
  %1776 = load i8, i8* %arrayidx2369, align 1, !tbaa !37
  %conv2370 = zext i8 %1776 to i16
  %1777 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162371 = getelementptr inbounds %struct.DState, %struct.DState* %1777, i32 0, i32 21
  %1778 = load i16*, i16** %ll162371, align 8, !tbaa !52
  %1779 = load i32, i32* %nblock, align 4, !tbaa !34
  %idxprom2372 = sext i32 %1779 to i64
  %arrayidx2373 = getelementptr inbounds i16, i16* %1778, i64 %idxprom2372
  store i16 %conv2370, i16* %arrayidx2373, align 2, !tbaa !107
  br label %if.end2382

if.else2374:                                      ; preds = %if.end2356
  %1780 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %seqToUnseq2375 = getelementptr inbounds %struct.DState, %struct.DState* %1780, i32 0, i32 30
  %1781 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2376 = zext i8 %1781 to i64
  %arrayidx2377 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2375, i64 0, i64 %idxprom2376
  %1782 = load i8, i8* %arrayidx2377, align 1, !tbaa !37
  %conv2378 = zext i8 %1782 to i32
  %1783 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2379 = getelementptr inbounds %struct.DState, %struct.DState* %1783, i32 0, i32 20
  %1784 = load i32*, i32** %tt2379, align 8, !tbaa !54
  %1785 = load i32, i32* %nblock, align 4, !tbaa !34
  %idxprom2380 = sext i32 %1785 to i64
  %arrayidx2381 = getelementptr inbounds i32, i32* %1784, i64 %idxprom2380
  store i32 %conv2378, i32* %arrayidx2381, align 4, !tbaa !34
  br label %if.end2382

if.end2382:                                       ; preds = %if.else2374, %if.then2366
  %1786 = load i32, i32* %nblock, align 4, !tbaa !34
  %inc2383 = add nsw i32 %1786, 1
  store i32 %inc2383, i32* %nblock, align 4, !tbaa !34
  %1787 = load i32, i32* %groupPos, align 4, !tbaa !34
  %cmp2384 = icmp eq i32 %1787, 0
  br i1 %cmp2384, label %if.then2386, label %if.end2411

if.then2386:                                      ; preds = %if.end2382
  %1788 = load i32, i32* %groupNo, align 4, !tbaa !34
  %inc2387 = add nsw i32 %1788, 1
  store i32 %inc2387, i32* %groupNo, align 4, !tbaa !34
  %1789 = load i32, i32* %groupNo, align 4, !tbaa !34
  %1790 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %cmp2388 = icmp sge i32 %1789, %1790
  br i1 %cmp2388, label %if.then2390, label %if.end2391

if.then2390:                                      ; preds = %if.then2386
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2391:                                       ; preds = %if.then2386
  store i32 50, i32* %groupPos, align 4, !tbaa !34
  %1791 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %selector2392 = getelementptr inbounds %struct.DState, %struct.DState* %1791, i32 0, i32 33
  %1792 = load i32, i32* %groupNo, align 4, !tbaa !34
  %idxprom2393 = sext i32 %1792 to i64
  %arrayidx2394 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector2392, i64 0, i64 %idxprom2393
  %1793 = load i8, i8* %arrayidx2394, align 1, !tbaa !37
  %conv2395 = zext i8 %1793 to i32
  store i32 %conv2395, i32* %gSel, align 4, !tbaa !34
  %1794 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %minLens2396 = getelementptr inbounds %struct.DState, %struct.DState* %1794, i32 0, i32 39
  %1795 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom2397 = sext i32 %1795 to i64
  %arrayidx2398 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens2396, i64 0, i64 %idxprom2397
  %1796 = load i32, i32* %arrayidx2398, align 4, !tbaa !34
  store i32 %1796, i32* %gMinlen, align 4, !tbaa !34
  %1797 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %limit2399 = getelementptr inbounds %struct.DState, %struct.DState* %1797, i32 0, i32 36
  %1798 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom2400 = sext i32 %1798 to i64
  %arrayidx2401 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit2399, i64 0, i64 %idxprom2400
  %arrayidx2402 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2401, i64 0, i64 0
  store i32* %arrayidx2402, i32** %gLimit, align 8, !tbaa !2
  %1799 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %perm2403 = getelementptr inbounds %struct.DState, %struct.DState* %1799, i32 0, i32 38
  %1800 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom2404 = sext i32 %1800 to i64
  %arrayidx2405 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm2403, i64 0, i64 %idxprom2404
  %arrayidx2406 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2405, i64 0, i64 0
  store i32* %arrayidx2406, i32** %gPerm, align 8, !tbaa !2
  %1801 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %base2407 = getelementptr inbounds %struct.DState, %struct.DState* %1801, i32 0, i32 37
  %1802 = load i32, i32* %gSel, align 4, !tbaa !34
  %idxprom2408 = sext i32 %1802 to i64
  %arrayidx2409 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base2407, i64 0, i64 %idxprom2408
  %arrayidx2410 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2409, i64 0, i64 0
  store i32* %arrayidx2410, i32** %gBase, align 8, !tbaa !2
  br label %if.end2411

if.end2411:                                       ; preds = %if.end2391, %if.end2382
  %1803 = load i32, i32* %groupPos, align 4, !tbaa !34
  %dec2412 = add nsw i32 %1803, -1
  store i32 %dec2412, i32* %groupPos, align 4, !tbaa !34
  %1804 = load i32, i32* %gMinlen, align 4, !tbaa !34
  store i32 %1804, i32* %zn, align 4, !tbaa !34
  br label %sw.bb2413

sw.bb2413:                                        ; preds = %if.end, %if.end2411
  %1805 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state2414 = getelementptr inbounds %struct.DState, %struct.DState* %1805, i32 0, i32 1
  store i32 40, i32* %state2414, align 8, !tbaa !9
  br label %while.cond2415

while.cond2415:                                   ; preds = %if.end2464, %sw.bb2413
  br label %while.body2416

while.body2416:                                   ; preds = %while.cond2415
  %1806 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2417 = getelementptr inbounds %struct.DState, %struct.DState* %1806, i32 0, i32 8
  %1807 = load i32, i32* %bsLive2417, align 4, !tbaa !35
  %1808 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp2418 = icmp sge i32 %1807, %1808
  br i1 %cmp2418, label %if.then2420, label %if.end2431

if.then2420:                                      ; preds = %while.body2416
  %1809 = bitcast i32* %v2421 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1809) #3
  %1810 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2422 = getelementptr inbounds %struct.DState, %struct.DState* %1810, i32 0, i32 7
  %1811 = load i32, i32* %bsBuff2422, align 8, !tbaa !36
  %1812 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2423 = getelementptr inbounds %struct.DState, %struct.DState* %1812, i32 0, i32 8
  %1813 = load i32, i32* %bsLive2423, align 4, !tbaa !35
  %1814 = load i32, i32* %zn, align 4, !tbaa !34
  %sub2424 = sub nsw i32 %1813, %1814
  %shr2425 = lshr i32 %1811, %sub2424
  %1815 = load i32, i32* %zn, align 4, !tbaa !34
  %shl2426 = shl i32 1, %1815
  %sub2427 = sub nsw i32 %shl2426, 1
  %and2428 = and i32 %shr2425, %sub2427
  store i32 %and2428, i32* %v2421, align 4, !tbaa !34
  %1816 = load i32, i32* %zn, align 4, !tbaa !34
  %1817 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2429 = getelementptr inbounds %struct.DState, %struct.DState* %1817, i32 0, i32 8
  %1818 = load i32, i32* %bsLive2429, align 4, !tbaa !35
  %sub2430 = sub nsw i32 %1818, %1816
  store i32 %sub2430, i32* %bsLive2429, align 4, !tbaa !35
  %1819 = load i32, i32* %v2421, align 4, !tbaa !34
  store i32 %1819, i32* %zvec, align 4, !tbaa !34
  %1820 = bitcast i32* %v2421 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1820) #3
  br label %while.end2465

if.end2431:                                       ; preds = %while.body2416
  %1821 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2432 = getelementptr inbounds %struct.DState, %struct.DState* %1821, i32 0, i32 0
  %1822 = load %struct.bz_stream*, %struct.bz_stream** %strm2432, align 8, !tbaa !6
  %avail_in2433 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1822, i32 0, i32 1
  %1823 = load i32, i32* %avail_in2433, align 8, !tbaa !38
  %cmp2434 = icmp eq i32 %1823, 0
  br i1 %cmp2434, label %if.then2436, label %if.end2437

if.then2436:                                      ; preds = %if.end2431
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2437:                                       ; preds = %if.end2431
  %1824 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2438 = getelementptr inbounds %struct.DState, %struct.DState* %1824, i32 0, i32 7
  %1825 = load i32, i32* %bsBuff2438, align 8, !tbaa !36
  %shl2439 = shl i32 %1825, 8
  %1826 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2440 = getelementptr inbounds %struct.DState, %struct.DState* %1826, i32 0, i32 0
  %1827 = load %struct.bz_stream*, %struct.bz_stream** %strm2440, align 8, !tbaa !6
  %next_in2441 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1827, i32 0, i32 0
  %1828 = load i8*, i8** %next_in2441, align 8, !tbaa !40
  %1829 = load i8, i8* %1828, align 1, !tbaa !37
  %conv2442 = zext i8 %1829 to i32
  %or2443 = or i32 %shl2439, %conv2442
  %1830 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2444 = getelementptr inbounds %struct.DState, %struct.DState* %1830, i32 0, i32 7
  store i32 %or2443, i32* %bsBuff2444, align 8, !tbaa !36
  %1831 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2445 = getelementptr inbounds %struct.DState, %struct.DState* %1831, i32 0, i32 8
  %1832 = load i32, i32* %bsLive2445, align 4, !tbaa !35
  %add2446 = add nsw i32 %1832, 8
  store i32 %add2446, i32* %bsLive2445, align 4, !tbaa !35
  %1833 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2447 = getelementptr inbounds %struct.DState, %struct.DState* %1833, i32 0, i32 0
  %1834 = load %struct.bz_stream*, %struct.bz_stream** %strm2447, align 8, !tbaa !6
  %next_in2448 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1834, i32 0, i32 0
  %1835 = load i8*, i8** %next_in2448, align 8, !tbaa !40
  %incdec.ptr2449 = getelementptr inbounds i8, i8* %1835, i32 1
  store i8* %incdec.ptr2449, i8** %next_in2448, align 8, !tbaa !40
  %1836 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2450 = getelementptr inbounds %struct.DState, %struct.DState* %1836, i32 0, i32 0
  %1837 = load %struct.bz_stream*, %struct.bz_stream** %strm2450, align 8, !tbaa !6
  %avail_in2451 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1837, i32 0, i32 1
  %1838 = load i32, i32* %avail_in2451, align 8, !tbaa !38
  %dec2452 = add i32 %1838, -1
  store i32 %dec2452, i32* %avail_in2451, align 8, !tbaa !38
  %1839 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2453 = getelementptr inbounds %struct.DState, %struct.DState* %1839, i32 0, i32 0
  %1840 = load %struct.bz_stream*, %struct.bz_stream** %strm2453, align 8, !tbaa !6
  %total_in_lo322454 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1840, i32 0, i32 2
  %1841 = load i32, i32* %total_in_lo322454, align 4, !tbaa !41
  %inc2455 = add i32 %1841, 1
  store i32 %inc2455, i32* %total_in_lo322454, align 4, !tbaa !41
  %1842 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2456 = getelementptr inbounds %struct.DState, %struct.DState* %1842, i32 0, i32 0
  %1843 = load %struct.bz_stream*, %struct.bz_stream** %strm2456, align 8, !tbaa !6
  %total_in_lo322457 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1843, i32 0, i32 2
  %1844 = load i32, i32* %total_in_lo322457, align 4, !tbaa !41
  %cmp2458 = icmp eq i32 %1844, 0
  br i1 %cmp2458, label %if.then2460, label %if.end2464

if.then2460:                                      ; preds = %if.end2437
  %1845 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2461 = getelementptr inbounds %struct.DState, %struct.DState* %1845, i32 0, i32 0
  %1846 = load %struct.bz_stream*, %struct.bz_stream** %strm2461, align 8, !tbaa !6
  %total_in_hi322462 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1846, i32 0, i32 3
  %1847 = load i32, i32* %total_in_hi322462, align 8, !tbaa !42
  %inc2463 = add i32 %1847, 1
  store i32 %inc2463, i32* %total_in_hi322462, align 8, !tbaa !42
  br label %if.end2464

if.end2464:                                       ; preds = %if.then2460, %if.end2437
  br label %while.cond2415, !llvm.loop !118

while.end2465:                                    ; preds = %if.then2420
  br label %while.cond2466

while.cond2466:                                   ; preds = %while.end2529, %while.end2465
  br label %while.body2467

while.body2467:                                   ; preds = %while.cond2466
  %1848 = load i32, i32* %zn, align 4, !tbaa !34
  %cmp2468 = icmp sgt i32 %1848, 20
  br i1 %cmp2468, label %if.then2470, label %if.end2471

if.then2470:                                      ; preds = %while.body2467
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2471:                                       ; preds = %while.body2467
  %1849 = load i32, i32* %zvec, align 4, !tbaa !34
  %1850 = load i32*, i32** %gLimit, align 8, !tbaa !2
  %1851 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2472 = sext i32 %1851 to i64
  %arrayidx2473 = getelementptr inbounds i32, i32* %1850, i64 %idxprom2472
  %1852 = load i32, i32* %arrayidx2473, align 4, !tbaa !34
  %cmp2474 = icmp sle i32 %1849, %1852
  br i1 %cmp2474, label %if.then2476, label %if.end2477

if.then2476:                                      ; preds = %if.end2471
  br label %while.end2532

if.end2477:                                       ; preds = %if.end2471
  %1853 = load i32, i32* %zn, align 4, !tbaa !34
  %inc2478 = add nsw i32 %1853, 1
  store i32 %inc2478, i32* %zn, align 4, !tbaa !34
  br label %sw.bb2479

sw.bb2479:                                        ; preds = %if.end, %if.end2477
  %1854 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state2480 = getelementptr inbounds %struct.DState, %struct.DState* %1854, i32 0, i32 1
  store i32 41, i32* %state2480, align 8, !tbaa !9
  br label %while.cond2481

while.cond2481:                                   ; preds = %if.end2528, %sw.bb2479
  br label %while.body2482

while.body2482:                                   ; preds = %while.cond2481
  %1855 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2483 = getelementptr inbounds %struct.DState, %struct.DState* %1855, i32 0, i32 8
  %1856 = load i32, i32* %bsLive2483, align 4, !tbaa !35
  %cmp2484 = icmp sge i32 %1856, 1
  br i1 %cmp2484, label %if.then2486, label %if.end2495

if.then2486:                                      ; preds = %while.body2482
  %1857 = bitcast i32* %v2487 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1857) #3
  %1858 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2488 = getelementptr inbounds %struct.DState, %struct.DState* %1858, i32 0, i32 7
  %1859 = load i32, i32* %bsBuff2488, align 8, !tbaa !36
  %1860 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2489 = getelementptr inbounds %struct.DState, %struct.DState* %1860, i32 0, i32 8
  %1861 = load i32, i32* %bsLive2489, align 4, !tbaa !35
  %sub2490 = sub nsw i32 %1861, 1
  %shr2491 = lshr i32 %1859, %sub2490
  %and2492 = and i32 %shr2491, 1
  store i32 %and2492, i32* %v2487, align 4, !tbaa !34
  %1862 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2493 = getelementptr inbounds %struct.DState, %struct.DState* %1862, i32 0, i32 8
  %1863 = load i32, i32* %bsLive2493, align 4, !tbaa !35
  %sub2494 = sub nsw i32 %1863, 1
  store i32 %sub2494, i32* %bsLive2493, align 4, !tbaa !35
  %1864 = load i32, i32* %v2487, align 4, !tbaa !34
  store i32 %1864, i32* %zj, align 4, !tbaa !34
  %1865 = bitcast i32* %v2487 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1865) #3
  br label %while.end2529

if.end2495:                                       ; preds = %while.body2482
  %1866 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2496 = getelementptr inbounds %struct.DState, %struct.DState* %1866, i32 0, i32 0
  %1867 = load %struct.bz_stream*, %struct.bz_stream** %strm2496, align 8, !tbaa !6
  %avail_in2497 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1867, i32 0, i32 1
  %1868 = load i32, i32* %avail_in2497, align 8, !tbaa !38
  %cmp2498 = icmp eq i32 %1868, 0
  br i1 %cmp2498, label %if.then2500, label %if.end2501

if.then2500:                                      ; preds = %if.end2495
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2501:                                       ; preds = %if.end2495
  %1869 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2502 = getelementptr inbounds %struct.DState, %struct.DState* %1869, i32 0, i32 7
  %1870 = load i32, i32* %bsBuff2502, align 8, !tbaa !36
  %shl2503 = shl i32 %1870, 8
  %1871 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2504 = getelementptr inbounds %struct.DState, %struct.DState* %1871, i32 0, i32 0
  %1872 = load %struct.bz_stream*, %struct.bz_stream** %strm2504, align 8, !tbaa !6
  %next_in2505 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1872, i32 0, i32 0
  %1873 = load i8*, i8** %next_in2505, align 8, !tbaa !40
  %1874 = load i8, i8* %1873, align 1, !tbaa !37
  %conv2506 = zext i8 %1874 to i32
  %or2507 = or i32 %shl2503, %conv2506
  %1875 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2508 = getelementptr inbounds %struct.DState, %struct.DState* %1875, i32 0, i32 7
  store i32 %or2507, i32* %bsBuff2508, align 8, !tbaa !36
  %1876 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2509 = getelementptr inbounds %struct.DState, %struct.DState* %1876, i32 0, i32 8
  %1877 = load i32, i32* %bsLive2509, align 4, !tbaa !35
  %add2510 = add nsw i32 %1877, 8
  store i32 %add2510, i32* %bsLive2509, align 4, !tbaa !35
  %1878 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2511 = getelementptr inbounds %struct.DState, %struct.DState* %1878, i32 0, i32 0
  %1879 = load %struct.bz_stream*, %struct.bz_stream** %strm2511, align 8, !tbaa !6
  %next_in2512 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1879, i32 0, i32 0
  %1880 = load i8*, i8** %next_in2512, align 8, !tbaa !40
  %incdec.ptr2513 = getelementptr inbounds i8, i8* %1880, i32 1
  store i8* %incdec.ptr2513, i8** %next_in2512, align 8, !tbaa !40
  %1881 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2514 = getelementptr inbounds %struct.DState, %struct.DState* %1881, i32 0, i32 0
  %1882 = load %struct.bz_stream*, %struct.bz_stream** %strm2514, align 8, !tbaa !6
  %avail_in2515 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1882, i32 0, i32 1
  %1883 = load i32, i32* %avail_in2515, align 8, !tbaa !38
  %dec2516 = add i32 %1883, -1
  store i32 %dec2516, i32* %avail_in2515, align 8, !tbaa !38
  %1884 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2517 = getelementptr inbounds %struct.DState, %struct.DState* %1884, i32 0, i32 0
  %1885 = load %struct.bz_stream*, %struct.bz_stream** %strm2517, align 8, !tbaa !6
  %total_in_lo322518 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1885, i32 0, i32 2
  %1886 = load i32, i32* %total_in_lo322518, align 4, !tbaa !41
  %inc2519 = add i32 %1886, 1
  store i32 %inc2519, i32* %total_in_lo322518, align 4, !tbaa !41
  %1887 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2520 = getelementptr inbounds %struct.DState, %struct.DState* %1887, i32 0, i32 0
  %1888 = load %struct.bz_stream*, %struct.bz_stream** %strm2520, align 8, !tbaa !6
  %total_in_lo322521 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1888, i32 0, i32 2
  %1889 = load i32, i32* %total_in_lo322521, align 4, !tbaa !41
  %cmp2522 = icmp eq i32 %1889, 0
  br i1 %cmp2522, label %if.then2524, label %if.end2528

if.then2524:                                      ; preds = %if.end2501
  %1890 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2525 = getelementptr inbounds %struct.DState, %struct.DState* %1890, i32 0, i32 0
  %1891 = load %struct.bz_stream*, %struct.bz_stream** %strm2525, align 8, !tbaa !6
  %total_in_hi322526 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1891, i32 0, i32 3
  %1892 = load i32, i32* %total_in_hi322526, align 8, !tbaa !42
  %inc2527 = add i32 %1892, 1
  store i32 %inc2527, i32* %total_in_hi322526, align 8, !tbaa !42
  br label %if.end2528

if.end2528:                                       ; preds = %if.then2524, %if.end2501
  br label %while.cond2481, !llvm.loop !119

while.end2529:                                    ; preds = %if.then2486
  %1893 = load i32, i32* %zvec, align 4, !tbaa !34
  %shl2530 = shl i32 %1893, 1
  %1894 = load i32, i32* %zj, align 4, !tbaa !34
  %or2531 = or i32 %shl2530, %1894
  store i32 %or2531, i32* %zvec, align 4, !tbaa !34
  br label %while.cond2466, !llvm.loop !120

while.end2532:                                    ; preds = %if.then2476
  %1895 = load i32, i32* %zvec, align 4, !tbaa !34
  %1896 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1897 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2533 = sext i32 %1897 to i64
  %arrayidx2534 = getelementptr inbounds i32, i32* %1896, i64 %idxprom2533
  %1898 = load i32, i32* %arrayidx2534, align 4, !tbaa !34
  %sub2535 = sub nsw i32 %1895, %1898
  %cmp2536 = icmp slt i32 %sub2535, 0
  br i1 %cmp2536, label %if.then2544, label %lor.lhs.false2538

lor.lhs.false2538:                                ; preds = %while.end2532
  %1899 = load i32, i32* %zvec, align 4, !tbaa !34
  %1900 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1901 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2539 = sext i32 %1901 to i64
  %arrayidx2540 = getelementptr inbounds i32, i32* %1900, i64 %idxprom2539
  %1902 = load i32, i32* %arrayidx2540, align 4, !tbaa !34
  %sub2541 = sub nsw i32 %1899, %1902
  %cmp2542 = icmp sge i32 %sub2541, 258
  br i1 %cmp2542, label %if.then2544, label %if.end2545

if.then2544:                                      ; preds = %lor.lhs.false2538, %while.end2532
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2545:                                       ; preds = %lor.lhs.false2538
  %1903 = load i32*, i32** %gPerm, align 8, !tbaa !2
  %1904 = load i32, i32* %zvec, align 4, !tbaa !34
  %1905 = load i32*, i32** %gBase, align 8, !tbaa !2
  %1906 = load i32, i32* %zn, align 4, !tbaa !34
  %idxprom2546 = sext i32 %1906 to i64
  %arrayidx2547 = getelementptr inbounds i32, i32* %1905, i64 %idxprom2546
  %1907 = load i32, i32* %arrayidx2547, align 4, !tbaa !34
  %sub2548 = sub nsw i32 %1904, %1907
  %idxprom2549 = sext i32 %sub2548 to i64
  %arrayidx2550 = getelementptr inbounds i32, i32* %1903, i64 %idxprom2549
  %1908 = load i32, i32* %arrayidx2550, align 4, !tbaa !34
  store i32 %1908, i32* %nextSym, align 4, !tbaa !34
  br label %while.cond1942, !llvm.loop !111

while.end2551:                                    ; preds = %if.then1946
  %1909 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2552 = getelementptr inbounds %struct.DState, %struct.DState* %1909, i32 0, i32 13
  %1910 = load i32, i32* %origPtr2552, align 8, !tbaa !70
  %cmp2553 = icmp slt i32 %1910, 0
  br i1 %cmp2553, label %if.then2559, label %lor.lhs.false2555

lor.lhs.false2555:                                ; preds = %while.end2551
  %1911 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2556 = getelementptr inbounds %struct.DState, %struct.DState* %1911, i32 0, i32 13
  %1912 = load i32, i32* %origPtr2556, align 8, !tbaa !70
  %1913 = load i32, i32* %nblock, align 4, !tbaa !34
  %cmp2557 = icmp sge i32 %1912, %1913
  br i1 %cmp2557, label %if.then2559, label %if.end2560

if.then2559:                                      ; preds = %lor.lhs.false2555, %while.end2551
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2560:                                       ; preds = %lor.lhs.false2555
  %1914 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %1914, i32 0, i32 18
  %arrayidx2561 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i64 0, i64 0
  store i32 0, i32* %arrayidx2561, align 8, !tbaa !34
  store i32 1, i32* %i, align 4, !tbaa !34
  br label %for.cond2562

for.cond2562:                                     ; preds = %for.inc2573, %if.end2560
  %1915 = load i32, i32* %i, align 4, !tbaa !34
  %cmp2563 = icmp sle i32 %1915, 256
  br i1 %cmp2563, label %for.body2565, label %for.end2575

for.body2565:                                     ; preds = %for.cond2562
  %1916 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %unzftab2566 = getelementptr inbounds %struct.DState, %struct.DState* %1916, i32 0, i32 16
  %1917 = load i32, i32* %i, align 4, !tbaa !34
  %sub2567 = sub nsw i32 %1917, 1
  %idxprom2568 = sext i32 %sub2567 to i64
  %arrayidx2569 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2566, i64 0, i64 %idxprom2568
  %1918 = load i32, i32* %arrayidx2569, align 4, !tbaa !34
  %1919 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2570 = getelementptr inbounds %struct.DState, %struct.DState* %1919, i32 0, i32 18
  %1920 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2571 = sext i32 %1920 to i64
  %arrayidx2572 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2570, i64 0, i64 %idxprom2571
  store i32 %1918, i32* %arrayidx2572, align 4, !tbaa !34
  br label %for.inc2573

for.inc2573:                                      ; preds = %for.body2565
  %1921 = load i32, i32* %i, align 4, !tbaa !34
  %inc2574 = add nsw i32 %1921, 1
  store i32 %inc2574, i32* %i, align 4, !tbaa !34
  br label %for.cond2562, !llvm.loop !121

for.end2575:                                      ; preds = %for.cond2562
  store i32 1, i32* %i, align 4, !tbaa !34
  br label %for.cond2576

for.cond2576:                                     ; preds = %for.inc2588, %for.end2575
  %1922 = load i32, i32* %i, align 4, !tbaa !34
  %cmp2577 = icmp sle i32 %1922, 256
  br i1 %cmp2577, label %for.body2579, label %for.end2590

for.body2579:                                     ; preds = %for.cond2576
  %1923 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2580 = getelementptr inbounds %struct.DState, %struct.DState* %1923, i32 0, i32 18
  %1924 = load i32, i32* %i, align 4, !tbaa !34
  %sub2581 = sub nsw i32 %1924, 1
  %idxprom2582 = sext i32 %sub2581 to i64
  %arrayidx2583 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2580, i64 0, i64 %idxprom2582
  %1925 = load i32, i32* %arrayidx2583, align 4, !tbaa !34
  %1926 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2584 = getelementptr inbounds %struct.DState, %struct.DState* %1926, i32 0, i32 18
  %1927 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2585 = sext i32 %1927 to i64
  %arrayidx2586 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2584, i64 0, i64 %idxprom2585
  %1928 = load i32, i32* %arrayidx2586, align 4, !tbaa !34
  %add2587 = add nsw i32 %1928, %1925
  store i32 %add2587, i32* %arrayidx2586, align 4, !tbaa !34
  br label %for.inc2588

for.inc2588:                                      ; preds = %for.body2579
  %1929 = load i32, i32* %i, align 4, !tbaa !34
  %inc2589 = add nsw i32 %1929, 1
  store i32 %inc2589, i32* %i, align 4, !tbaa !34
  br label %for.cond2576, !llvm.loop !122

for.end2590:                                      ; preds = %for.cond2576
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond2591

for.cond2591:                                     ; preds = %for.inc2608, %for.end2590
  %1930 = load i32, i32* %i, align 4, !tbaa !34
  %cmp2592 = icmp sle i32 %1930, 256
  br i1 %cmp2592, label %for.body2594, label %for.end2610

for.body2594:                                     ; preds = %for.cond2591
  %1931 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2595 = getelementptr inbounds %struct.DState, %struct.DState* %1931, i32 0, i32 18
  %1932 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2596 = sext i32 %1932 to i64
  %arrayidx2597 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2595, i64 0, i64 %idxprom2596
  %1933 = load i32, i32* %arrayidx2597, align 4, !tbaa !34
  %cmp2598 = icmp slt i32 %1933, 0
  br i1 %cmp2598, label %if.then2606, label %lor.lhs.false2600

lor.lhs.false2600:                                ; preds = %for.body2594
  %1934 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2601 = getelementptr inbounds %struct.DState, %struct.DState* %1934, i32 0, i32 18
  %1935 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2602 = sext i32 %1935 to i64
  %arrayidx2603 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2601, i64 0, i64 %idxprom2602
  %1936 = load i32, i32* %arrayidx2603, align 4, !tbaa !34
  %1937 = load i32, i32* %nblock, align 4, !tbaa !34
  %cmp2604 = icmp sgt i32 %1936, %1937
  br i1 %cmp2604, label %if.then2606, label %if.end2607

if.then2606:                                      ; preds = %lor.lhs.false2600, %for.body2594
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2607:                                       ; preds = %lor.lhs.false2600
  br label %for.inc2608

for.inc2608:                                      ; preds = %if.end2607
  %1938 = load i32, i32* %i, align 4, !tbaa !34
  %inc2609 = add nsw i32 %1938, 1
  store i32 %inc2609, i32* %i, align 4, !tbaa !34
  br label %for.cond2591, !llvm.loop !123

for.end2610:                                      ; preds = %for.cond2591
  %1939 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %1939, i32 0, i32 3
  store i32 0, i32* %state_out_len, align 8, !tbaa !124
  %1940 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %1940, i32 0, i32 2
  store i8 0, i8* %state_out_ch, align 4, !tbaa !125
  %1941 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %1941, i32 0, i32 25
  store i32 -1, i32* %calculatedBlockCRC, align 8, !tbaa !126
  %1942 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state2611 = getelementptr inbounds %struct.DState, %struct.DState* %1942, i32 0, i32 1
  store i32 2, i32* %state2611, align 8, !tbaa !9
  %1943 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %verbosity2612 = getelementptr inbounds %struct.DState, %struct.DState* %1943, i32 0, i32 12
  %1944 = load i32, i32* %verbosity2612, align 4, !tbaa !62
  %cmp2613 = icmp sge i32 %1944, 2
  br i1 %cmp2613, label %if.then2615, label %if.end2617

if.then2615:                                      ; preds = %for.end2610
  %1945 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call2616 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1945, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end2617

if.end2617:                                       ; preds = %if.then2615, %for.end2610
  %1946 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %smallDecompress2618 = getelementptr inbounds %struct.DState, %struct.DState* %1946, i32 0, i32 10
  %1947 = load i8, i8* %smallDecompress2618, align 4, !tbaa !49
  %tobool2619 = icmp ne i8 %1947, 0
  br i1 %tobool2619, label %if.then2620, label %if.else2850

if.then2620:                                      ; preds = %if.end2617
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond2621

for.cond2621:                                     ; preds = %for.inc2630, %if.then2620
  %1948 = load i32, i32* %i, align 4, !tbaa !34
  %cmp2622 = icmp sle i32 %1948, 256
  br i1 %cmp2622, label %for.body2624, label %for.end2632

for.body2624:                                     ; preds = %for.cond2621
  %1949 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2625 = getelementptr inbounds %struct.DState, %struct.DState* %1949, i32 0, i32 18
  %1950 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2626 = sext i32 %1950 to i64
  %arrayidx2627 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2625, i64 0, i64 %idxprom2626
  %1951 = load i32, i32* %arrayidx2627, align 4, !tbaa !34
  %1952 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftabCopy = getelementptr inbounds %struct.DState, %struct.DState* %1952, i32 0, i32 19
  %1953 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2628 = sext i32 %1953 to i64
  %arrayidx2629 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy, i64 0, i64 %idxprom2628
  store i32 %1951, i32* %arrayidx2629, align 4, !tbaa !34
  br label %for.inc2630

for.inc2630:                                      ; preds = %for.body2624
  %1954 = load i32, i32* %i, align 4, !tbaa !34
  %inc2631 = add nsw i32 %1954, 1
  store i32 %inc2631, i32* %i, align 4, !tbaa !34
  br label %for.cond2621, !llvm.loop !127

for.end2632:                                      ; preds = %for.cond2621
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond2633

for.cond2633:                                     ; preds = %for.inc2692, %for.end2632
  %1955 = load i32, i32* %i, align 4, !tbaa !34
  %1956 = load i32, i32* %nblock, align 4, !tbaa !34
  %cmp2634 = icmp slt i32 %1955, %1956
  br i1 %cmp2634, label %for.body2636, label %for.end2694

for.body2636:                                     ; preds = %for.cond2633
  %1957 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162637 = getelementptr inbounds %struct.DState, %struct.DState* %1957, i32 0, i32 21
  %1958 = load i16*, i16** %ll162637, align 8, !tbaa !52
  %1959 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2638 = sext i32 %1959 to i64
  %arrayidx2639 = getelementptr inbounds i16, i16* %1958, i64 %idxprom2638
  %1960 = load i16, i16* %arrayidx2639, align 2, !tbaa !107
  %conv2640 = trunc i16 %1960 to i8
  store i8 %conv2640, i8* %uc, align 1, !tbaa !37
  %1961 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftabCopy2641 = getelementptr inbounds %struct.DState, %struct.DState* %1961, i32 0, i32 19
  %1962 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2642 = zext i8 %1962 to i64
  %arrayidx2643 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2641, i64 0, i64 %idxprom2642
  %1963 = load i32, i32* %arrayidx2643, align 4, !tbaa !34
  %and2644 = and i32 %1963, 65535
  %conv2645 = trunc i32 %and2644 to i16
  %1964 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162646 = getelementptr inbounds %struct.DState, %struct.DState* %1964, i32 0, i32 21
  %1965 = load i16*, i16** %ll162646, align 8, !tbaa !52
  %1966 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2647 = sext i32 %1966 to i64
  %arrayidx2648 = getelementptr inbounds i16, i16* %1965, i64 %idxprom2647
  store i16 %conv2645, i16* %arrayidx2648, align 2, !tbaa !107
  %1967 = load i32, i32* %i, align 4, !tbaa !34
  %and2649 = and i32 %1967, 1
  %cmp2650 = icmp eq i32 %and2649, 0
  br i1 %cmp2650, label %if.then2652, label %if.else2669

if.then2652:                                      ; preds = %for.body2636
  %1968 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42653 = getelementptr inbounds %struct.DState, %struct.DState* %1968, i32 0, i32 22
  %1969 = load i8*, i8** %ll42653, align 8, !tbaa !53
  %1970 = load i32, i32* %i, align 4, !tbaa !34
  %shr2654 = ashr i32 %1970, 1
  %idxprom2655 = sext i32 %shr2654 to i64
  %arrayidx2656 = getelementptr inbounds i8, i8* %1969, i64 %idxprom2655
  %1971 = load i8, i8* %arrayidx2656, align 1, !tbaa !37
  %conv2657 = zext i8 %1971 to i32
  %and2658 = and i32 %conv2657, 240
  %1972 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftabCopy2659 = getelementptr inbounds %struct.DState, %struct.DState* %1972, i32 0, i32 19
  %1973 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2660 = zext i8 %1973 to i64
  %arrayidx2661 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2659, i64 0, i64 %idxprom2660
  %1974 = load i32, i32* %arrayidx2661, align 4, !tbaa !34
  %shr2662 = ashr i32 %1974, 16
  %or2663 = or i32 %and2658, %shr2662
  %conv2664 = trunc i32 %or2663 to i8
  %1975 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42665 = getelementptr inbounds %struct.DState, %struct.DState* %1975, i32 0, i32 22
  %1976 = load i8*, i8** %ll42665, align 8, !tbaa !53
  %1977 = load i32, i32* %i, align 4, !tbaa !34
  %shr2666 = ashr i32 %1977, 1
  %idxprom2667 = sext i32 %shr2666 to i64
  %arrayidx2668 = getelementptr inbounds i8, i8* %1976, i64 %idxprom2667
  store i8 %conv2664, i8* %arrayidx2668, align 1, !tbaa !37
  br label %if.end2687

if.else2669:                                      ; preds = %for.body2636
  %1978 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42670 = getelementptr inbounds %struct.DState, %struct.DState* %1978, i32 0, i32 22
  %1979 = load i8*, i8** %ll42670, align 8, !tbaa !53
  %1980 = load i32, i32* %i, align 4, !tbaa !34
  %shr2671 = ashr i32 %1980, 1
  %idxprom2672 = sext i32 %shr2671 to i64
  %arrayidx2673 = getelementptr inbounds i8, i8* %1979, i64 %idxprom2672
  %1981 = load i8, i8* %arrayidx2673, align 1, !tbaa !37
  %conv2674 = zext i8 %1981 to i32
  %and2675 = and i32 %conv2674, 15
  %1982 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftabCopy2676 = getelementptr inbounds %struct.DState, %struct.DState* %1982, i32 0, i32 19
  %1983 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2677 = zext i8 %1983 to i64
  %arrayidx2678 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2676, i64 0, i64 %idxprom2677
  %1984 = load i32, i32* %arrayidx2678, align 4, !tbaa !34
  %shr2679 = ashr i32 %1984, 16
  %shl2680 = shl i32 %shr2679, 4
  %or2681 = or i32 %and2675, %shl2680
  %conv2682 = trunc i32 %or2681 to i8
  %1985 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42683 = getelementptr inbounds %struct.DState, %struct.DState* %1985, i32 0, i32 22
  %1986 = load i8*, i8** %ll42683, align 8, !tbaa !53
  %1987 = load i32, i32* %i, align 4, !tbaa !34
  %shr2684 = ashr i32 %1987, 1
  %idxprom2685 = sext i32 %shr2684 to i64
  %arrayidx2686 = getelementptr inbounds i8, i8* %1986, i64 %idxprom2685
  store i8 %conv2682, i8* %arrayidx2686, align 1, !tbaa !37
  br label %if.end2687

if.end2687:                                       ; preds = %if.else2669, %if.then2652
  %1988 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftabCopy2688 = getelementptr inbounds %struct.DState, %struct.DState* %1988, i32 0, i32 19
  %1989 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2689 = zext i8 %1989 to i64
  %arrayidx2690 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2688, i64 0, i64 %idxprom2689
  %1990 = load i32, i32* %arrayidx2690, align 4, !tbaa !34
  %inc2691 = add nsw i32 %1990, 1
  store i32 %inc2691, i32* %arrayidx2690, align 4, !tbaa !34
  br label %for.inc2692

for.inc2692:                                      ; preds = %if.end2687
  %1991 = load i32, i32* %i, align 4, !tbaa !34
  %inc2693 = add nsw i32 %1991, 1
  store i32 %inc2693, i32* %i, align 4, !tbaa !34
  br label %for.cond2633, !llvm.loop !128

for.end2694:                                      ; preds = %for.cond2633
  %1992 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2695 = getelementptr inbounds %struct.DState, %struct.DState* %1992, i32 0, i32 13
  %1993 = load i32, i32* %origPtr2695, align 8, !tbaa !70
  store i32 %1993, i32* %i, align 4, !tbaa !34
  %1994 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162696 = getelementptr inbounds %struct.DState, %struct.DState* %1994, i32 0, i32 21
  %1995 = load i16*, i16** %ll162696, align 8, !tbaa !52
  %1996 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2697 = sext i32 %1996 to i64
  %arrayidx2698 = getelementptr inbounds i16, i16* %1995, i64 %idxprom2697
  %1997 = load i16, i16* %arrayidx2698, align 2, !tbaa !107
  %conv2699 = zext i16 %1997 to i32
  %1998 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42700 = getelementptr inbounds %struct.DState, %struct.DState* %1998, i32 0, i32 22
  %1999 = load i8*, i8** %ll42700, align 8, !tbaa !53
  %2000 = load i32, i32* %i, align 4, !tbaa !34
  %shr2701 = ashr i32 %2000, 1
  %idxprom2702 = sext i32 %shr2701 to i64
  %arrayidx2703 = getelementptr inbounds i8, i8* %1999, i64 %idxprom2702
  %2001 = load i8, i8* %arrayidx2703, align 1, !tbaa !37
  %conv2704 = zext i8 %2001 to i32
  %2002 = load i32, i32* %i, align 4, !tbaa !34
  %shl2705 = shl i32 %2002, 2
  %and2706 = and i32 %shl2705, 4
  %shr2707 = lshr i32 %conv2704, %and2706
  %and2708 = and i32 %shr2707, 15
  %shl2709 = shl i32 %and2708, 16
  %or2710 = or i32 %conv2699, %shl2709
  store i32 %or2710, i32* %j, align 4, !tbaa !34
  br label %do.body2711

do.body2711:                                      ; preds = %do.cond2766, %for.end2694
  %2003 = bitcast i32* %tmp2712 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2003) #3
  %2004 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162713 = getelementptr inbounds %struct.DState, %struct.DState* %2004, i32 0, i32 21
  %2005 = load i16*, i16** %ll162713, align 8, !tbaa !52
  %2006 = load i32, i32* %j, align 4, !tbaa !34
  %idxprom2714 = sext i32 %2006 to i64
  %arrayidx2715 = getelementptr inbounds i16, i16* %2005, i64 %idxprom2714
  %2007 = load i16, i16* %arrayidx2715, align 2, !tbaa !107
  %conv2716 = zext i16 %2007 to i32
  %2008 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42717 = getelementptr inbounds %struct.DState, %struct.DState* %2008, i32 0, i32 22
  %2009 = load i8*, i8** %ll42717, align 8, !tbaa !53
  %2010 = load i32, i32* %j, align 4, !tbaa !34
  %shr2718 = ashr i32 %2010, 1
  %idxprom2719 = sext i32 %shr2718 to i64
  %arrayidx2720 = getelementptr inbounds i8, i8* %2009, i64 %idxprom2719
  %2011 = load i8, i8* %arrayidx2720, align 1, !tbaa !37
  %conv2721 = zext i8 %2011 to i32
  %2012 = load i32, i32* %j, align 4, !tbaa !34
  %shl2722 = shl i32 %2012, 2
  %and2723 = and i32 %shl2722, 4
  %shr2724 = lshr i32 %conv2721, %and2723
  %and2725 = and i32 %shr2724, 15
  %shl2726 = shl i32 %and2725, 16
  %or2727 = or i32 %conv2716, %shl2726
  store i32 %or2727, i32* %tmp2712, align 4, !tbaa !34
  %2013 = load i32, i32* %i, align 4, !tbaa !34
  %and2728 = and i32 %2013, 65535
  %conv2729 = trunc i32 %and2728 to i16
  %2014 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162730 = getelementptr inbounds %struct.DState, %struct.DState* %2014, i32 0, i32 21
  %2015 = load i16*, i16** %ll162730, align 8, !tbaa !52
  %2016 = load i32, i32* %j, align 4, !tbaa !34
  %idxprom2731 = sext i32 %2016 to i64
  %arrayidx2732 = getelementptr inbounds i16, i16* %2015, i64 %idxprom2731
  store i16 %conv2729, i16* %arrayidx2732, align 2, !tbaa !107
  %2017 = load i32, i32* %j, align 4, !tbaa !34
  %and2733 = and i32 %2017, 1
  %cmp2734 = icmp eq i32 %and2733, 0
  br i1 %cmp2734, label %if.then2736, label %if.else2750

if.then2736:                                      ; preds = %do.body2711
  %2018 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42737 = getelementptr inbounds %struct.DState, %struct.DState* %2018, i32 0, i32 22
  %2019 = load i8*, i8** %ll42737, align 8, !tbaa !53
  %2020 = load i32, i32* %j, align 4, !tbaa !34
  %shr2738 = ashr i32 %2020, 1
  %idxprom2739 = sext i32 %shr2738 to i64
  %arrayidx2740 = getelementptr inbounds i8, i8* %2019, i64 %idxprom2739
  %2021 = load i8, i8* %arrayidx2740, align 1, !tbaa !37
  %conv2741 = zext i8 %2021 to i32
  %and2742 = and i32 %conv2741, 240
  %2022 = load i32, i32* %i, align 4, !tbaa !34
  %shr2743 = ashr i32 %2022, 16
  %or2744 = or i32 %and2742, %shr2743
  %conv2745 = trunc i32 %or2744 to i8
  %2023 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42746 = getelementptr inbounds %struct.DState, %struct.DState* %2023, i32 0, i32 22
  %2024 = load i8*, i8** %ll42746, align 8, !tbaa !53
  %2025 = load i32, i32* %j, align 4, !tbaa !34
  %shr2747 = ashr i32 %2025, 1
  %idxprom2748 = sext i32 %shr2747 to i64
  %arrayidx2749 = getelementptr inbounds i8, i8* %2024, i64 %idxprom2748
  store i8 %conv2745, i8* %arrayidx2749, align 1, !tbaa !37
  br label %if.end2765

if.else2750:                                      ; preds = %do.body2711
  %2026 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42751 = getelementptr inbounds %struct.DState, %struct.DState* %2026, i32 0, i32 22
  %2027 = load i8*, i8** %ll42751, align 8, !tbaa !53
  %2028 = load i32, i32* %j, align 4, !tbaa !34
  %shr2752 = ashr i32 %2028, 1
  %idxprom2753 = sext i32 %shr2752 to i64
  %arrayidx2754 = getelementptr inbounds i8, i8* %2027, i64 %idxprom2753
  %2029 = load i8, i8* %arrayidx2754, align 1, !tbaa !37
  %conv2755 = zext i8 %2029 to i32
  %and2756 = and i32 %conv2755, 15
  %2030 = load i32, i32* %i, align 4, !tbaa !34
  %shr2757 = ashr i32 %2030, 16
  %shl2758 = shl i32 %shr2757, 4
  %or2759 = or i32 %and2756, %shl2758
  %conv2760 = trunc i32 %or2759 to i8
  %2031 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42761 = getelementptr inbounds %struct.DState, %struct.DState* %2031, i32 0, i32 22
  %2032 = load i8*, i8** %ll42761, align 8, !tbaa !53
  %2033 = load i32, i32* %j, align 4, !tbaa !34
  %shr2762 = ashr i32 %2033, 1
  %idxprom2763 = sext i32 %shr2762 to i64
  %arrayidx2764 = getelementptr inbounds i8, i8* %2032, i64 %idxprom2763
  store i8 %conv2760, i8* %arrayidx2764, align 1, !tbaa !37
  br label %if.end2765

if.end2765:                                       ; preds = %if.else2750, %if.then2736
  %2034 = load i32, i32* %j, align 4, !tbaa !34
  store i32 %2034, i32* %i, align 4, !tbaa !34
  %2035 = load i32, i32* %tmp2712, align 4, !tbaa !34
  store i32 %2035, i32* %j, align 4, !tbaa !34
  %2036 = bitcast i32* %tmp2712 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2036) #3
  br label %do.cond2766

do.cond2766:                                      ; preds = %if.end2765
  %2037 = load i32, i32* %i, align 4, !tbaa !34
  %2038 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2767 = getelementptr inbounds %struct.DState, %struct.DState* %2038, i32 0, i32 13
  %2039 = load i32, i32* %origPtr2767, align 8, !tbaa !70
  %cmp2768 = icmp ne i32 %2037, %2039
  br i1 %cmp2768, label %do.body2711, label %do.end2770, !llvm.loop !129

do.end2770:                                       ; preds = %do.cond2766
  %2040 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2771 = getelementptr inbounds %struct.DState, %struct.DState* %2040, i32 0, i32 13
  %2041 = load i32, i32* %origPtr2771, align 8, !tbaa !70
  %2042 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %2042, i32 0, i32 14
  store i32 %2041, i32* %tPos, align 4, !tbaa !130
  %2043 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %2043, i32 0, i32 17
  store i32 0, i32* %nblock_used, align 4, !tbaa !131
  %2044 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockRandomised2772 = getelementptr inbounds %struct.DState, %struct.DState* %2044, i32 0, i32 4
  %2045 = load i8, i8* %blockRandomised2772, align 4, !tbaa !68
  %tobool2773 = icmp ne i8 %2045, 0
  br i1 %tobool2773, label %if.then2774, label %if.else2822

if.then2774:                                      ; preds = %do.end2770
  %2046 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %2046, i32 0, i32 5
  store i32 0, i32* %rNToGo, align 8, !tbaa !132
  %2047 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %2047, i32 0, i32 6
  store i32 0, i32* %rTPos, align 4, !tbaa !133
  %2048 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2775 = getelementptr inbounds %struct.DState, %struct.DState* %2048, i32 0, i32 14
  %2049 = load i32, i32* %tPos2775, align 4, !tbaa !130
  %2050 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2776 = getelementptr inbounds %struct.DState, %struct.DState* %2050, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2776, i64 0, i64 0
  %call2777 = call i32 @BZ2_indexIntoF(i32 %2049, i32* %arraydecay)
  %2051 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %2051, i32 0, i32 15
  store i32 %call2777, i32* %k0, align 8, !tbaa !134
  %2052 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162778 = getelementptr inbounds %struct.DState, %struct.DState* %2052, i32 0, i32 21
  %2053 = load i16*, i16** %ll162778, align 8, !tbaa !52
  %2054 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2779 = getelementptr inbounds %struct.DState, %struct.DState* %2054, i32 0, i32 14
  %2055 = load i32, i32* %tPos2779, align 4, !tbaa !130
  %idxprom2780 = zext i32 %2055 to i64
  %arrayidx2781 = getelementptr inbounds i16, i16* %2053, i64 %idxprom2780
  %2056 = load i16, i16* %arrayidx2781, align 2, !tbaa !107
  %conv2782 = zext i16 %2056 to i32
  %2057 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42783 = getelementptr inbounds %struct.DState, %struct.DState* %2057, i32 0, i32 22
  %2058 = load i8*, i8** %ll42783, align 8, !tbaa !53
  %2059 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2784 = getelementptr inbounds %struct.DState, %struct.DState* %2059, i32 0, i32 14
  %2060 = load i32, i32* %tPos2784, align 4, !tbaa !130
  %shr2785 = lshr i32 %2060, 1
  %idxprom2786 = zext i32 %shr2785 to i64
  %arrayidx2787 = getelementptr inbounds i8, i8* %2058, i64 %idxprom2786
  %2061 = load i8, i8* %arrayidx2787, align 1, !tbaa !37
  %conv2788 = zext i8 %2061 to i32
  %2062 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2789 = getelementptr inbounds %struct.DState, %struct.DState* %2062, i32 0, i32 14
  %2063 = load i32, i32* %tPos2789, align 4, !tbaa !130
  %shl2790 = shl i32 %2063, 2
  %and2791 = and i32 %shl2790, 4
  %shr2792 = lshr i32 %conv2788, %and2791
  %and2793 = and i32 %shr2792, 15
  %shl2794 = shl i32 %and2793, 16
  %or2795 = or i32 %conv2782, %shl2794
  %2064 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2796 = getelementptr inbounds %struct.DState, %struct.DState* %2064, i32 0, i32 14
  store i32 %or2795, i32* %tPos2796, align 4, !tbaa !130
  %2065 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used2797 = getelementptr inbounds %struct.DState, %struct.DState* %2065, i32 0, i32 17
  %2066 = load i32, i32* %nblock_used2797, align 4, !tbaa !131
  %inc2798 = add nsw i32 %2066, 1
  store i32 %inc2798, i32* %nblock_used2797, align 4, !tbaa !131
  %2067 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2799 = getelementptr inbounds %struct.DState, %struct.DState* %2067, i32 0, i32 5
  %2068 = load i32, i32* %rNToGo2799, align 8, !tbaa !132
  %cmp2800 = icmp eq i32 %2068, 0
  br i1 %cmp2800, label %if.then2802, label %if.end2815

if.then2802:                                      ; preds = %if.then2774
  %2069 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2803 = getelementptr inbounds %struct.DState, %struct.DState* %2069, i32 0, i32 6
  %2070 = load i32, i32* %rTPos2803, align 4, !tbaa !133
  %idxprom2804 = sext i32 %2070 to i64
  %arrayidx2805 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2804
  %2071 = load i32, i32* %arrayidx2805, align 4, !tbaa !34
  %2072 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2806 = getelementptr inbounds %struct.DState, %struct.DState* %2072, i32 0, i32 5
  store i32 %2071, i32* %rNToGo2806, align 8, !tbaa !132
  %2073 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2807 = getelementptr inbounds %struct.DState, %struct.DState* %2073, i32 0, i32 6
  %2074 = load i32, i32* %rTPos2807, align 4, !tbaa !133
  %inc2808 = add nsw i32 %2074, 1
  store i32 %inc2808, i32* %rTPos2807, align 4, !tbaa !133
  %2075 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2809 = getelementptr inbounds %struct.DState, %struct.DState* %2075, i32 0, i32 6
  %2076 = load i32, i32* %rTPos2809, align 4, !tbaa !133
  %cmp2810 = icmp eq i32 %2076, 512
  br i1 %cmp2810, label %if.then2812, label %if.end2814

if.then2812:                                      ; preds = %if.then2802
  %2077 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2813 = getelementptr inbounds %struct.DState, %struct.DState* %2077, i32 0, i32 6
  store i32 0, i32* %rTPos2813, align 4, !tbaa !133
  br label %if.end2814

if.end2814:                                       ; preds = %if.then2812, %if.then2802
  br label %if.end2815

if.end2815:                                       ; preds = %if.end2814, %if.then2774
  %2078 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2816 = getelementptr inbounds %struct.DState, %struct.DState* %2078, i32 0, i32 5
  %2079 = load i32, i32* %rNToGo2816, align 8, !tbaa !132
  %dec2817 = add nsw i32 %2079, -1
  store i32 %dec2817, i32* %rNToGo2816, align 8, !tbaa !132
  %2080 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2818 = getelementptr inbounds %struct.DState, %struct.DState* %2080, i32 0, i32 5
  %2081 = load i32, i32* %rNToGo2818, align 8, !tbaa !132
  %cmp2819 = icmp eq i32 %2081, 1
  %2082 = zext i1 %cmp2819 to i64
  %cond = select i1 %cmp2819, i32 1, i32 0
  %2083 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k02821 = getelementptr inbounds %struct.DState, %struct.DState* %2083, i32 0, i32 15
  %2084 = load i32, i32* %k02821, align 8, !tbaa !134
  %xor = xor i32 %2084, %cond
  store i32 %xor, i32* %k02821, align 8, !tbaa !134
  br label %if.end2849

if.else2822:                                      ; preds = %do.end2770
  %2085 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2823 = getelementptr inbounds %struct.DState, %struct.DState* %2085, i32 0, i32 14
  %2086 = load i32, i32* %tPos2823, align 4, !tbaa !130
  %2087 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2824 = getelementptr inbounds %struct.DState, %struct.DState* %2087, i32 0, i32 18
  %arraydecay2825 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2824, i64 0, i64 0
  %call2826 = call i32 @BZ2_indexIntoF(i32 %2086, i32* %arraydecay2825)
  %2088 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k02827 = getelementptr inbounds %struct.DState, %struct.DState* %2088, i32 0, i32 15
  store i32 %call2826, i32* %k02827, align 8, !tbaa !134
  %2089 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll162828 = getelementptr inbounds %struct.DState, %struct.DState* %2089, i32 0, i32 21
  %2090 = load i16*, i16** %ll162828, align 8, !tbaa !52
  %2091 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2829 = getelementptr inbounds %struct.DState, %struct.DState* %2091, i32 0, i32 14
  %2092 = load i32, i32* %tPos2829, align 4, !tbaa !130
  %idxprom2830 = zext i32 %2092 to i64
  %arrayidx2831 = getelementptr inbounds i16, i16* %2090, i64 %idxprom2830
  %2093 = load i16, i16* %arrayidx2831, align 2, !tbaa !107
  %conv2832 = zext i16 %2093 to i32
  %2094 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %ll42833 = getelementptr inbounds %struct.DState, %struct.DState* %2094, i32 0, i32 22
  %2095 = load i8*, i8** %ll42833, align 8, !tbaa !53
  %2096 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2834 = getelementptr inbounds %struct.DState, %struct.DState* %2096, i32 0, i32 14
  %2097 = load i32, i32* %tPos2834, align 4, !tbaa !130
  %shr2835 = lshr i32 %2097, 1
  %idxprom2836 = zext i32 %shr2835 to i64
  %arrayidx2837 = getelementptr inbounds i8, i8* %2095, i64 %idxprom2836
  %2098 = load i8, i8* %arrayidx2837, align 1, !tbaa !37
  %conv2838 = zext i8 %2098 to i32
  %2099 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2839 = getelementptr inbounds %struct.DState, %struct.DState* %2099, i32 0, i32 14
  %2100 = load i32, i32* %tPos2839, align 4, !tbaa !130
  %shl2840 = shl i32 %2100, 2
  %and2841 = and i32 %shl2840, 4
  %shr2842 = lshr i32 %conv2838, %and2841
  %and2843 = and i32 %shr2842, 15
  %shl2844 = shl i32 %and2843, 16
  %or2845 = or i32 %conv2832, %shl2844
  %2101 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2846 = getelementptr inbounds %struct.DState, %struct.DState* %2101, i32 0, i32 14
  store i32 %or2845, i32* %tPos2846, align 4, !tbaa !130
  %2102 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used2847 = getelementptr inbounds %struct.DState, %struct.DState* %2102, i32 0, i32 17
  %2103 = load i32, i32* %nblock_used2847, align 4, !tbaa !131
  %inc2848 = add nsw i32 %2103, 1
  store i32 %inc2848, i32* %nblock_used2847, align 4, !tbaa !131
  br label %if.end2849

if.end2849:                                       ; preds = %if.else2822, %if.end2815
  br label %if.end2942

if.else2850:                                      ; preds = %if.end2617
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond2851

for.cond2851:                                     ; preds = %for.inc2872, %if.else2850
  %2104 = load i32, i32* %i, align 4, !tbaa !34
  %2105 = load i32, i32* %nblock, align 4, !tbaa !34
  %cmp2852 = icmp slt i32 %2104, %2105
  br i1 %cmp2852, label %for.body2854, label %for.end2874

for.body2854:                                     ; preds = %for.cond2851
  %2106 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2855 = getelementptr inbounds %struct.DState, %struct.DState* %2106, i32 0, i32 20
  %2107 = load i32*, i32** %tt2855, align 8, !tbaa !54
  %2108 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2856 = sext i32 %2108 to i64
  %arrayidx2857 = getelementptr inbounds i32, i32* %2107, i64 %idxprom2856
  %2109 = load i32, i32* %arrayidx2857, align 4, !tbaa !34
  %and2858 = and i32 %2109, 255
  %conv2859 = trunc i32 %and2858 to i8
  store i8 %conv2859, i8* %uc, align 1, !tbaa !37
  %2110 = load i32, i32* %i, align 4, !tbaa !34
  %shl2860 = shl i32 %2110, 8
  %2111 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2861 = getelementptr inbounds %struct.DState, %struct.DState* %2111, i32 0, i32 20
  %2112 = load i32*, i32** %tt2861, align 8, !tbaa !54
  %2113 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2862 = getelementptr inbounds %struct.DState, %struct.DState* %2113, i32 0, i32 18
  %2114 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2863 = zext i8 %2114 to i64
  %arrayidx2864 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2862, i64 0, i64 %idxprom2863
  %2115 = load i32, i32* %arrayidx2864, align 4, !tbaa !34
  %idxprom2865 = sext i32 %2115 to i64
  %arrayidx2866 = getelementptr inbounds i32, i32* %2112, i64 %idxprom2865
  %2116 = load i32, i32* %arrayidx2866, align 4, !tbaa !34
  %or2867 = or i32 %2116, %shl2860
  store i32 %or2867, i32* %arrayidx2866, align 4, !tbaa !34
  %2117 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %cftab2868 = getelementptr inbounds %struct.DState, %struct.DState* %2117, i32 0, i32 18
  %2118 = load i8, i8* %uc, align 1, !tbaa !37
  %idxprom2869 = zext i8 %2118 to i64
  %arrayidx2870 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2868, i64 0, i64 %idxprom2869
  %2119 = load i32, i32* %arrayidx2870, align 4, !tbaa !34
  %inc2871 = add nsw i32 %2119, 1
  store i32 %inc2871, i32* %arrayidx2870, align 4, !tbaa !34
  br label %for.inc2872

for.inc2872:                                      ; preds = %for.body2854
  %2120 = load i32, i32* %i, align 4, !tbaa !34
  %inc2873 = add nsw i32 %2120, 1
  store i32 %inc2873, i32* %i, align 4, !tbaa !34
  br label %for.cond2851, !llvm.loop !135

for.end2874:                                      ; preds = %for.cond2851
  %2121 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2875 = getelementptr inbounds %struct.DState, %struct.DState* %2121, i32 0, i32 20
  %2122 = load i32*, i32** %tt2875, align 8, !tbaa !54
  %2123 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %origPtr2876 = getelementptr inbounds %struct.DState, %struct.DState* %2123, i32 0, i32 13
  %2124 = load i32, i32* %origPtr2876, align 8, !tbaa !70
  %idxprom2877 = sext i32 %2124 to i64
  %arrayidx2878 = getelementptr inbounds i32, i32* %2122, i64 %idxprom2877
  %2125 = load i32, i32* %arrayidx2878, align 4, !tbaa !34
  %shr2879 = lshr i32 %2125, 8
  %2126 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2880 = getelementptr inbounds %struct.DState, %struct.DState* %2126, i32 0, i32 14
  store i32 %shr2879, i32* %tPos2880, align 4, !tbaa !130
  %2127 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used2881 = getelementptr inbounds %struct.DState, %struct.DState* %2127, i32 0, i32 17
  store i32 0, i32* %nblock_used2881, align 4, !tbaa !131
  %2128 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %blockRandomised2882 = getelementptr inbounds %struct.DState, %struct.DState* %2128, i32 0, i32 4
  %2129 = load i8, i8* %blockRandomised2882, align 4, !tbaa !68
  %tobool2883 = icmp ne i8 %2129, 0
  br i1 %tobool2883, label %if.then2884, label %if.else2926

if.then2884:                                      ; preds = %for.end2874
  %2130 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2885 = getelementptr inbounds %struct.DState, %struct.DState* %2130, i32 0, i32 5
  store i32 0, i32* %rNToGo2885, align 8, !tbaa !132
  %2131 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2886 = getelementptr inbounds %struct.DState, %struct.DState* %2131, i32 0, i32 6
  store i32 0, i32* %rTPos2886, align 4, !tbaa !133
  %2132 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2887 = getelementptr inbounds %struct.DState, %struct.DState* %2132, i32 0, i32 20
  %2133 = load i32*, i32** %tt2887, align 8, !tbaa !54
  %2134 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2888 = getelementptr inbounds %struct.DState, %struct.DState* %2134, i32 0, i32 14
  %2135 = load i32, i32* %tPos2888, align 4, !tbaa !130
  %idxprom2889 = zext i32 %2135 to i64
  %arrayidx2890 = getelementptr inbounds i32, i32* %2133, i64 %idxprom2889
  %2136 = load i32, i32* %arrayidx2890, align 4, !tbaa !34
  %2137 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2891 = getelementptr inbounds %struct.DState, %struct.DState* %2137, i32 0, i32 14
  store i32 %2136, i32* %tPos2891, align 4, !tbaa !130
  %2138 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2892 = getelementptr inbounds %struct.DState, %struct.DState* %2138, i32 0, i32 14
  %2139 = load i32, i32* %tPos2892, align 4, !tbaa !130
  %and2893 = and i32 %2139, 255
  %conv2894 = trunc i32 %and2893 to i8
  %conv2895 = zext i8 %conv2894 to i32
  %2140 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k02896 = getelementptr inbounds %struct.DState, %struct.DState* %2140, i32 0, i32 15
  store i32 %conv2895, i32* %k02896, align 8, !tbaa !134
  %2141 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2897 = getelementptr inbounds %struct.DState, %struct.DState* %2141, i32 0, i32 14
  %2142 = load i32, i32* %tPos2897, align 4, !tbaa !130
  %shr2898 = lshr i32 %2142, 8
  store i32 %shr2898, i32* %tPos2897, align 4, !tbaa !130
  %2143 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used2899 = getelementptr inbounds %struct.DState, %struct.DState* %2143, i32 0, i32 17
  %2144 = load i32, i32* %nblock_used2899, align 4, !tbaa !131
  %inc2900 = add nsw i32 %2144, 1
  store i32 %inc2900, i32* %nblock_used2899, align 4, !tbaa !131
  %2145 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2901 = getelementptr inbounds %struct.DState, %struct.DState* %2145, i32 0, i32 5
  %2146 = load i32, i32* %rNToGo2901, align 8, !tbaa !132
  %cmp2902 = icmp eq i32 %2146, 0
  br i1 %cmp2902, label %if.then2904, label %if.end2917

if.then2904:                                      ; preds = %if.then2884
  %2147 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2905 = getelementptr inbounds %struct.DState, %struct.DState* %2147, i32 0, i32 6
  %2148 = load i32, i32* %rTPos2905, align 4, !tbaa !133
  %idxprom2906 = sext i32 %2148 to i64
  %arrayidx2907 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2906
  %2149 = load i32, i32* %arrayidx2907, align 4, !tbaa !34
  %2150 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2908 = getelementptr inbounds %struct.DState, %struct.DState* %2150, i32 0, i32 5
  store i32 %2149, i32* %rNToGo2908, align 8, !tbaa !132
  %2151 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2909 = getelementptr inbounds %struct.DState, %struct.DState* %2151, i32 0, i32 6
  %2152 = load i32, i32* %rTPos2909, align 4, !tbaa !133
  %inc2910 = add nsw i32 %2152, 1
  store i32 %inc2910, i32* %rTPos2909, align 4, !tbaa !133
  %2153 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2911 = getelementptr inbounds %struct.DState, %struct.DState* %2153, i32 0, i32 6
  %2154 = load i32, i32* %rTPos2911, align 4, !tbaa !133
  %cmp2912 = icmp eq i32 %2154, 512
  br i1 %cmp2912, label %if.then2914, label %if.end2916

if.then2914:                                      ; preds = %if.then2904
  %2155 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rTPos2915 = getelementptr inbounds %struct.DState, %struct.DState* %2155, i32 0, i32 6
  store i32 0, i32* %rTPos2915, align 4, !tbaa !133
  br label %if.end2916

if.end2916:                                       ; preds = %if.then2914, %if.then2904
  br label %if.end2917

if.end2917:                                       ; preds = %if.end2916, %if.then2884
  %2156 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2918 = getelementptr inbounds %struct.DState, %struct.DState* %2156, i32 0, i32 5
  %2157 = load i32, i32* %rNToGo2918, align 8, !tbaa !132
  %dec2919 = add nsw i32 %2157, -1
  store i32 %dec2919, i32* %rNToGo2918, align 8, !tbaa !132
  %2158 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %rNToGo2920 = getelementptr inbounds %struct.DState, %struct.DState* %2158, i32 0, i32 5
  %2159 = load i32, i32* %rNToGo2920, align 8, !tbaa !132
  %cmp2921 = icmp eq i32 %2159, 1
  %2160 = zext i1 %cmp2921 to i64
  %cond2923 = select i1 %cmp2921, i32 1, i32 0
  %2161 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k02924 = getelementptr inbounds %struct.DState, %struct.DState* %2161, i32 0, i32 15
  %2162 = load i32, i32* %k02924, align 8, !tbaa !134
  %xor2925 = xor i32 %2162, %cond2923
  store i32 %xor2925, i32* %k02924, align 8, !tbaa !134
  br label %if.end2941

if.else2926:                                      ; preds = %for.end2874
  %2163 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tt2927 = getelementptr inbounds %struct.DState, %struct.DState* %2163, i32 0, i32 20
  %2164 = load i32*, i32** %tt2927, align 8, !tbaa !54
  %2165 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2928 = getelementptr inbounds %struct.DState, %struct.DState* %2165, i32 0, i32 14
  %2166 = load i32, i32* %tPos2928, align 4, !tbaa !130
  %idxprom2929 = zext i32 %2166 to i64
  %arrayidx2930 = getelementptr inbounds i32, i32* %2164, i64 %idxprom2929
  %2167 = load i32, i32* %arrayidx2930, align 4, !tbaa !34
  %2168 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2931 = getelementptr inbounds %struct.DState, %struct.DState* %2168, i32 0, i32 14
  store i32 %2167, i32* %tPos2931, align 4, !tbaa !130
  %2169 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2932 = getelementptr inbounds %struct.DState, %struct.DState* %2169, i32 0, i32 14
  %2170 = load i32, i32* %tPos2932, align 4, !tbaa !130
  %and2933 = and i32 %2170, 255
  %conv2934 = trunc i32 %and2933 to i8
  %conv2935 = zext i8 %conv2934 to i32
  %2171 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %k02936 = getelementptr inbounds %struct.DState, %struct.DState* %2171, i32 0, i32 15
  store i32 %conv2935, i32* %k02936, align 8, !tbaa !134
  %2172 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %tPos2937 = getelementptr inbounds %struct.DState, %struct.DState* %2172, i32 0, i32 14
  %2173 = load i32, i32* %tPos2937, align 4, !tbaa !130
  %shr2938 = lshr i32 %2173, 8
  store i32 %shr2938, i32* %tPos2937, align 4, !tbaa !130
  %2174 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nblock_used2939 = getelementptr inbounds %struct.DState, %struct.DState* %2174, i32 0, i32 17
  %2175 = load i32, i32* %nblock_used2939, align 4, !tbaa !131
  %inc2940 = add nsw i32 %2175, 1
  store i32 %inc2940, i32* %nblock_used2939, align 4, !tbaa !131
  br label %if.end2941

if.end2941:                                       ; preds = %if.else2926, %if.end2917
  br label %if.end2942

if.end2942:                                       ; preds = %if.end2941, %if.end2849
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then330
  br label %sw.bb2943

sw.bb2943:                                        ; preds = %if.end, %endhdr_2
  %2176 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state2944 = getelementptr inbounds %struct.DState, %struct.DState* %2176, i32 0, i32 1
  store i32 42, i32* %state2944, align 8, !tbaa !9
  br label %while.cond2945

while.cond2945:                                   ; preds = %if.end2993, %sw.bb2943
  br label %while.body2946

while.body2946:                                   ; preds = %while.cond2945
  %2177 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2947 = getelementptr inbounds %struct.DState, %struct.DState* %2177, i32 0, i32 8
  %2178 = load i32, i32* %bsLive2947, align 4, !tbaa !35
  %cmp2948 = icmp sge i32 %2178, 8
  br i1 %cmp2948, label %if.then2950, label %if.end2960

if.then2950:                                      ; preds = %while.body2946
  %2179 = bitcast i32* %v2951 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2179) #3
  %2180 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2952 = getelementptr inbounds %struct.DState, %struct.DState* %2180, i32 0, i32 7
  %2181 = load i32, i32* %bsBuff2952, align 8, !tbaa !36
  %2182 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2953 = getelementptr inbounds %struct.DState, %struct.DState* %2182, i32 0, i32 8
  %2183 = load i32, i32* %bsLive2953, align 4, !tbaa !35
  %sub2954 = sub nsw i32 %2183, 8
  %shr2955 = lshr i32 %2181, %sub2954
  %and2956 = and i32 %shr2955, 255
  store i32 %and2956, i32* %v2951, align 4, !tbaa !34
  %2184 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2957 = getelementptr inbounds %struct.DState, %struct.DState* %2184, i32 0, i32 8
  %2185 = load i32, i32* %bsLive2957, align 4, !tbaa !35
  %sub2958 = sub nsw i32 %2185, 8
  store i32 %sub2958, i32* %bsLive2957, align 4, !tbaa !35
  %2186 = load i32, i32* %v2951, align 4, !tbaa !34
  %conv2959 = trunc i32 %2186 to i8
  store i8 %conv2959, i8* %uc, align 1, !tbaa !37
  %2187 = bitcast i32* %v2951 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2187) #3
  br label %while.end2994

if.end2960:                                       ; preds = %while.body2946
  %2188 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2961 = getelementptr inbounds %struct.DState, %struct.DState* %2188, i32 0, i32 0
  %2189 = load %struct.bz_stream*, %struct.bz_stream** %strm2961, align 8, !tbaa !6
  %avail_in2962 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2189, i32 0, i32 1
  %2190 = load i32, i32* %avail_in2962, align 8, !tbaa !38
  %cmp2963 = icmp eq i32 %2190, 0
  br i1 %cmp2963, label %if.then2965, label %if.end2966

if.then2965:                                      ; preds = %if.end2960
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2966:                                       ; preds = %if.end2960
  %2191 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2967 = getelementptr inbounds %struct.DState, %struct.DState* %2191, i32 0, i32 7
  %2192 = load i32, i32* %bsBuff2967, align 8, !tbaa !36
  %shl2968 = shl i32 %2192, 8
  %2193 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2969 = getelementptr inbounds %struct.DState, %struct.DState* %2193, i32 0, i32 0
  %2194 = load %struct.bz_stream*, %struct.bz_stream** %strm2969, align 8, !tbaa !6
  %next_in2970 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2194, i32 0, i32 0
  %2195 = load i8*, i8** %next_in2970, align 8, !tbaa !40
  %2196 = load i8, i8* %2195, align 1, !tbaa !37
  %conv2971 = zext i8 %2196 to i32
  %or2972 = or i32 %shl2968, %conv2971
  %2197 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff2973 = getelementptr inbounds %struct.DState, %struct.DState* %2197, i32 0, i32 7
  store i32 %or2972, i32* %bsBuff2973, align 8, !tbaa !36
  %2198 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive2974 = getelementptr inbounds %struct.DState, %struct.DState* %2198, i32 0, i32 8
  %2199 = load i32, i32* %bsLive2974, align 4, !tbaa !35
  %add2975 = add nsw i32 %2199, 8
  store i32 %add2975, i32* %bsLive2974, align 4, !tbaa !35
  %2200 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2976 = getelementptr inbounds %struct.DState, %struct.DState* %2200, i32 0, i32 0
  %2201 = load %struct.bz_stream*, %struct.bz_stream** %strm2976, align 8, !tbaa !6
  %next_in2977 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2201, i32 0, i32 0
  %2202 = load i8*, i8** %next_in2977, align 8, !tbaa !40
  %incdec.ptr2978 = getelementptr inbounds i8, i8* %2202, i32 1
  store i8* %incdec.ptr2978, i8** %next_in2977, align 8, !tbaa !40
  %2203 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2979 = getelementptr inbounds %struct.DState, %struct.DState* %2203, i32 0, i32 0
  %2204 = load %struct.bz_stream*, %struct.bz_stream** %strm2979, align 8, !tbaa !6
  %avail_in2980 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2204, i32 0, i32 1
  %2205 = load i32, i32* %avail_in2980, align 8, !tbaa !38
  %dec2981 = add i32 %2205, -1
  store i32 %dec2981, i32* %avail_in2980, align 8, !tbaa !38
  %2206 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2982 = getelementptr inbounds %struct.DState, %struct.DState* %2206, i32 0, i32 0
  %2207 = load %struct.bz_stream*, %struct.bz_stream** %strm2982, align 8, !tbaa !6
  %total_in_lo322983 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2207, i32 0, i32 2
  %2208 = load i32, i32* %total_in_lo322983, align 4, !tbaa !41
  %inc2984 = add i32 %2208, 1
  store i32 %inc2984, i32* %total_in_lo322983, align 4, !tbaa !41
  %2209 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2985 = getelementptr inbounds %struct.DState, %struct.DState* %2209, i32 0, i32 0
  %2210 = load %struct.bz_stream*, %struct.bz_stream** %strm2985, align 8, !tbaa !6
  %total_in_lo322986 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2210, i32 0, i32 2
  %2211 = load i32, i32* %total_in_lo322986, align 4, !tbaa !41
  %cmp2987 = icmp eq i32 %2211, 0
  br i1 %cmp2987, label %if.then2989, label %if.end2993

if.then2989:                                      ; preds = %if.end2966
  %2212 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm2990 = getelementptr inbounds %struct.DState, %struct.DState* %2212, i32 0, i32 0
  %2213 = load %struct.bz_stream*, %struct.bz_stream** %strm2990, align 8, !tbaa !6
  %total_in_hi322991 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2213, i32 0, i32 3
  %2214 = load i32, i32* %total_in_hi322991, align 8, !tbaa !42
  %inc2992 = add i32 %2214, 1
  store i32 %inc2992, i32* %total_in_hi322991, align 8, !tbaa !42
  br label %if.end2993

if.end2993:                                       ; preds = %if.then2989, %if.end2966
  br label %while.cond2945, !llvm.loop !136

while.end2994:                                    ; preds = %if.then2950
  %2215 = load i8, i8* %uc, align 1, !tbaa !37
  %conv2995 = zext i8 %2215 to i32
  %cmp2996 = icmp ne i32 %conv2995, 114
  br i1 %cmp2996, label %if.then2998, label %if.end2999

if.then2998:                                      ; preds = %while.end2994
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end2999:                                       ; preds = %while.end2994
  br label %sw.bb3000

sw.bb3000:                                        ; preds = %if.end, %if.end2999
  %2216 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3001 = getelementptr inbounds %struct.DState, %struct.DState* %2216, i32 0, i32 1
  store i32 43, i32* %state3001, align 8, !tbaa !9
  br label %while.cond3002

while.cond3002:                                   ; preds = %if.end3050, %sw.bb3000
  br label %while.body3003

while.body3003:                                   ; preds = %while.cond3002
  %2217 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3004 = getelementptr inbounds %struct.DState, %struct.DState* %2217, i32 0, i32 8
  %2218 = load i32, i32* %bsLive3004, align 4, !tbaa !35
  %cmp3005 = icmp sge i32 %2218, 8
  br i1 %cmp3005, label %if.then3007, label %if.end3017

if.then3007:                                      ; preds = %while.body3003
  %2219 = bitcast i32* %v3008 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2219) #3
  %2220 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3009 = getelementptr inbounds %struct.DState, %struct.DState* %2220, i32 0, i32 7
  %2221 = load i32, i32* %bsBuff3009, align 8, !tbaa !36
  %2222 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3010 = getelementptr inbounds %struct.DState, %struct.DState* %2222, i32 0, i32 8
  %2223 = load i32, i32* %bsLive3010, align 4, !tbaa !35
  %sub3011 = sub nsw i32 %2223, 8
  %shr3012 = lshr i32 %2221, %sub3011
  %and3013 = and i32 %shr3012, 255
  store i32 %and3013, i32* %v3008, align 4, !tbaa !34
  %2224 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3014 = getelementptr inbounds %struct.DState, %struct.DState* %2224, i32 0, i32 8
  %2225 = load i32, i32* %bsLive3014, align 4, !tbaa !35
  %sub3015 = sub nsw i32 %2225, 8
  store i32 %sub3015, i32* %bsLive3014, align 4, !tbaa !35
  %2226 = load i32, i32* %v3008, align 4, !tbaa !34
  %conv3016 = trunc i32 %2226 to i8
  store i8 %conv3016, i8* %uc, align 1, !tbaa !37
  %2227 = bitcast i32* %v3008 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2227) #3
  br label %while.end3051

if.end3017:                                       ; preds = %while.body3003
  %2228 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3018 = getelementptr inbounds %struct.DState, %struct.DState* %2228, i32 0, i32 0
  %2229 = load %struct.bz_stream*, %struct.bz_stream** %strm3018, align 8, !tbaa !6
  %avail_in3019 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2229, i32 0, i32 1
  %2230 = load i32, i32* %avail_in3019, align 8, !tbaa !38
  %cmp3020 = icmp eq i32 %2230, 0
  br i1 %cmp3020, label %if.then3022, label %if.end3023

if.then3022:                                      ; preds = %if.end3017
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3023:                                       ; preds = %if.end3017
  %2231 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3024 = getelementptr inbounds %struct.DState, %struct.DState* %2231, i32 0, i32 7
  %2232 = load i32, i32* %bsBuff3024, align 8, !tbaa !36
  %shl3025 = shl i32 %2232, 8
  %2233 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3026 = getelementptr inbounds %struct.DState, %struct.DState* %2233, i32 0, i32 0
  %2234 = load %struct.bz_stream*, %struct.bz_stream** %strm3026, align 8, !tbaa !6
  %next_in3027 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2234, i32 0, i32 0
  %2235 = load i8*, i8** %next_in3027, align 8, !tbaa !40
  %2236 = load i8, i8* %2235, align 1, !tbaa !37
  %conv3028 = zext i8 %2236 to i32
  %or3029 = or i32 %shl3025, %conv3028
  %2237 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3030 = getelementptr inbounds %struct.DState, %struct.DState* %2237, i32 0, i32 7
  store i32 %or3029, i32* %bsBuff3030, align 8, !tbaa !36
  %2238 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3031 = getelementptr inbounds %struct.DState, %struct.DState* %2238, i32 0, i32 8
  %2239 = load i32, i32* %bsLive3031, align 4, !tbaa !35
  %add3032 = add nsw i32 %2239, 8
  store i32 %add3032, i32* %bsLive3031, align 4, !tbaa !35
  %2240 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3033 = getelementptr inbounds %struct.DState, %struct.DState* %2240, i32 0, i32 0
  %2241 = load %struct.bz_stream*, %struct.bz_stream** %strm3033, align 8, !tbaa !6
  %next_in3034 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2241, i32 0, i32 0
  %2242 = load i8*, i8** %next_in3034, align 8, !tbaa !40
  %incdec.ptr3035 = getelementptr inbounds i8, i8* %2242, i32 1
  store i8* %incdec.ptr3035, i8** %next_in3034, align 8, !tbaa !40
  %2243 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3036 = getelementptr inbounds %struct.DState, %struct.DState* %2243, i32 0, i32 0
  %2244 = load %struct.bz_stream*, %struct.bz_stream** %strm3036, align 8, !tbaa !6
  %avail_in3037 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2244, i32 0, i32 1
  %2245 = load i32, i32* %avail_in3037, align 8, !tbaa !38
  %dec3038 = add i32 %2245, -1
  store i32 %dec3038, i32* %avail_in3037, align 8, !tbaa !38
  %2246 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3039 = getelementptr inbounds %struct.DState, %struct.DState* %2246, i32 0, i32 0
  %2247 = load %struct.bz_stream*, %struct.bz_stream** %strm3039, align 8, !tbaa !6
  %total_in_lo323040 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2247, i32 0, i32 2
  %2248 = load i32, i32* %total_in_lo323040, align 4, !tbaa !41
  %inc3041 = add i32 %2248, 1
  store i32 %inc3041, i32* %total_in_lo323040, align 4, !tbaa !41
  %2249 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3042 = getelementptr inbounds %struct.DState, %struct.DState* %2249, i32 0, i32 0
  %2250 = load %struct.bz_stream*, %struct.bz_stream** %strm3042, align 8, !tbaa !6
  %total_in_lo323043 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2250, i32 0, i32 2
  %2251 = load i32, i32* %total_in_lo323043, align 4, !tbaa !41
  %cmp3044 = icmp eq i32 %2251, 0
  br i1 %cmp3044, label %if.then3046, label %if.end3050

if.then3046:                                      ; preds = %if.end3023
  %2252 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3047 = getelementptr inbounds %struct.DState, %struct.DState* %2252, i32 0, i32 0
  %2253 = load %struct.bz_stream*, %struct.bz_stream** %strm3047, align 8, !tbaa !6
  %total_in_hi323048 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2253, i32 0, i32 3
  %2254 = load i32, i32* %total_in_hi323048, align 8, !tbaa !42
  %inc3049 = add i32 %2254, 1
  store i32 %inc3049, i32* %total_in_hi323048, align 8, !tbaa !42
  br label %if.end3050

if.end3050:                                       ; preds = %if.then3046, %if.end3023
  br label %while.cond3002, !llvm.loop !137

while.end3051:                                    ; preds = %if.then3007
  %2255 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3052 = zext i8 %2255 to i32
  %cmp3053 = icmp ne i32 %conv3052, 69
  br i1 %cmp3053, label %if.then3055, label %if.end3056

if.then3055:                                      ; preds = %while.end3051
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3056:                                       ; preds = %while.end3051
  br label %sw.bb3057

sw.bb3057:                                        ; preds = %if.end, %if.end3056
  %2256 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3058 = getelementptr inbounds %struct.DState, %struct.DState* %2256, i32 0, i32 1
  store i32 44, i32* %state3058, align 8, !tbaa !9
  br label %while.cond3059

while.cond3059:                                   ; preds = %if.end3107, %sw.bb3057
  br label %while.body3060

while.body3060:                                   ; preds = %while.cond3059
  %2257 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3061 = getelementptr inbounds %struct.DState, %struct.DState* %2257, i32 0, i32 8
  %2258 = load i32, i32* %bsLive3061, align 4, !tbaa !35
  %cmp3062 = icmp sge i32 %2258, 8
  br i1 %cmp3062, label %if.then3064, label %if.end3074

if.then3064:                                      ; preds = %while.body3060
  %2259 = bitcast i32* %v3065 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2259) #3
  %2260 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3066 = getelementptr inbounds %struct.DState, %struct.DState* %2260, i32 0, i32 7
  %2261 = load i32, i32* %bsBuff3066, align 8, !tbaa !36
  %2262 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3067 = getelementptr inbounds %struct.DState, %struct.DState* %2262, i32 0, i32 8
  %2263 = load i32, i32* %bsLive3067, align 4, !tbaa !35
  %sub3068 = sub nsw i32 %2263, 8
  %shr3069 = lshr i32 %2261, %sub3068
  %and3070 = and i32 %shr3069, 255
  store i32 %and3070, i32* %v3065, align 4, !tbaa !34
  %2264 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3071 = getelementptr inbounds %struct.DState, %struct.DState* %2264, i32 0, i32 8
  %2265 = load i32, i32* %bsLive3071, align 4, !tbaa !35
  %sub3072 = sub nsw i32 %2265, 8
  store i32 %sub3072, i32* %bsLive3071, align 4, !tbaa !35
  %2266 = load i32, i32* %v3065, align 4, !tbaa !34
  %conv3073 = trunc i32 %2266 to i8
  store i8 %conv3073, i8* %uc, align 1, !tbaa !37
  %2267 = bitcast i32* %v3065 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2267) #3
  br label %while.end3108

if.end3074:                                       ; preds = %while.body3060
  %2268 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3075 = getelementptr inbounds %struct.DState, %struct.DState* %2268, i32 0, i32 0
  %2269 = load %struct.bz_stream*, %struct.bz_stream** %strm3075, align 8, !tbaa !6
  %avail_in3076 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2269, i32 0, i32 1
  %2270 = load i32, i32* %avail_in3076, align 8, !tbaa !38
  %cmp3077 = icmp eq i32 %2270, 0
  br i1 %cmp3077, label %if.then3079, label %if.end3080

if.then3079:                                      ; preds = %if.end3074
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3080:                                       ; preds = %if.end3074
  %2271 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3081 = getelementptr inbounds %struct.DState, %struct.DState* %2271, i32 0, i32 7
  %2272 = load i32, i32* %bsBuff3081, align 8, !tbaa !36
  %shl3082 = shl i32 %2272, 8
  %2273 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3083 = getelementptr inbounds %struct.DState, %struct.DState* %2273, i32 0, i32 0
  %2274 = load %struct.bz_stream*, %struct.bz_stream** %strm3083, align 8, !tbaa !6
  %next_in3084 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2274, i32 0, i32 0
  %2275 = load i8*, i8** %next_in3084, align 8, !tbaa !40
  %2276 = load i8, i8* %2275, align 1, !tbaa !37
  %conv3085 = zext i8 %2276 to i32
  %or3086 = or i32 %shl3082, %conv3085
  %2277 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3087 = getelementptr inbounds %struct.DState, %struct.DState* %2277, i32 0, i32 7
  store i32 %or3086, i32* %bsBuff3087, align 8, !tbaa !36
  %2278 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3088 = getelementptr inbounds %struct.DState, %struct.DState* %2278, i32 0, i32 8
  %2279 = load i32, i32* %bsLive3088, align 4, !tbaa !35
  %add3089 = add nsw i32 %2279, 8
  store i32 %add3089, i32* %bsLive3088, align 4, !tbaa !35
  %2280 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3090 = getelementptr inbounds %struct.DState, %struct.DState* %2280, i32 0, i32 0
  %2281 = load %struct.bz_stream*, %struct.bz_stream** %strm3090, align 8, !tbaa !6
  %next_in3091 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2281, i32 0, i32 0
  %2282 = load i8*, i8** %next_in3091, align 8, !tbaa !40
  %incdec.ptr3092 = getelementptr inbounds i8, i8* %2282, i32 1
  store i8* %incdec.ptr3092, i8** %next_in3091, align 8, !tbaa !40
  %2283 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3093 = getelementptr inbounds %struct.DState, %struct.DState* %2283, i32 0, i32 0
  %2284 = load %struct.bz_stream*, %struct.bz_stream** %strm3093, align 8, !tbaa !6
  %avail_in3094 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2284, i32 0, i32 1
  %2285 = load i32, i32* %avail_in3094, align 8, !tbaa !38
  %dec3095 = add i32 %2285, -1
  store i32 %dec3095, i32* %avail_in3094, align 8, !tbaa !38
  %2286 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3096 = getelementptr inbounds %struct.DState, %struct.DState* %2286, i32 0, i32 0
  %2287 = load %struct.bz_stream*, %struct.bz_stream** %strm3096, align 8, !tbaa !6
  %total_in_lo323097 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2287, i32 0, i32 2
  %2288 = load i32, i32* %total_in_lo323097, align 4, !tbaa !41
  %inc3098 = add i32 %2288, 1
  store i32 %inc3098, i32* %total_in_lo323097, align 4, !tbaa !41
  %2289 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3099 = getelementptr inbounds %struct.DState, %struct.DState* %2289, i32 0, i32 0
  %2290 = load %struct.bz_stream*, %struct.bz_stream** %strm3099, align 8, !tbaa !6
  %total_in_lo323100 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2290, i32 0, i32 2
  %2291 = load i32, i32* %total_in_lo323100, align 4, !tbaa !41
  %cmp3101 = icmp eq i32 %2291, 0
  br i1 %cmp3101, label %if.then3103, label %if.end3107

if.then3103:                                      ; preds = %if.end3080
  %2292 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3104 = getelementptr inbounds %struct.DState, %struct.DState* %2292, i32 0, i32 0
  %2293 = load %struct.bz_stream*, %struct.bz_stream** %strm3104, align 8, !tbaa !6
  %total_in_hi323105 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2293, i32 0, i32 3
  %2294 = load i32, i32* %total_in_hi323105, align 8, !tbaa !42
  %inc3106 = add i32 %2294, 1
  store i32 %inc3106, i32* %total_in_hi323105, align 8, !tbaa !42
  br label %if.end3107

if.end3107:                                       ; preds = %if.then3103, %if.end3080
  br label %while.cond3059, !llvm.loop !138

while.end3108:                                    ; preds = %if.then3064
  %2295 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3109 = zext i8 %2295 to i32
  %cmp3110 = icmp ne i32 %conv3109, 56
  br i1 %cmp3110, label %if.then3112, label %if.end3113

if.then3112:                                      ; preds = %while.end3108
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3113:                                       ; preds = %while.end3108
  br label %sw.bb3114

sw.bb3114:                                        ; preds = %if.end, %if.end3113
  %2296 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3115 = getelementptr inbounds %struct.DState, %struct.DState* %2296, i32 0, i32 1
  store i32 45, i32* %state3115, align 8, !tbaa !9
  br label %while.cond3116

while.cond3116:                                   ; preds = %if.end3164, %sw.bb3114
  br label %while.body3117

while.body3117:                                   ; preds = %while.cond3116
  %2297 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3118 = getelementptr inbounds %struct.DState, %struct.DState* %2297, i32 0, i32 8
  %2298 = load i32, i32* %bsLive3118, align 4, !tbaa !35
  %cmp3119 = icmp sge i32 %2298, 8
  br i1 %cmp3119, label %if.then3121, label %if.end3131

if.then3121:                                      ; preds = %while.body3117
  %2299 = bitcast i32* %v3122 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2299) #3
  %2300 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3123 = getelementptr inbounds %struct.DState, %struct.DState* %2300, i32 0, i32 7
  %2301 = load i32, i32* %bsBuff3123, align 8, !tbaa !36
  %2302 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3124 = getelementptr inbounds %struct.DState, %struct.DState* %2302, i32 0, i32 8
  %2303 = load i32, i32* %bsLive3124, align 4, !tbaa !35
  %sub3125 = sub nsw i32 %2303, 8
  %shr3126 = lshr i32 %2301, %sub3125
  %and3127 = and i32 %shr3126, 255
  store i32 %and3127, i32* %v3122, align 4, !tbaa !34
  %2304 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3128 = getelementptr inbounds %struct.DState, %struct.DState* %2304, i32 0, i32 8
  %2305 = load i32, i32* %bsLive3128, align 4, !tbaa !35
  %sub3129 = sub nsw i32 %2305, 8
  store i32 %sub3129, i32* %bsLive3128, align 4, !tbaa !35
  %2306 = load i32, i32* %v3122, align 4, !tbaa !34
  %conv3130 = trunc i32 %2306 to i8
  store i8 %conv3130, i8* %uc, align 1, !tbaa !37
  %2307 = bitcast i32* %v3122 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2307) #3
  br label %while.end3165

if.end3131:                                       ; preds = %while.body3117
  %2308 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3132 = getelementptr inbounds %struct.DState, %struct.DState* %2308, i32 0, i32 0
  %2309 = load %struct.bz_stream*, %struct.bz_stream** %strm3132, align 8, !tbaa !6
  %avail_in3133 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2309, i32 0, i32 1
  %2310 = load i32, i32* %avail_in3133, align 8, !tbaa !38
  %cmp3134 = icmp eq i32 %2310, 0
  br i1 %cmp3134, label %if.then3136, label %if.end3137

if.then3136:                                      ; preds = %if.end3131
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3137:                                       ; preds = %if.end3131
  %2311 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3138 = getelementptr inbounds %struct.DState, %struct.DState* %2311, i32 0, i32 7
  %2312 = load i32, i32* %bsBuff3138, align 8, !tbaa !36
  %shl3139 = shl i32 %2312, 8
  %2313 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3140 = getelementptr inbounds %struct.DState, %struct.DState* %2313, i32 0, i32 0
  %2314 = load %struct.bz_stream*, %struct.bz_stream** %strm3140, align 8, !tbaa !6
  %next_in3141 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2314, i32 0, i32 0
  %2315 = load i8*, i8** %next_in3141, align 8, !tbaa !40
  %2316 = load i8, i8* %2315, align 1, !tbaa !37
  %conv3142 = zext i8 %2316 to i32
  %or3143 = or i32 %shl3139, %conv3142
  %2317 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3144 = getelementptr inbounds %struct.DState, %struct.DState* %2317, i32 0, i32 7
  store i32 %or3143, i32* %bsBuff3144, align 8, !tbaa !36
  %2318 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3145 = getelementptr inbounds %struct.DState, %struct.DState* %2318, i32 0, i32 8
  %2319 = load i32, i32* %bsLive3145, align 4, !tbaa !35
  %add3146 = add nsw i32 %2319, 8
  store i32 %add3146, i32* %bsLive3145, align 4, !tbaa !35
  %2320 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3147 = getelementptr inbounds %struct.DState, %struct.DState* %2320, i32 0, i32 0
  %2321 = load %struct.bz_stream*, %struct.bz_stream** %strm3147, align 8, !tbaa !6
  %next_in3148 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2321, i32 0, i32 0
  %2322 = load i8*, i8** %next_in3148, align 8, !tbaa !40
  %incdec.ptr3149 = getelementptr inbounds i8, i8* %2322, i32 1
  store i8* %incdec.ptr3149, i8** %next_in3148, align 8, !tbaa !40
  %2323 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3150 = getelementptr inbounds %struct.DState, %struct.DState* %2323, i32 0, i32 0
  %2324 = load %struct.bz_stream*, %struct.bz_stream** %strm3150, align 8, !tbaa !6
  %avail_in3151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2324, i32 0, i32 1
  %2325 = load i32, i32* %avail_in3151, align 8, !tbaa !38
  %dec3152 = add i32 %2325, -1
  store i32 %dec3152, i32* %avail_in3151, align 8, !tbaa !38
  %2326 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3153 = getelementptr inbounds %struct.DState, %struct.DState* %2326, i32 0, i32 0
  %2327 = load %struct.bz_stream*, %struct.bz_stream** %strm3153, align 8, !tbaa !6
  %total_in_lo323154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2327, i32 0, i32 2
  %2328 = load i32, i32* %total_in_lo323154, align 4, !tbaa !41
  %inc3155 = add i32 %2328, 1
  store i32 %inc3155, i32* %total_in_lo323154, align 4, !tbaa !41
  %2329 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3156 = getelementptr inbounds %struct.DState, %struct.DState* %2329, i32 0, i32 0
  %2330 = load %struct.bz_stream*, %struct.bz_stream** %strm3156, align 8, !tbaa !6
  %total_in_lo323157 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2330, i32 0, i32 2
  %2331 = load i32, i32* %total_in_lo323157, align 4, !tbaa !41
  %cmp3158 = icmp eq i32 %2331, 0
  br i1 %cmp3158, label %if.then3160, label %if.end3164

if.then3160:                                      ; preds = %if.end3137
  %2332 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3161 = getelementptr inbounds %struct.DState, %struct.DState* %2332, i32 0, i32 0
  %2333 = load %struct.bz_stream*, %struct.bz_stream** %strm3161, align 8, !tbaa !6
  %total_in_hi323162 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2333, i32 0, i32 3
  %2334 = load i32, i32* %total_in_hi323162, align 8, !tbaa !42
  %inc3163 = add i32 %2334, 1
  store i32 %inc3163, i32* %total_in_hi323162, align 8, !tbaa !42
  br label %if.end3164

if.end3164:                                       ; preds = %if.then3160, %if.end3137
  br label %while.cond3116, !llvm.loop !139

while.end3165:                                    ; preds = %if.then3121
  %2335 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3166 = zext i8 %2335 to i32
  %cmp3167 = icmp ne i32 %conv3166, 80
  br i1 %cmp3167, label %if.then3169, label %if.end3170

if.then3169:                                      ; preds = %while.end3165
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3170:                                       ; preds = %while.end3165
  br label %sw.bb3171

sw.bb3171:                                        ; preds = %if.end, %if.end3170
  %2336 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3172 = getelementptr inbounds %struct.DState, %struct.DState* %2336, i32 0, i32 1
  store i32 46, i32* %state3172, align 8, !tbaa !9
  br label %while.cond3173

while.cond3173:                                   ; preds = %if.end3221, %sw.bb3171
  br label %while.body3174

while.body3174:                                   ; preds = %while.cond3173
  %2337 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3175 = getelementptr inbounds %struct.DState, %struct.DState* %2337, i32 0, i32 8
  %2338 = load i32, i32* %bsLive3175, align 4, !tbaa !35
  %cmp3176 = icmp sge i32 %2338, 8
  br i1 %cmp3176, label %if.then3178, label %if.end3188

if.then3178:                                      ; preds = %while.body3174
  %2339 = bitcast i32* %v3179 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2339) #3
  %2340 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3180 = getelementptr inbounds %struct.DState, %struct.DState* %2340, i32 0, i32 7
  %2341 = load i32, i32* %bsBuff3180, align 8, !tbaa !36
  %2342 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3181 = getelementptr inbounds %struct.DState, %struct.DState* %2342, i32 0, i32 8
  %2343 = load i32, i32* %bsLive3181, align 4, !tbaa !35
  %sub3182 = sub nsw i32 %2343, 8
  %shr3183 = lshr i32 %2341, %sub3182
  %and3184 = and i32 %shr3183, 255
  store i32 %and3184, i32* %v3179, align 4, !tbaa !34
  %2344 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3185 = getelementptr inbounds %struct.DState, %struct.DState* %2344, i32 0, i32 8
  %2345 = load i32, i32* %bsLive3185, align 4, !tbaa !35
  %sub3186 = sub nsw i32 %2345, 8
  store i32 %sub3186, i32* %bsLive3185, align 4, !tbaa !35
  %2346 = load i32, i32* %v3179, align 4, !tbaa !34
  %conv3187 = trunc i32 %2346 to i8
  store i8 %conv3187, i8* %uc, align 1, !tbaa !37
  %2347 = bitcast i32* %v3179 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2347) #3
  br label %while.end3222

if.end3188:                                       ; preds = %while.body3174
  %2348 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3189 = getelementptr inbounds %struct.DState, %struct.DState* %2348, i32 0, i32 0
  %2349 = load %struct.bz_stream*, %struct.bz_stream** %strm3189, align 8, !tbaa !6
  %avail_in3190 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2349, i32 0, i32 1
  %2350 = load i32, i32* %avail_in3190, align 8, !tbaa !38
  %cmp3191 = icmp eq i32 %2350, 0
  br i1 %cmp3191, label %if.then3193, label %if.end3194

if.then3193:                                      ; preds = %if.end3188
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3194:                                       ; preds = %if.end3188
  %2351 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3195 = getelementptr inbounds %struct.DState, %struct.DState* %2351, i32 0, i32 7
  %2352 = load i32, i32* %bsBuff3195, align 8, !tbaa !36
  %shl3196 = shl i32 %2352, 8
  %2353 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3197 = getelementptr inbounds %struct.DState, %struct.DState* %2353, i32 0, i32 0
  %2354 = load %struct.bz_stream*, %struct.bz_stream** %strm3197, align 8, !tbaa !6
  %next_in3198 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2354, i32 0, i32 0
  %2355 = load i8*, i8** %next_in3198, align 8, !tbaa !40
  %2356 = load i8, i8* %2355, align 1, !tbaa !37
  %conv3199 = zext i8 %2356 to i32
  %or3200 = or i32 %shl3196, %conv3199
  %2357 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3201 = getelementptr inbounds %struct.DState, %struct.DState* %2357, i32 0, i32 7
  store i32 %or3200, i32* %bsBuff3201, align 8, !tbaa !36
  %2358 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3202 = getelementptr inbounds %struct.DState, %struct.DState* %2358, i32 0, i32 8
  %2359 = load i32, i32* %bsLive3202, align 4, !tbaa !35
  %add3203 = add nsw i32 %2359, 8
  store i32 %add3203, i32* %bsLive3202, align 4, !tbaa !35
  %2360 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3204 = getelementptr inbounds %struct.DState, %struct.DState* %2360, i32 0, i32 0
  %2361 = load %struct.bz_stream*, %struct.bz_stream** %strm3204, align 8, !tbaa !6
  %next_in3205 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2361, i32 0, i32 0
  %2362 = load i8*, i8** %next_in3205, align 8, !tbaa !40
  %incdec.ptr3206 = getelementptr inbounds i8, i8* %2362, i32 1
  store i8* %incdec.ptr3206, i8** %next_in3205, align 8, !tbaa !40
  %2363 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3207 = getelementptr inbounds %struct.DState, %struct.DState* %2363, i32 0, i32 0
  %2364 = load %struct.bz_stream*, %struct.bz_stream** %strm3207, align 8, !tbaa !6
  %avail_in3208 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2364, i32 0, i32 1
  %2365 = load i32, i32* %avail_in3208, align 8, !tbaa !38
  %dec3209 = add i32 %2365, -1
  store i32 %dec3209, i32* %avail_in3208, align 8, !tbaa !38
  %2366 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3210 = getelementptr inbounds %struct.DState, %struct.DState* %2366, i32 0, i32 0
  %2367 = load %struct.bz_stream*, %struct.bz_stream** %strm3210, align 8, !tbaa !6
  %total_in_lo323211 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2367, i32 0, i32 2
  %2368 = load i32, i32* %total_in_lo323211, align 4, !tbaa !41
  %inc3212 = add i32 %2368, 1
  store i32 %inc3212, i32* %total_in_lo323211, align 4, !tbaa !41
  %2369 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3213 = getelementptr inbounds %struct.DState, %struct.DState* %2369, i32 0, i32 0
  %2370 = load %struct.bz_stream*, %struct.bz_stream** %strm3213, align 8, !tbaa !6
  %total_in_lo323214 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2370, i32 0, i32 2
  %2371 = load i32, i32* %total_in_lo323214, align 4, !tbaa !41
  %cmp3215 = icmp eq i32 %2371, 0
  br i1 %cmp3215, label %if.then3217, label %if.end3221

if.then3217:                                      ; preds = %if.end3194
  %2372 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3218 = getelementptr inbounds %struct.DState, %struct.DState* %2372, i32 0, i32 0
  %2373 = load %struct.bz_stream*, %struct.bz_stream** %strm3218, align 8, !tbaa !6
  %total_in_hi323219 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2373, i32 0, i32 3
  %2374 = load i32, i32* %total_in_hi323219, align 8, !tbaa !42
  %inc3220 = add i32 %2374, 1
  store i32 %inc3220, i32* %total_in_hi323219, align 8, !tbaa !42
  br label %if.end3221

if.end3221:                                       ; preds = %if.then3217, %if.end3194
  br label %while.cond3173, !llvm.loop !140

while.end3222:                                    ; preds = %if.then3178
  %2375 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3223 = zext i8 %2375 to i32
  %cmp3224 = icmp ne i32 %conv3223, 144
  br i1 %cmp3224, label %if.then3226, label %if.end3227

if.then3226:                                      ; preds = %while.end3222
  store i32 -4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3227:                                       ; preds = %while.end3222
  %2376 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %2376, i32 0, i32 24
  store i32 0, i32* %storedCombinedCRC, align 4, !tbaa !141
  br label %sw.bb3228

sw.bb3228:                                        ; preds = %if.end, %if.end3227
  %2377 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3229 = getelementptr inbounds %struct.DState, %struct.DState* %2377, i32 0, i32 1
  store i32 47, i32* %state3229, align 8, !tbaa !9
  br label %while.cond3230

while.cond3230:                                   ; preds = %if.end3278, %sw.bb3228
  br label %while.body3231

while.body3231:                                   ; preds = %while.cond3230
  %2378 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3232 = getelementptr inbounds %struct.DState, %struct.DState* %2378, i32 0, i32 8
  %2379 = load i32, i32* %bsLive3232, align 4, !tbaa !35
  %cmp3233 = icmp sge i32 %2379, 8
  br i1 %cmp3233, label %if.then3235, label %if.end3245

if.then3235:                                      ; preds = %while.body3231
  %2380 = bitcast i32* %v3236 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2380) #3
  %2381 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3237 = getelementptr inbounds %struct.DState, %struct.DState* %2381, i32 0, i32 7
  %2382 = load i32, i32* %bsBuff3237, align 8, !tbaa !36
  %2383 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3238 = getelementptr inbounds %struct.DState, %struct.DState* %2383, i32 0, i32 8
  %2384 = load i32, i32* %bsLive3238, align 4, !tbaa !35
  %sub3239 = sub nsw i32 %2384, 8
  %shr3240 = lshr i32 %2382, %sub3239
  %and3241 = and i32 %shr3240, 255
  store i32 %and3241, i32* %v3236, align 4, !tbaa !34
  %2385 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3242 = getelementptr inbounds %struct.DState, %struct.DState* %2385, i32 0, i32 8
  %2386 = load i32, i32* %bsLive3242, align 4, !tbaa !35
  %sub3243 = sub nsw i32 %2386, 8
  store i32 %sub3243, i32* %bsLive3242, align 4, !tbaa !35
  %2387 = load i32, i32* %v3236, align 4, !tbaa !34
  %conv3244 = trunc i32 %2387 to i8
  store i8 %conv3244, i8* %uc, align 1, !tbaa !37
  %2388 = bitcast i32* %v3236 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2388) #3
  br label %while.end3279

if.end3245:                                       ; preds = %while.body3231
  %2389 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3246 = getelementptr inbounds %struct.DState, %struct.DState* %2389, i32 0, i32 0
  %2390 = load %struct.bz_stream*, %struct.bz_stream** %strm3246, align 8, !tbaa !6
  %avail_in3247 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2390, i32 0, i32 1
  %2391 = load i32, i32* %avail_in3247, align 8, !tbaa !38
  %cmp3248 = icmp eq i32 %2391, 0
  br i1 %cmp3248, label %if.then3250, label %if.end3251

if.then3250:                                      ; preds = %if.end3245
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3251:                                       ; preds = %if.end3245
  %2392 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3252 = getelementptr inbounds %struct.DState, %struct.DState* %2392, i32 0, i32 7
  %2393 = load i32, i32* %bsBuff3252, align 8, !tbaa !36
  %shl3253 = shl i32 %2393, 8
  %2394 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3254 = getelementptr inbounds %struct.DState, %struct.DState* %2394, i32 0, i32 0
  %2395 = load %struct.bz_stream*, %struct.bz_stream** %strm3254, align 8, !tbaa !6
  %next_in3255 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2395, i32 0, i32 0
  %2396 = load i8*, i8** %next_in3255, align 8, !tbaa !40
  %2397 = load i8, i8* %2396, align 1, !tbaa !37
  %conv3256 = zext i8 %2397 to i32
  %or3257 = or i32 %shl3253, %conv3256
  %2398 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3258 = getelementptr inbounds %struct.DState, %struct.DState* %2398, i32 0, i32 7
  store i32 %or3257, i32* %bsBuff3258, align 8, !tbaa !36
  %2399 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3259 = getelementptr inbounds %struct.DState, %struct.DState* %2399, i32 0, i32 8
  %2400 = load i32, i32* %bsLive3259, align 4, !tbaa !35
  %add3260 = add nsw i32 %2400, 8
  store i32 %add3260, i32* %bsLive3259, align 4, !tbaa !35
  %2401 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3261 = getelementptr inbounds %struct.DState, %struct.DState* %2401, i32 0, i32 0
  %2402 = load %struct.bz_stream*, %struct.bz_stream** %strm3261, align 8, !tbaa !6
  %next_in3262 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2402, i32 0, i32 0
  %2403 = load i8*, i8** %next_in3262, align 8, !tbaa !40
  %incdec.ptr3263 = getelementptr inbounds i8, i8* %2403, i32 1
  store i8* %incdec.ptr3263, i8** %next_in3262, align 8, !tbaa !40
  %2404 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3264 = getelementptr inbounds %struct.DState, %struct.DState* %2404, i32 0, i32 0
  %2405 = load %struct.bz_stream*, %struct.bz_stream** %strm3264, align 8, !tbaa !6
  %avail_in3265 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2405, i32 0, i32 1
  %2406 = load i32, i32* %avail_in3265, align 8, !tbaa !38
  %dec3266 = add i32 %2406, -1
  store i32 %dec3266, i32* %avail_in3265, align 8, !tbaa !38
  %2407 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3267 = getelementptr inbounds %struct.DState, %struct.DState* %2407, i32 0, i32 0
  %2408 = load %struct.bz_stream*, %struct.bz_stream** %strm3267, align 8, !tbaa !6
  %total_in_lo323268 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2408, i32 0, i32 2
  %2409 = load i32, i32* %total_in_lo323268, align 4, !tbaa !41
  %inc3269 = add i32 %2409, 1
  store i32 %inc3269, i32* %total_in_lo323268, align 4, !tbaa !41
  %2410 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3270 = getelementptr inbounds %struct.DState, %struct.DState* %2410, i32 0, i32 0
  %2411 = load %struct.bz_stream*, %struct.bz_stream** %strm3270, align 8, !tbaa !6
  %total_in_lo323271 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2411, i32 0, i32 2
  %2412 = load i32, i32* %total_in_lo323271, align 4, !tbaa !41
  %cmp3272 = icmp eq i32 %2412, 0
  br i1 %cmp3272, label %if.then3274, label %if.end3278

if.then3274:                                      ; preds = %if.end3251
  %2413 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3275 = getelementptr inbounds %struct.DState, %struct.DState* %2413, i32 0, i32 0
  %2414 = load %struct.bz_stream*, %struct.bz_stream** %strm3275, align 8, !tbaa !6
  %total_in_hi323276 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2414, i32 0, i32 3
  %2415 = load i32, i32* %total_in_hi323276, align 8, !tbaa !42
  %inc3277 = add i32 %2415, 1
  store i32 %inc3277, i32* %total_in_hi323276, align 8, !tbaa !42
  br label %if.end3278

if.end3278:                                       ; preds = %if.then3274, %if.end3251
  br label %while.cond3230, !llvm.loop !142

while.end3279:                                    ; preds = %if.then3235
  %2416 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3280 = getelementptr inbounds %struct.DState, %struct.DState* %2416, i32 0, i32 24
  %2417 = load i32, i32* %storedCombinedCRC3280, align 4, !tbaa !141
  %shl3281 = shl i32 %2417, 8
  %2418 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3282 = zext i8 %2418 to i32
  %or3283 = or i32 %shl3281, %conv3282
  %2419 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3284 = getelementptr inbounds %struct.DState, %struct.DState* %2419, i32 0, i32 24
  store i32 %or3283, i32* %storedCombinedCRC3284, align 4, !tbaa !141
  br label %sw.bb3285

sw.bb3285:                                        ; preds = %if.end, %while.end3279
  %2420 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3286 = getelementptr inbounds %struct.DState, %struct.DState* %2420, i32 0, i32 1
  store i32 48, i32* %state3286, align 8, !tbaa !9
  br label %while.cond3287

while.cond3287:                                   ; preds = %if.end3335, %sw.bb3285
  br label %while.body3288

while.body3288:                                   ; preds = %while.cond3287
  %2421 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3289 = getelementptr inbounds %struct.DState, %struct.DState* %2421, i32 0, i32 8
  %2422 = load i32, i32* %bsLive3289, align 4, !tbaa !35
  %cmp3290 = icmp sge i32 %2422, 8
  br i1 %cmp3290, label %if.then3292, label %if.end3302

if.then3292:                                      ; preds = %while.body3288
  %2423 = bitcast i32* %v3293 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2423) #3
  %2424 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3294 = getelementptr inbounds %struct.DState, %struct.DState* %2424, i32 0, i32 7
  %2425 = load i32, i32* %bsBuff3294, align 8, !tbaa !36
  %2426 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3295 = getelementptr inbounds %struct.DState, %struct.DState* %2426, i32 0, i32 8
  %2427 = load i32, i32* %bsLive3295, align 4, !tbaa !35
  %sub3296 = sub nsw i32 %2427, 8
  %shr3297 = lshr i32 %2425, %sub3296
  %and3298 = and i32 %shr3297, 255
  store i32 %and3298, i32* %v3293, align 4, !tbaa !34
  %2428 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3299 = getelementptr inbounds %struct.DState, %struct.DState* %2428, i32 0, i32 8
  %2429 = load i32, i32* %bsLive3299, align 4, !tbaa !35
  %sub3300 = sub nsw i32 %2429, 8
  store i32 %sub3300, i32* %bsLive3299, align 4, !tbaa !35
  %2430 = load i32, i32* %v3293, align 4, !tbaa !34
  %conv3301 = trunc i32 %2430 to i8
  store i8 %conv3301, i8* %uc, align 1, !tbaa !37
  %2431 = bitcast i32* %v3293 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2431) #3
  br label %while.end3336

if.end3302:                                       ; preds = %while.body3288
  %2432 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3303 = getelementptr inbounds %struct.DState, %struct.DState* %2432, i32 0, i32 0
  %2433 = load %struct.bz_stream*, %struct.bz_stream** %strm3303, align 8, !tbaa !6
  %avail_in3304 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2433, i32 0, i32 1
  %2434 = load i32, i32* %avail_in3304, align 8, !tbaa !38
  %cmp3305 = icmp eq i32 %2434, 0
  br i1 %cmp3305, label %if.then3307, label %if.end3308

if.then3307:                                      ; preds = %if.end3302
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3308:                                       ; preds = %if.end3302
  %2435 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3309 = getelementptr inbounds %struct.DState, %struct.DState* %2435, i32 0, i32 7
  %2436 = load i32, i32* %bsBuff3309, align 8, !tbaa !36
  %shl3310 = shl i32 %2436, 8
  %2437 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3311 = getelementptr inbounds %struct.DState, %struct.DState* %2437, i32 0, i32 0
  %2438 = load %struct.bz_stream*, %struct.bz_stream** %strm3311, align 8, !tbaa !6
  %next_in3312 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2438, i32 0, i32 0
  %2439 = load i8*, i8** %next_in3312, align 8, !tbaa !40
  %2440 = load i8, i8* %2439, align 1, !tbaa !37
  %conv3313 = zext i8 %2440 to i32
  %or3314 = or i32 %shl3310, %conv3313
  %2441 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3315 = getelementptr inbounds %struct.DState, %struct.DState* %2441, i32 0, i32 7
  store i32 %or3314, i32* %bsBuff3315, align 8, !tbaa !36
  %2442 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3316 = getelementptr inbounds %struct.DState, %struct.DState* %2442, i32 0, i32 8
  %2443 = load i32, i32* %bsLive3316, align 4, !tbaa !35
  %add3317 = add nsw i32 %2443, 8
  store i32 %add3317, i32* %bsLive3316, align 4, !tbaa !35
  %2444 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3318 = getelementptr inbounds %struct.DState, %struct.DState* %2444, i32 0, i32 0
  %2445 = load %struct.bz_stream*, %struct.bz_stream** %strm3318, align 8, !tbaa !6
  %next_in3319 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2445, i32 0, i32 0
  %2446 = load i8*, i8** %next_in3319, align 8, !tbaa !40
  %incdec.ptr3320 = getelementptr inbounds i8, i8* %2446, i32 1
  store i8* %incdec.ptr3320, i8** %next_in3319, align 8, !tbaa !40
  %2447 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3321 = getelementptr inbounds %struct.DState, %struct.DState* %2447, i32 0, i32 0
  %2448 = load %struct.bz_stream*, %struct.bz_stream** %strm3321, align 8, !tbaa !6
  %avail_in3322 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2448, i32 0, i32 1
  %2449 = load i32, i32* %avail_in3322, align 8, !tbaa !38
  %dec3323 = add i32 %2449, -1
  store i32 %dec3323, i32* %avail_in3322, align 8, !tbaa !38
  %2450 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3324 = getelementptr inbounds %struct.DState, %struct.DState* %2450, i32 0, i32 0
  %2451 = load %struct.bz_stream*, %struct.bz_stream** %strm3324, align 8, !tbaa !6
  %total_in_lo323325 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2451, i32 0, i32 2
  %2452 = load i32, i32* %total_in_lo323325, align 4, !tbaa !41
  %inc3326 = add i32 %2452, 1
  store i32 %inc3326, i32* %total_in_lo323325, align 4, !tbaa !41
  %2453 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3327 = getelementptr inbounds %struct.DState, %struct.DState* %2453, i32 0, i32 0
  %2454 = load %struct.bz_stream*, %struct.bz_stream** %strm3327, align 8, !tbaa !6
  %total_in_lo323328 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2454, i32 0, i32 2
  %2455 = load i32, i32* %total_in_lo323328, align 4, !tbaa !41
  %cmp3329 = icmp eq i32 %2455, 0
  br i1 %cmp3329, label %if.then3331, label %if.end3335

if.then3331:                                      ; preds = %if.end3308
  %2456 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3332 = getelementptr inbounds %struct.DState, %struct.DState* %2456, i32 0, i32 0
  %2457 = load %struct.bz_stream*, %struct.bz_stream** %strm3332, align 8, !tbaa !6
  %total_in_hi323333 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2457, i32 0, i32 3
  %2458 = load i32, i32* %total_in_hi323333, align 8, !tbaa !42
  %inc3334 = add i32 %2458, 1
  store i32 %inc3334, i32* %total_in_hi323333, align 8, !tbaa !42
  br label %if.end3335

if.end3335:                                       ; preds = %if.then3331, %if.end3308
  br label %while.cond3287, !llvm.loop !143

while.end3336:                                    ; preds = %if.then3292
  %2459 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3337 = getelementptr inbounds %struct.DState, %struct.DState* %2459, i32 0, i32 24
  %2460 = load i32, i32* %storedCombinedCRC3337, align 4, !tbaa !141
  %shl3338 = shl i32 %2460, 8
  %2461 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3339 = zext i8 %2461 to i32
  %or3340 = or i32 %shl3338, %conv3339
  %2462 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3341 = getelementptr inbounds %struct.DState, %struct.DState* %2462, i32 0, i32 24
  store i32 %or3340, i32* %storedCombinedCRC3341, align 4, !tbaa !141
  br label %sw.bb3342

sw.bb3342:                                        ; preds = %if.end, %while.end3336
  %2463 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3343 = getelementptr inbounds %struct.DState, %struct.DState* %2463, i32 0, i32 1
  store i32 49, i32* %state3343, align 8, !tbaa !9
  br label %while.cond3344

while.cond3344:                                   ; preds = %if.end3392, %sw.bb3342
  br label %while.body3345

while.body3345:                                   ; preds = %while.cond3344
  %2464 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3346 = getelementptr inbounds %struct.DState, %struct.DState* %2464, i32 0, i32 8
  %2465 = load i32, i32* %bsLive3346, align 4, !tbaa !35
  %cmp3347 = icmp sge i32 %2465, 8
  br i1 %cmp3347, label %if.then3349, label %if.end3359

if.then3349:                                      ; preds = %while.body3345
  %2466 = bitcast i32* %v3350 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2466) #3
  %2467 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3351 = getelementptr inbounds %struct.DState, %struct.DState* %2467, i32 0, i32 7
  %2468 = load i32, i32* %bsBuff3351, align 8, !tbaa !36
  %2469 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3352 = getelementptr inbounds %struct.DState, %struct.DState* %2469, i32 0, i32 8
  %2470 = load i32, i32* %bsLive3352, align 4, !tbaa !35
  %sub3353 = sub nsw i32 %2470, 8
  %shr3354 = lshr i32 %2468, %sub3353
  %and3355 = and i32 %shr3354, 255
  store i32 %and3355, i32* %v3350, align 4, !tbaa !34
  %2471 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3356 = getelementptr inbounds %struct.DState, %struct.DState* %2471, i32 0, i32 8
  %2472 = load i32, i32* %bsLive3356, align 4, !tbaa !35
  %sub3357 = sub nsw i32 %2472, 8
  store i32 %sub3357, i32* %bsLive3356, align 4, !tbaa !35
  %2473 = load i32, i32* %v3350, align 4, !tbaa !34
  %conv3358 = trunc i32 %2473 to i8
  store i8 %conv3358, i8* %uc, align 1, !tbaa !37
  %2474 = bitcast i32* %v3350 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2474) #3
  br label %while.end3393

if.end3359:                                       ; preds = %while.body3345
  %2475 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3360 = getelementptr inbounds %struct.DState, %struct.DState* %2475, i32 0, i32 0
  %2476 = load %struct.bz_stream*, %struct.bz_stream** %strm3360, align 8, !tbaa !6
  %avail_in3361 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2476, i32 0, i32 1
  %2477 = load i32, i32* %avail_in3361, align 8, !tbaa !38
  %cmp3362 = icmp eq i32 %2477, 0
  br i1 %cmp3362, label %if.then3364, label %if.end3365

if.then3364:                                      ; preds = %if.end3359
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3365:                                       ; preds = %if.end3359
  %2478 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3366 = getelementptr inbounds %struct.DState, %struct.DState* %2478, i32 0, i32 7
  %2479 = load i32, i32* %bsBuff3366, align 8, !tbaa !36
  %shl3367 = shl i32 %2479, 8
  %2480 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3368 = getelementptr inbounds %struct.DState, %struct.DState* %2480, i32 0, i32 0
  %2481 = load %struct.bz_stream*, %struct.bz_stream** %strm3368, align 8, !tbaa !6
  %next_in3369 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2481, i32 0, i32 0
  %2482 = load i8*, i8** %next_in3369, align 8, !tbaa !40
  %2483 = load i8, i8* %2482, align 1, !tbaa !37
  %conv3370 = zext i8 %2483 to i32
  %or3371 = or i32 %shl3367, %conv3370
  %2484 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3372 = getelementptr inbounds %struct.DState, %struct.DState* %2484, i32 0, i32 7
  store i32 %or3371, i32* %bsBuff3372, align 8, !tbaa !36
  %2485 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3373 = getelementptr inbounds %struct.DState, %struct.DState* %2485, i32 0, i32 8
  %2486 = load i32, i32* %bsLive3373, align 4, !tbaa !35
  %add3374 = add nsw i32 %2486, 8
  store i32 %add3374, i32* %bsLive3373, align 4, !tbaa !35
  %2487 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3375 = getelementptr inbounds %struct.DState, %struct.DState* %2487, i32 0, i32 0
  %2488 = load %struct.bz_stream*, %struct.bz_stream** %strm3375, align 8, !tbaa !6
  %next_in3376 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2488, i32 0, i32 0
  %2489 = load i8*, i8** %next_in3376, align 8, !tbaa !40
  %incdec.ptr3377 = getelementptr inbounds i8, i8* %2489, i32 1
  store i8* %incdec.ptr3377, i8** %next_in3376, align 8, !tbaa !40
  %2490 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3378 = getelementptr inbounds %struct.DState, %struct.DState* %2490, i32 0, i32 0
  %2491 = load %struct.bz_stream*, %struct.bz_stream** %strm3378, align 8, !tbaa !6
  %avail_in3379 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2491, i32 0, i32 1
  %2492 = load i32, i32* %avail_in3379, align 8, !tbaa !38
  %dec3380 = add i32 %2492, -1
  store i32 %dec3380, i32* %avail_in3379, align 8, !tbaa !38
  %2493 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3381 = getelementptr inbounds %struct.DState, %struct.DState* %2493, i32 0, i32 0
  %2494 = load %struct.bz_stream*, %struct.bz_stream** %strm3381, align 8, !tbaa !6
  %total_in_lo323382 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2494, i32 0, i32 2
  %2495 = load i32, i32* %total_in_lo323382, align 4, !tbaa !41
  %inc3383 = add i32 %2495, 1
  store i32 %inc3383, i32* %total_in_lo323382, align 4, !tbaa !41
  %2496 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3384 = getelementptr inbounds %struct.DState, %struct.DState* %2496, i32 0, i32 0
  %2497 = load %struct.bz_stream*, %struct.bz_stream** %strm3384, align 8, !tbaa !6
  %total_in_lo323385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2497, i32 0, i32 2
  %2498 = load i32, i32* %total_in_lo323385, align 4, !tbaa !41
  %cmp3386 = icmp eq i32 %2498, 0
  br i1 %cmp3386, label %if.then3388, label %if.end3392

if.then3388:                                      ; preds = %if.end3365
  %2499 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3389 = getelementptr inbounds %struct.DState, %struct.DState* %2499, i32 0, i32 0
  %2500 = load %struct.bz_stream*, %struct.bz_stream** %strm3389, align 8, !tbaa !6
  %total_in_hi323390 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2500, i32 0, i32 3
  %2501 = load i32, i32* %total_in_hi323390, align 8, !tbaa !42
  %inc3391 = add i32 %2501, 1
  store i32 %inc3391, i32* %total_in_hi323390, align 8, !tbaa !42
  br label %if.end3392

if.end3392:                                       ; preds = %if.then3388, %if.end3365
  br label %while.cond3344, !llvm.loop !144

while.end3393:                                    ; preds = %if.then3349
  %2502 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3394 = getelementptr inbounds %struct.DState, %struct.DState* %2502, i32 0, i32 24
  %2503 = load i32, i32* %storedCombinedCRC3394, align 4, !tbaa !141
  %shl3395 = shl i32 %2503, 8
  %2504 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3396 = zext i8 %2504 to i32
  %or3397 = or i32 %shl3395, %conv3396
  %2505 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3398 = getelementptr inbounds %struct.DState, %struct.DState* %2505, i32 0, i32 24
  store i32 %or3397, i32* %storedCombinedCRC3398, align 4, !tbaa !141
  br label %sw.bb3399

sw.bb3399:                                        ; preds = %if.end, %while.end3393
  %2506 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3400 = getelementptr inbounds %struct.DState, %struct.DState* %2506, i32 0, i32 1
  store i32 50, i32* %state3400, align 8, !tbaa !9
  br label %while.cond3401

while.cond3401:                                   ; preds = %if.end3449, %sw.bb3399
  br label %while.body3402

while.body3402:                                   ; preds = %while.cond3401
  %2507 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3403 = getelementptr inbounds %struct.DState, %struct.DState* %2507, i32 0, i32 8
  %2508 = load i32, i32* %bsLive3403, align 4, !tbaa !35
  %cmp3404 = icmp sge i32 %2508, 8
  br i1 %cmp3404, label %if.then3406, label %if.end3416

if.then3406:                                      ; preds = %while.body3402
  %2509 = bitcast i32* %v3407 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2509) #3
  %2510 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3408 = getelementptr inbounds %struct.DState, %struct.DState* %2510, i32 0, i32 7
  %2511 = load i32, i32* %bsBuff3408, align 8, !tbaa !36
  %2512 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3409 = getelementptr inbounds %struct.DState, %struct.DState* %2512, i32 0, i32 8
  %2513 = load i32, i32* %bsLive3409, align 4, !tbaa !35
  %sub3410 = sub nsw i32 %2513, 8
  %shr3411 = lshr i32 %2511, %sub3410
  %and3412 = and i32 %shr3411, 255
  store i32 %and3412, i32* %v3407, align 4, !tbaa !34
  %2514 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3413 = getelementptr inbounds %struct.DState, %struct.DState* %2514, i32 0, i32 8
  %2515 = load i32, i32* %bsLive3413, align 4, !tbaa !35
  %sub3414 = sub nsw i32 %2515, 8
  store i32 %sub3414, i32* %bsLive3413, align 4, !tbaa !35
  %2516 = load i32, i32* %v3407, align 4, !tbaa !34
  %conv3415 = trunc i32 %2516 to i8
  store i8 %conv3415, i8* %uc, align 1, !tbaa !37
  %2517 = bitcast i32* %v3407 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2517) #3
  br label %while.end3450

if.end3416:                                       ; preds = %while.body3402
  %2518 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3417 = getelementptr inbounds %struct.DState, %struct.DState* %2518, i32 0, i32 0
  %2519 = load %struct.bz_stream*, %struct.bz_stream** %strm3417, align 8, !tbaa !6
  %avail_in3418 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2519, i32 0, i32 1
  %2520 = load i32, i32* %avail_in3418, align 8, !tbaa !38
  %cmp3419 = icmp eq i32 %2520, 0
  br i1 %cmp3419, label %if.then3421, label %if.end3422

if.then3421:                                      ; preds = %if.end3416
  store i32 0, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

if.end3422:                                       ; preds = %if.end3416
  %2521 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3423 = getelementptr inbounds %struct.DState, %struct.DState* %2521, i32 0, i32 7
  %2522 = load i32, i32* %bsBuff3423, align 8, !tbaa !36
  %shl3424 = shl i32 %2522, 8
  %2523 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3425 = getelementptr inbounds %struct.DState, %struct.DState* %2523, i32 0, i32 0
  %2524 = load %struct.bz_stream*, %struct.bz_stream** %strm3425, align 8, !tbaa !6
  %next_in3426 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2524, i32 0, i32 0
  %2525 = load i8*, i8** %next_in3426, align 8, !tbaa !40
  %2526 = load i8, i8* %2525, align 1, !tbaa !37
  %conv3427 = zext i8 %2526 to i32
  %or3428 = or i32 %shl3424, %conv3427
  %2527 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsBuff3429 = getelementptr inbounds %struct.DState, %struct.DState* %2527, i32 0, i32 7
  store i32 %or3428, i32* %bsBuff3429, align 8, !tbaa !36
  %2528 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %bsLive3430 = getelementptr inbounds %struct.DState, %struct.DState* %2528, i32 0, i32 8
  %2529 = load i32, i32* %bsLive3430, align 4, !tbaa !35
  %add3431 = add nsw i32 %2529, 8
  store i32 %add3431, i32* %bsLive3430, align 4, !tbaa !35
  %2530 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3432 = getelementptr inbounds %struct.DState, %struct.DState* %2530, i32 0, i32 0
  %2531 = load %struct.bz_stream*, %struct.bz_stream** %strm3432, align 8, !tbaa !6
  %next_in3433 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2531, i32 0, i32 0
  %2532 = load i8*, i8** %next_in3433, align 8, !tbaa !40
  %incdec.ptr3434 = getelementptr inbounds i8, i8* %2532, i32 1
  store i8* %incdec.ptr3434, i8** %next_in3433, align 8, !tbaa !40
  %2533 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3435 = getelementptr inbounds %struct.DState, %struct.DState* %2533, i32 0, i32 0
  %2534 = load %struct.bz_stream*, %struct.bz_stream** %strm3435, align 8, !tbaa !6
  %avail_in3436 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2534, i32 0, i32 1
  %2535 = load i32, i32* %avail_in3436, align 8, !tbaa !38
  %dec3437 = add i32 %2535, -1
  store i32 %dec3437, i32* %avail_in3436, align 8, !tbaa !38
  %2536 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3438 = getelementptr inbounds %struct.DState, %struct.DState* %2536, i32 0, i32 0
  %2537 = load %struct.bz_stream*, %struct.bz_stream** %strm3438, align 8, !tbaa !6
  %total_in_lo323439 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2537, i32 0, i32 2
  %2538 = load i32, i32* %total_in_lo323439, align 4, !tbaa !41
  %inc3440 = add i32 %2538, 1
  store i32 %inc3440, i32* %total_in_lo323439, align 4, !tbaa !41
  %2539 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3441 = getelementptr inbounds %struct.DState, %struct.DState* %2539, i32 0, i32 0
  %2540 = load %struct.bz_stream*, %struct.bz_stream** %strm3441, align 8, !tbaa !6
  %total_in_lo323442 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2540, i32 0, i32 2
  %2541 = load i32, i32* %total_in_lo323442, align 4, !tbaa !41
  %cmp3443 = icmp eq i32 %2541, 0
  br i1 %cmp3443, label %if.then3445, label %if.end3449

if.then3445:                                      ; preds = %if.end3422
  %2542 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %strm3446 = getelementptr inbounds %struct.DState, %struct.DState* %2542, i32 0, i32 0
  %2543 = load %struct.bz_stream*, %struct.bz_stream** %strm3446, align 8, !tbaa !6
  %total_in_hi323447 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2543, i32 0, i32 3
  %2544 = load i32, i32* %total_in_hi323447, align 8, !tbaa !42
  %inc3448 = add i32 %2544, 1
  store i32 %inc3448, i32* %total_in_hi323447, align 8, !tbaa !42
  br label %if.end3449

if.end3449:                                       ; preds = %if.then3445, %if.end3422
  br label %while.cond3401, !llvm.loop !145

while.end3450:                                    ; preds = %if.then3406
  %2545 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3451 = getelementptr inbounds %struct.DState, %struct.DState* %2545, i32 0, i32 24
  %2546 = load i32, i32* %storedCombinedCRC3451, align 4, !tbaa !141
  %shl3452 = shl i32 %2546, 8
  %2547 = load i8, i8* %uc, align 1, !tbaa !37
  %conv3453 = zext i8 %2547 to i32
  %or3454 = or i32 %shl3452, %conv3453
  %2548 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %storedCombinedCRC3455 = getelementptr inbounds %struct.DState, %struct.DState* %2548, i32 0, i32 24
  store i32 %or3454, i32* %storedCombinedCRC3455, align 4, !tbaa !141
  %2549 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %state3456 = getelementptr inbounds %struct.DState, %struct.DState* %2549, i32 0, i32 1
  store i32 1, i32* %state3456, align 8, !tbaa !9
  store i32 4, i32* %retVal, align 4, !tbaa !34
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 4001)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @BZ2_bz__AssertH__fail(i32 4002)
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.epilog, %while.end3450, %if.then3421, %if.then3364, %if.then3307, %if.then3250, %if.then3226, %if.then3193, %if.then3169, %if.then3136, %if.then3112, %if.then3079, %if.then3055, %if.then3022, %if.then2998, %if.then2965, %if.end2942, %if.then2606, %if.then2559, %if.then2544, %if.then2500, %if.then2470, %if.then2436, %if.then2390, %if.then2189, %if.then2176, %if.then2160, %if.then2128, %if.then2084, %if.then2054, %if.then2020, %if.then1974, %if.then1935, %if.then1891, %if.then1861, %if.then1827, %if.then1781, %if.then1628, %if.then1571, %if.then1547, %if.then1506, %if.then1433, %if.then1395, %if.then1365, %if.then1333, %if.then1310, %if.then1275, %if.then1250, %if.then1201, %if.then1117, %if.then1091, %if.then1083, %if.then1045, %if.then988, %if.then931, %if.then879, %if.then822, %if.then765, %if.then708, %if.then651, %if.then620, %if.then587, %if.then563, %if.then530, %if.then506, %if.then473, %if.then449, %if.then416, %if.then392, %if.then359, %if.then335, %if.then297, %if.then272, %if.then259, %if.then233, %if.then197, %if.then174, %if.then141, %if.then117, %if.then84, %if.then60, %if.then37
  %2550 = load i32, i32* %i, align 4, !tbaa !34
  %2551 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_i3457 = getelementptr inbounds %struct.DState, %struct.DState* %2551, i32 0, i32 40
  store i32 %2550, i32* %save_i3457, align 4, !tbaa !10
  %2552 = load i32, i32* %j, align 4, !tbaa !34
  %2553 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_j3458 = getelementptr inbounds %struct.DState, %struct.DState* %2553, i32 0, i32 41
  store i32 %2552, i32* %save_j3458, align 8, !tbaa !11
  %2554 = load i32, i32* %t, align 4, !tbaa !34
  %2555 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_t3459 = getelementptr inbounds %struct.DState, %struct.DState* %2555, i32 0, i32 42
  store i32 %2554, i32* %save_t3459, align 4, !tbaa !12
  %2556 = load i32, i32* %alphaSize, align 4, !tbaa !34
  %2557 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_alphaSize3460 = getelementptr inbounds %struct.DState, %struct.DState* %2557, i32 0, i32 43
  store i32 %2556, i32* %save_alphaSize3460, align 8, !tbaa !13
  %2558 = load i32, i32* %nGroups, align 4, !tbaa !34
  %2559 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nGroups3461 = getelementptr inbounds %struct.DState, %struct.DState* %2559, i32 0, i32 44
  store i32 %2558, i32* %save_nGroups3461, align 4, !tbaa !14
  %2560 = load i32, i32* %nSelectors, align 4, !tbaa !34
  %2561 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nSelectors3462 = getelementptr inbounds %struct.DState, %struct.DState* %2561, i32 0, i32 45
  store i32 %2560, i32* %save_nSelectors3462, align 8, !tbaa !15
  %2562 = load i32, i32* %EOB, align 4, !tbaa !34
  %2563 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_EOB3463 = getelementptr inbounds %struct.DState, %struct.DState* %2563, i32 0, i32 46
  store i32 %2562, i32* %save_EOB3463, align 4, !tbaa !16
  %2564 = load i32, i32* %groupNo, align 4, !tbaa !34
  %2565 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupNo3464 = getelementptr inbounds %struct.DState, %struct.DState* %2565, i32 0, i32 47
  store i32 %2564, i32* %save_groupNo3464, align 8, !tbaa !17
  %2566 = load i32, i32* %groupPos, align 4, !tbaa !34
  %2567 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_groupPos3465 = getelementptr inbounds %struct.DState, %struct.DState* %2567, i32 0, i32 48
  store i32 %2566, i32* %save_groupPos3465, align 4, !tbaa !18
  %2568 = load i32, i32* %nextSym, align 4, !tbaa !34
  %2569 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nextSym3466 = getelementptr inbounds %struct.DState, %struct.DState* %2569, i32 0, i32 49
  store i32 %2568, i32* %save_nextSym3466, align 8, !tbaa !19
  %2570 = load i32, i32* %nblockMAX, align 4, !tbaa !34
  %2571 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblockMAX3467 = getelementptr inbounds %struct.DState, %struct.DState* %2571, i32 0, i32 50
  store i32 %2570, i32* %save_nblockMAX3467, align 4, !tbaa !20
  %2572 = load i32, i32* %nblock, align 4, !tbaa !34
  %2573 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_nblock3468 = getelementptr inbounds %struct.DState, %struct.DState* %2573, i32 0, i32 51
  store i32 %2572, i32* %save_nblock3468, align 8, !tbaa !21
  %2574 = load i32, i32* %es, align 4, !tbaa !34
  %2575 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_es3469 = getelementptr inbounds %struct.DState, %struct.DState* %2575, i32 0, i32 52
  store i32 %2574, i32* %save_es3469, align 4, !tbaa !22
  %2576 = load i32, i32* %N, align 4, !tbaa !34
  %2577 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_N3470 = getelementptr inbounds %struct.DState, %struct.DState* %2577, i32 0, i32 53
  store i32 %2576, i32* %save_N3470, align 8, !tbaa !23
  %2578 = load i32, i32* %curr, align 4, !tbaa !34
  %2579 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_curr3471 = getelementptr inbounds %struct.DState, %struct.DState* %2579, i32 0, i32 54
  store i32 %2578, i32* %save_curr3471, align 4, !tbaa !24
  %2580 = load i32, i32* %zt, align 4, !tbaa !34
  %2581 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zt3472 = getelementptr inbounds %struct.DState, %struct.DState* %2581, i32 0, i32 55
  store i32 %2580, i32* %save_zt3472, align 8, !tbaa !25
  %2582 = load i32, i32* %zn, align 4, !tbaa !34
  %2583 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zn3473 = getelementptr inbounds %struct.DState, %struct.DState* %2583, i32 0, i32 56
  store i32 %2582, i32* %save_zn3473, align 4, !tbaa !26
  %2584 = load i32, i32* %zvec, align 4, !tbaa !34
  %2585 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zvec3474 = getelementptr inbounds %struct.DState, %struct.DState* %2585, i32 0, i32 57
  store i32 %2584, i32* %save_zvec3474, align 8, !tbaa !27
  %2586 = load i32, i32* %zj, align 4, !tbaa !34
  %2587 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_zj3475 = getelementptr inbounds %struct.DState, %struct.DState* %2587, i32 0, i32 58
  store i32 %2586, i32* %save_zj3475, align 4, !tbaa !28
  %2588 = load i32, i32* %gSel, align 4, !tbaa !34
  %2589 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gSel3476 = getelementptr inbounds %struct.DState, %struct.DState* %2589, i32 0, i32 59
  store i32 %2588, i32* %save_gSel3476, align 8, !tbaa !29
  %2590 = load i32, i32* %gMinlen, align 4, !tbaa !34
  %2591 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gMinlen3477 = getelementptr inbounds %struct.DState, %struct.DState* %2591, i32 0, i32 60
  store i32 %2590, i32* %save_gMinlen3477, align 4, !tbaa !30
  %2592 = load i32*, i32** %gLimit, align 8, !tbaa !2
  %2593 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gLimit3478 = getelementptr inbounds %struct.DState, %struct.DState* %2593, i32 0, i32 61
  store i32* %2592, i32** %save_gLimit3478, align 8, !tbaa !31
  %2594 = load i32*, i32** %gBase, align 8, !tbaa !2
  %2595 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gBase3479 = getelementptr inbounds %struct.DState, %struct.DState* %2595, i32 0, i32 62
  store i32* %2594, i32** %save_gBase3479, align 8, !tbaa !32
  %2596 = load i32*, i32** %gPerm, align 8, !tbaa !2
  %2597 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %save_gPerm3480 = getelementptr inbounds %struct.DState, %struct.DState* %2597, i32 0, i32 63
  store i32* %2596, i32** %save_gPerm3480, align 8, !tbaa !33
  %2598 = load i32, i32* %retVal, align 4, !tbaa !34
  %2599 = bitcast i32** %gPerm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2599) #3
  %2600 = bitcast i32** %gBase to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2600) #3
  %2601 = bitcast i32** %gLimit to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2601) #3
  %2602 = bitcast i32* %gMinlen to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2602) #3
  %2603 = bitcast i32* %gSel to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2603) #3
  %2604 = bitcast i32* %zj to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2604) #3
  %2605 = bitcast i32* %zvec to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2605) #3
  %2606 = bitcast i32* %zn to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2606) #3
  %2607 = bitcast i32* %zt to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2607) #3
  %2608 = bitcast i32* %curr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2608) #3
  %2609 = bitcast i32* %N to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2609) #3
  %2610 = bitcast i32* %es to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2610) #3
  %2611 = bitcast i32* %nblock to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2611) #3
  %2612 = bitcast i32* %nblockMAX to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2612) #3
  %2613 = bitcast i32* %nextSym to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2613) #3
  %2614 = bitcast i32* %groupPos to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2614) #3
  %2615 = bitcast i32* %groupNo to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2615) #3
  %2616 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2616) #3
  %2617 = bitcast i32* %nSelectors to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2617) #3
  %2618 = bitcast i32* %nGroups to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2618) #3
  %2619 = bitcast i32* %alphaSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2619) #3
  %2620 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2620) #3
  %2621 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2621) #3
  %2622 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2622) #3
  %2623 = bitcast %struct.bz_stream** %strm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2623) #3
  %2624 = bitcast i32* %maxLen to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2624) #3
  %2625 = bitcast i32* %minLen to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2625) #3
  %2626 = bitcast i32* %retVal to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2626) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %uc) #3
  ret i32 %2598
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @makeMaps_d(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %i = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %1, i32 0, i32 27
  store i32 0, i32* %nInUse, align 8, !tbaa !80
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !34
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %3, i32 0, i32 28
  %4 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !34
  %conv = trunc i32 %6 to i8
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 30
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse1 = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 27
  %9 = load i32, i32* %nInUse1, align 8, !tbaa !80
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i64 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1, !tbaa !37
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !2
  %nInUse4 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 27
  %11 = load i32, i32* %nInUse4, align 8, !tbaa !80
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %nInUse4, align 8, !tbaa !80
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !34
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* %i, align 4, !tbaa !34
  br label %for.cond, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  ret void
}

declare dso_local void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @BZ2_indexIntoF(i32, i32*) #2

declare dso_local void @BZ2_bz__AssertH__fail(i32) #2

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
!6 = !{!7, !3, i64 0}
!7 = !{!"", !3, i64 0, !8, i64 8, !4, i64 12, !8, i64 16, !4, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !4, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !4, i64 68, !8, i64 1092, !4, i64 1096, !4, i64 2124, !3, i64 3152, !3, i64 3160, !3, i64 3168, !8, i64 3176, !8, i64 3180, !8, i64 3184, !8, i64 3188, !8, i64 3192, !4, i64 3196, !4, i64 3452, !4, i64 3468, !4, i64 3724, !4, i64 7820, !4, i64 7884, !4, i64 25886, !4, i64 43888, !4, i64 45436, !4, i64 51628, !4, i64 57820, !4, i64 64012, !8, i64 64036, !8, i64 64040, !8, i64 64044, !8, i64 64048, !8, i64 64052, !8, i64 64056, !8, i64 64060, !8, i64 64064, !8, i64 64068, !8, i64 64072, !8, i64 64076, !8, i64 64080, !8, i64 64084, !8, i64 64088, !8, i64 64092, !8, i64 64096, !8, i64 64100, !8, i64 64104, !8, i64 64108, !8, i64 64112, !8, i64 64116, !3, i64 64120, !3, i64 64128, !3, i64 64136}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !8, i64 8}
!10 = !{!7, !8, i64 64036}
!11 = !{!7, !8, i64 64040}
!12 = !{!7, !8, i64 64044}
!13 = !{!7, !8, i64 64048}
!14 = !{!7, !8, i64 64052}
!15 = !{!7, !8, i64 64056}
!16 = !{!7, !8, i64 64060}
!17 = !{!7, !8, i64 64064}
!18 = !{!7, !8, i64 64068}
!19 = !{!7, !8, i64 64072}
!20 = !{!7, !8, i64 64076}
!21 = !{!7, !8, i64 64080}
!22 = !{!7, !8, i64 64084}
!23 = !{!7, !8, i64 64088}
!24 = !{!7, !8, i64 64092}
!25 = !{!7, !8, i64 64096}
!26 = !{!7, !8, i64 64100}
!27 = !{!7, !8, i64 64104}
!28 = !{!7, !8, i64 64108}
!29 = !{!7, !8, i64 64112}
!30 = !{!7, !8, i64 64116}
!31 = !{!7, !3, i64 64120}
!32 = !{!7, !3, i64 64128}
!33 = !{!7, !3, i64 64136}
!34 = !{!8, !8, i64 0}
!35 = !{!7, !8, i64 36}
!36 = !{!7, !8, i64 32}
!37 = !{!4, !4, i64 0}
!38 = !{!39, !8, i64 8}
!39 = !{!"", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !3, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72}
!40 = !{!39, !3, i64 0}
!41 = !{!39, !8, i64 12}
!42 = !{!39, !8, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = !{!7, !8, i64 40}
!48 = distinct !{!48, !44}
!49 = !{!7, !4, i64 44}
!50 = !{!39, !3, i64 56}
!51 = !{!39, !3, i64 72}
!52 = !{!7, !3, i64 3160}
!53 = !{!7, !3, i64 3168}
!54 = !{!7, !3, i64 3152}
!55 = distinct !{!55, !44}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !44}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = !{!7, !8, i64 48}
!62 = !{!7, !8, i64 52}
!63 = !{!7, !8, i64 3176}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = !{!7, !4, i64 20}
!69 = distinct !{!69, !44}
!70 = !{!7, !8, i64 56}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = !{!7, !8, i64 3192}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
!99 = distinct !{!99, !44}
!100 = distinct !{!100, !44}
!101 = distinct !{!101, !44}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = !{!108, !108, i64 0}
!108 = !{!"short", !4, i64 0}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !44}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !44}
!124 = !{!7, !8, i64 16}
!125 = !{!7, !4, i64 12}
!126 = !{!7, !8, i64 3184}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !44}
!130 = !{!7, !8, i64 60}
!131 = !{!7, !8, i64 1092}
!132 = !{!7, !8, i64 24}
!133 = !{!7, !8, i64 28}
!134 = !{!7, !8, i64 64}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = !{!7, !8, i64 3180}
!142 = distinct !{!142, !44}
!143 = distinct !{!143, !44}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
!146 = distinct !{!146, !44}
