; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { %struct._IO_FILE*, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@bzerrorstrings = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external dso_local global [256 x i32], align 16
@BZ2_rNums = external dso_local global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bz__AssertH__fail(i32 %errcode) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  store i32 %errcode, i32* %errcode.addr, align 4, !tbaa !2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %1 = load i32, i32* %errcode.addr, align 4, !tbaa !2
  %call = call i8* @BZ2_bzlibVersion()
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str, i64 0, i64 0), i32 %1, i8* %call)
  %2 = load i32, i32* %errcode.addr, align 4, !tbaa !2
  %cmp = icmp eq i32 %2, 1007
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 3) #9
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzlibVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca %struct.EState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4, !tbaa !2
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  store i32 %workFactor, i32* %workFactor.addr, align 4, !tbaa !2
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #10
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %2, null
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %3, 1
  br i1 %cmp1, label %if.then8, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp3 = icmp sgt i32 %4, 9
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %6 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp7 = icmp sgt i32 %6, 250
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %7 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 30, i32* %workFactor.addr, align 4, !tbaa !2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 9
  %9 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !8
  %cmp13 = icmp eq i8* (i8*, i32, i32)* %9, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc15, align 8, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %cmp17 = icmp eq void (i8*, i8*)* %12, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree19, align 8, !tbaa !10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %14 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 9
  %15 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc21, align 8, !tbaa !8
  %16 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 11
  %17 = load i8*, i8** %opaque, align 8, !tbaa !11
  %call22 = call i8* %15(i8* %17, i32 55768, i32 1)
  %18 = bitcast i8* %call22 to %struct.EState*
  store %struct.EState* %18, %struct.EState** %s, align 8, !tbaa !6
  %19 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %cmp23 = icmp eq %struct.EState* %19, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -3, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %20 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %21 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm26 = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 0
  store %struct.bz_stream* %20, %struct.bz_stream** %strm26, align 8, !tbaa !12
  %22 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 4
  store i32* null, i32** %arr1, align 8, !tbaa !14
  %23 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 5
  store i32* null, i32** %arr2, align 8, !tbaa !15
  %24 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 6
  store i32* null, i32** %ftab, align 8, !tbaa !16
  %25 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %mul = mul nsw i32 100000, %25
  store i32 %mul, i32* %n, align 4, !tbaa !2
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 9
  %27 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc27, align 8, !tbaa !8
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque28 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 11
  %29 = load i8*, i8** %opaque28, align 8, !tbaa !11
  %30 = load i32, i32* %n, align 4, !tbaa !2
  %conv = sext i32 %30 to i64
  %mul29 = mul i64 %conv, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call i8* %27(i8* %29, i32 %conv30, i32 1)
  %31 = bitcast i8* %call31 to i32*
  %32 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr132 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 4
  store i32* %31, i32** %arr132, align 8, !tbaa !14
  %33 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 9
  %34 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc33, align 8, !tbaa !8
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 11
  %36 = load i8*, i8** %opaque34, align 8, !tbaa !11
  %37 = load i32, i32* %n, align 4, !tbaa !2
  %add = add nsw i32 %37, 34
  %conv35 = sext i32 %add to i64
  %mul36 = mul i64 %conv35, 4
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call i8* %34(i8* %36, i32 %conv37, i32 1)
  %38 = bitcast i8* %call38 to i32*
  %39 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr239 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 5
  store i32* %38, i32** %arr239, align 8, !tbaa !15
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 9
  %41 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc40, align 8, !tbaa !8
  %42 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque41 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %42, i32 0, i32 11
  %43 = load i8*, i8** %opaque41, align 8, !tbaa !11
  %call42 = call i8* %41(i8* %43, i32 262148, i32 1)
  %44 = bitcast i8* %call42 to i32*
  %45 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab43 = getelementptr inbounds %struct.EState, %struct.EState* %45, i32 0, i32 6
  store i32* %44, i32** %ftab43, align 8, !tbaa !16
  %46 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr144 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 4
  %47 = load i32*, i32** %arr144, align 8, !tbaa !14
  %cmp45 = icmp eq i32* %47, null
  br i1 %cmp45, label %if.then55, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end25
  %48 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr248 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 5
  %49 = load i32*, i32** %arr248, align 8, !tbaa !15
  %cmp49 = icmp eq i32* %49, null
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %50 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab52 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 6
  %51 = load i32*, i32** %ftab52, align 8, !tbaa !16
  %cmp53 = icmp eq i32* %51, null
  br i1 %cmp53, label %if.then55, label %if.end86

if.then55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false47, %if.end25
  %52 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr156 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 4
  %53 = load i32*, i32** %arr156, align 8, !tbaa !14
  %cmp57 = icmp ne i32* %53, null
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then55
  %54 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree60 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %54, i32 0, i32 10
  %55 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree60, align 8, !tbaa !10
  %56 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque61 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %56, i32 0, i32 11
  %57 = load i8*, i8** %opaque61, align 8, !tbaa !11
  %58 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr162 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 4
  %59 = load i32*, i32** %arr162, align 8, !tbaa !14
  %60 = bitcast i32* %59 to i8*
  call void %55(i8* %57, i8* %60)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then55
  %61 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr264 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 5
  %62 = load i32*, i32** %arr264, align 8, !tbaa !15
  %cmp65 = icmp ne i32* %62, null
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end63
  %63 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %63, i32 0, i32 10
  %64 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree68, align 8, !tbaa !10
  %65 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque69 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %65, i32 0, i32 11
  %66 = load i8*, i8** %opaque69, align 8, !tbaa !11
  %67 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr270 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 5
  %68 = load i32*, i32** %arr270, align 8, !tbaa !15
  %69 = bitcast i32* %68 to i8*
  call void %64(i8* %66, i8* %69)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63
  %70 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab72 = getelementptr inbounds %struct.EState, %struct.EState* %70, i32 0, i32 6
  %71 = load i32*, i32** %ftab72, align 8, !tbaa !16
  %cmp73 = icmp ne i32* %71, null
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %72 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 10
  %73 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree76, align 8, !tbaa !10
  %74 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 11
  %75 = load i8*, i8** %opaque77, align 8, !tbaa !11
  %76 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab78 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 6
  %77 = load i32*, i32** %ftab78, align 8, !tbaa !16
  %78 = bitcast i32* %77 to i8*
  call void %73(i8* %75, i8* %78)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71
  %79 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %cmp80 = icmp ne %struct.EState* %79, null
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end79
  %80 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree83 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 10
  %81 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree83, align 8, !tbaa !10
  %82 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque84 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %82, i32 0, i32 11
  %83 = load i8*, i8** %opaque84, align 8, !tbaa !11
  %84 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %85 = bitcast %struct.EState* %84 to i8*
  call void %81(i8* %83, i8* %85)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79
  store i32 -3, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false51
  %86 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 29
  store i32 0, i32* %blockNo, align 4, !tbaa !17
  %87 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 2
  store i32 2, i32* %state, align 4, !tbaa !18
  %88 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %88, i32 0, i32 1
  store i32 2, i32* %mode, align 8, !tbaa !19
  %89 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %combinedCRC = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 27
  store i32 0, i32* %combinedCRC, align 4, !tbaa !20
  %90 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %91 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %blockSize100k87 = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 30
  store i32 %90, i32* %blockSize100k87, align 8, !tbaa !21
  %92 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %mul88 = mul nsw i32 100000, %92
  %sub = sub nsw i32 %mul88, 19
  %93 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 18
  store i32 %sub, i32* %nblockMAX, align 8, !tbaa !22
  %94 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %95 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %verbosity89 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 28
  store i32 %94, i32* %verbosity89, align 8, !tbaa !23
  %96 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %97 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %workFactor90 = getelementptr inbounds %struct.EState, %struct.EState* %97, i32 0, i32 12
  store i32 %96, i32* %workFactor90, align 8, !tbaa !24
  %98 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr291 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 5
  %99 = load i32*, i32** %arr291, align 8, !tbaa !15
  %100 = bitcast i32* %99 to i8*
  %101 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.EState, %struct.EState* %101, i32 0, i32 9
  store i8* %100, i8** %block, align 8, !tbaa !25
  %102 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr192 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 4
  %103 = load i32*, i32** %arr192, align 8, !tbaa !14
  %104 = bitcast i32* %103 to i16*
  %105 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mtfv = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 10
  store i16* %104, i16** %mtfv, align 8, !tbaa !26
  %106 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %106, i32 0, i32 11
  store i8* null, i8** %zbits, align 8, !tbaa !27
  %107 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr193 = getelementptr inbounds %struct.EState, %struct.EState* %107, i32 0, i32 4
  %108 = load i32*, i32** %arr193, align 8, !tbaa !14
  %109 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ptr = getelementptr inbounds %struct.EState, %struct.EState* %109, i32 0, i32 8
  store i32* %108, i32** %ptr, align 8, !tbaa !28
  %110 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %111 = bitcast %struct.EState* %110 to i8*
  %112 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state94 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %112, i32 0, i32 8
  store i8* %111, i8** %state94, align 8, !tbaa !29
  %113 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4, !tbaa !30
  %114 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 8, !tbaa !31
  %115 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %115, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4, !tbaa !32
  %116 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %116, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 8, !tbaa !33
  %117 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  call void @init_RL(%struct.EState* %117)
  %118 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  call void @prepare_new_block(%struct.EState* %118)
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end85, %if.then24, %if.then8, %if.then
  %119 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %119) #10
  %120 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #10
  %121 = load i32, i32* %retval, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @bz_config_ok() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i8* @default_bzalloc(i8* %opaque, i32 %items, i32 %size) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8, !tbaa !6
  store i32 %items, i32* %items.addr, align 4, !tbaa !2
  store i32 %size, i32* %size.addr, align 4, !tbaa !2
  %0 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load i32, i32* %items.addr, align 4, !tbaa !2
  %2 = load i32, i32* %size.addr, align 4, !tbaa !2
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #10
  store i8* %call, i8** %v, align 8, !tbaa !6
  %3 = load i8*, i8** %v, align 8, !tbaa !6
  %4 = bitcast i8** %v to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #10
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @default_bzfree(i8* %opaque, i8* %addr) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8, !tbaa !6
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %addr.addr, align 8, !tbaa !6
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %addr.addr, align 8, !tbaa !6
  call void @free(i8* %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  store i32 256, i32* %state_in_ch, align 4, !tbaa !34
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 14
  store i32 0, i32* %state_in_len, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_new_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 17
  store i32 0, i32* %nblock, align 4, !tbaa !36
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 19
  store i32 0, i32* %numZ, align 4, !tbaa !37
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 20
  store i32 0, i32* %state_out_pos, align 8, !tbaa !38
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 26
  store i32 -1, i32* %blockCRC, align 8, !tbaa !39
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %5, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 22
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 29
  %10 = load i32, i32* %blockNo, align 4, !tbaa !17
  %inc1 = add nsw i32 %10, 1
  store i32 %inc1, i32* %blockNo, align 4, !tbaa !17
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %action.addr = alloca i32, align 4
  %progress = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  store i32 %action, i32* %action.addr, align 4, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %progress) #10
  %0 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2, i32 0, i32 8
  %3 = load i8*, i8** %state, align 8, !tbaa !29
  %4 = bitcast i8* %3 to %struct.EState*
  store %struct.EState* %4, %struct.EState** %s, align 8, !tbaa !6
  %5 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %cmp1 = icmp eq %struct.EState* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8, !tbaa !12
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp5 = icmp ne %struct.bz_stream* %7, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  br label %preswitch

preswitch:                                        ; preds = %if.then18, %if.then13, %if.end7
  %9 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 1
  %10 = load i32, i32* %mode, align 8, !tbaa !19
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ]

sw.bb:                                            ; preds = %preswitch
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %preswitch
  %11 = load i32, i32* %action.addr, align 4, !tbaa !2
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %call = call zeroext i8 @handle_compress(%struct.bz_stream* %12)
  store i8 %call, i8* %progress, align 1, !tbaa !40
  %13 = load i8, i8* %progress, align 1, !tbaa !40
  %conv = zext i8 %13 to i32
  %tobool = icmp ne i32 %conv, 0
  %14 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 -2
  store i32 %cond, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb8
  %15 = load i32, i32* %action.addr, align 4, !tbaa !2
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %16 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 1
  %17 = load i32, i32* %avail_in, align 8, !tbaa !43
  %18 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 3
  store i32 %17, i32* %avail_in_expect, align 8, !tbaa !44
  %19 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode14 = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 1
  store i32 3, i32* %mode14, align 8, !tbaa !19
  br label %preswitch

if.else15:                                        ; preds = %if.else
  %20 = load i32, i32* %action.addr, align 4, !tbaa !2
  %cmp16 = icmp eq i32 %20, 2
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else15
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %avail_in19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 1
  %22 = load i32, i32* %avail_in19, align 8, !tbaa !43
  %23 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect20 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 3
  store i32 %22, i32* %avail_in_expect20, align 8, !tbaa !44
  %24 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode21 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 1
  store i32 4, i32* %mode21, align 8, !tbaa !19
  br label %preswitch

if.else22:                                        ; preds = %if.else15
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %preswitch
  %25 = load i32, i32* %action.addr, align 4, !tbaa !2
  %cmp24 = icmp ne i32 %25, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb23
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %sw.bb23
  %26 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect28 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 3
  %27 = load i32, i32* %avail_in_expect28, align 8, !tbaa !44
  %28 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm29 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm29, align 8, !tbaa !12
  %avail_in30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 1
  %30 = load i32, i32* %avail_in30, align 8, !tbaa !43
  %cmp31 = icmp ne i32 %27, %30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %31 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %call35 = call zeroext i8 @handle_compress(%struct.bz_stream* %31)
  store i8 %call35, i8* %progress, align 1, !tbaa !40
  %32 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect36 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 3
  %33 = load i32, i32* %avail_in_expect36, align 8, !tbaa !44
  %cmp37 = icmp ugt i32 %33, 0
  br i1 %cmp37, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %34 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call39 = call zeroext i8 @isempty_RL(%struct.EState* %34)
  %tobool40 = icmp ne i8 %call39, 0
  br i1 %tobool40, label %lor.lhs.false41, label %if.then44

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %35 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 20
  %36 = load i32, i32* %state_out_pos, align 8, !tbaa !38
  %37 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 19
  %38 = load i32, i32* %numZ, align 4, !tbaa !37
  %cmp42 = icmp slt i32 %36, %38
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %if.end34
  store i32 2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false41
  %39 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode46 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 1
  store i32 2, i32* %mode46, align 8, !tbaa !19
  store i32 1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %preswitch
  %40 = load i32, i32* %action.addr, align 4, !tbaa !2
  %cmp48 = icmp ne i32 %40, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %sw.bb47
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %sw.bb47
  %41 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect52 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 3
  %42 = load i32, i32* %avail_in_expect52, align 8, !tbaa !44
  %43 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm53 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 0
  %44 = load %struct.bz_stream*, %struct.bz_stream** %strm53, align 8, !tbaa !12
  %avail_in54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 1
  %45 = load i32, i32* %avail_in54, align 8, !tbaa !43
  %cmp55 = icmp ne i32 %42, %45
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end51
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %46 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %call59 = call zeroext i8 @handle_compress(%struct.bz_stream* %46)
  store i8 %call59, i8* %progress, align 1, !tbaa !40
  %47 = load i8, i8* %progress, align 1, !tbaa !40
  %tobool60 = icmp ne i8 %47, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end58
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %48 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect63 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 3
  %49 = load i32, i32* %avail_in_expect63, align 8, !tbaa !44
  %cmp64 = icmp ugt i32 %49, 0
  br i1 %cmp64, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end62
  %50 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call67 = call zeroext i8 @isempty_RL(%struct.EState* %50)
  %tobool68 = icmp ne i8 %call67, 0
  br i1 %tobool68, label %lor.lhs.false69, label %if.then74

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %51 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state_out_pos70 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 20
  %52 = load i32, i32* %state_out_pos70, align 8, !tbaa !38
  %53 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %numZ71 = getelementptr inbounds %struct.EState, %struct.EState* %53, i32 0, i32 19
  %54 = load i32, i32* %numZ71, align 4, !tbaa !37
  %cmp72 = icmp slt i32 %52, %54
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %lor.lhs.false66, %if.end62
  store i32 3, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false69
  %55 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode76 = getelementptr inbounds %struct.EState, %struct.EState* %55, i32 0, i32 1
  store i32 1, i32* %mode76, align 8, !tbaa !19
  store i32 4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %preswitch
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end75, %if.then74, %if.then61, %if.then57, %if.then50, %if.end45, %if.then44, %if.then33, %if.then26, %if.else22, %if.then10, %sw.bb, %if.then6, %if.then2, %if.then
  %56 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %progress) #10
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @handle_compress(%struct.bz_stream* %strm) #0 {
entry:
  %strm.addr = alloca %struct.bz_stream*, align 8
  %progress_in = alloca i8, align 1
  %progress_out = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %progress_in) #10
  store i8 0, i8* %progress_in, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %progress_out) #10
  store i8 0, i8* %progress_out, align 1, !tbaa !40
  %0 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct.EState*
  store %struct.EState* %3, %struct.EState** %s, align 8, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end65, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state1 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 2
  %5 = load i32, i32* %state1, align 4, !tbaa !18
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %while.body
  %6 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call = call zeroext i8 @copy_output_until_stop(%struct.EState* %6)
  %conv = zext i8 %call to i32
  %7 = load i8, i8* %progress_out, align 1, !tbaa !40
  %conv2 = zext i8 %7 to i32
  %or = or i32 %conv2, %conv
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %progress_out, align 1, !tbaa !40
  %8 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 20
  %9 = load i32, i32* %state_out_pos, align 8, !tbaa !38
  %10 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 19
  %11 = load i32, i32* %numZ, align 4, !tbaa !37
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %12 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %12, i32 0, i32 1
  %13 = load i32, i32* %mode, align 8, !tbaa !19
  %cmp7 = icmp eq i32 %13, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 3
  %15 = load i32, i32* %avail_in_expect, align 8, !tbaa !44
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %16 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call12 = call zeroext i8 @isempty_RL(%struct.EState* %16)
  %conv13 = zext i8 %call12 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  br label %while.end

if.end15:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end
  %17 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  call void @prepare_new_block(%struct.EState* %17)
  %18 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state16 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 2
  store i32 2, i32* %state16, align 4, !tbaa !18
  %19 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode17 = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 1
  %20 = load i32, i32* %mode17, align 8, !tbaa !19
  %cmp18 = icmp eq i32 %20, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.end29

land.lhs.true20:                                  ; preds = %if.end15
  %21 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect21 = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 3
  %22 = load i32, i32* %avail_in_expect21, align 8, !tbaa !44
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %23 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call25 = call zeroext i8 @isempty_RL(%struct.EState* %23)
  %conv26 = zext i8 %call25 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true24
  br label %while.end

if.end29:                                         ; preds = %land.lhs.true24, %land.lhs.true20, %if.end15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %24 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state31 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 2
  %25 = load i32, i32* %state31, align 4, !tbaa !18
  %cmp32 = icmp eq i32 %25, 2
  br i1 %cmp32, label %if.then34, label %if.end65

if.then34:                                        ; preds = %if.end30
  %26 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %call35 = call zeroext i8 @copy_input_until_stop(%struct.EState* %26)
  %conv36 = zext i8 %call35 to i32
  %27 = load i8, i8* %progress_in, align 1, !tbaa !40
  %conv37 = zext i8 %27 to i32
  %or38 = or i32 %conv37, %conv36
  %conv39 = trunc i32 %or38 to i8
  store i8 %conv39, i8* %progress_in, align 1, !tbaa !40
  %28 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode40 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 1
  %29 = load i32, i32* %mode40, align 8, !tbaa !19
  %cmp41 = icmp ne i32 %29, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %if.then34
  %30 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %avail_in_expect44 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 3
  %31 = load i32, i32* %avail_in_expect44, align 8, !tbaa !44
  %cmp45 = icmp eq i32 %31, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %32 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  call void @flush_RL(%struct.EState* %32)
  %33 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %34 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %mode48 = getelementptr inbounds %struct.EState, %struct.EState* %34, i32 0, i32 1
  %35 = load i32, i32* %mode48, align 8, !tbaa !19
  %cmp49 = icmp eq i32 %35, 4
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = trunc i32 %conv50 to i8
  call void @BZ2_compressBlock(%struct.EState* %33, i8 zeroext %conv51)
  %36 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state52 = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 2
  store i32 1, i32* %state52, align 4, !tbaa !18
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true43, %if.then34
  %37 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock, align 4, !tbaa !36
  %39 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 18
  %40 = load i32, i32* %nblockMAX, align 8, !tbaa !22
  %cmp53 = icmp sge i32 %38, %40
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else
  %41 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  call void @BZ2_compressBlock(%struct.EState* %41, i8 zeroext 0)
  %42 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %state56 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 2
  store i32 1, i32* %state56, align 4, !tbaa !18
  br label %if.end63

if.else57:                                        ; preds = %if.else
  %43 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm58 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 0
  %44 = load %struct.bz_stream*, %struct.bz_stream** %strm58, align 8, !tbaa !12
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 1
  %45 = load i32, i32* %avail_in, align 8, !tbaa !43
  %cmp59 = icmp eq i32 %45, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else57
  br label %while.end

if.end62:                                         ; preds = %if.else57
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then47
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end30
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %if.then61, %if.then28, %if.then14, %if.then6
  %46 = load i8, i8* %progress_in, align 1, !tbaa !40
  %conv66 = zext i8 %46 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %47 = load i8, i8* %progress_out, align 1, !tbaa !40
  %conv68 = zext i8 %47 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %48 = phi i1 [ true, %while.end ], [ %tobool69, %lor.rhs ]
  %lor.ext = zext i1 %48 to i32
  %conv70 = trunc i32 %lor.ext to i8
  %49 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %progress_out) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %progress_in) #10
  ret i8 %conv70
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @isempty_RL(%struct.EState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4, !tbaa !34
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 14
  %3 = load i32, i32* %state_in_len, align 8, !tbaa !35
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.EState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %0 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2, i32 0, i32 8
  %3 = load i8*, i8** %state, align 8, !tbaa !29
  %4 = bitcast i8* %3 to %struct.EState*
  store %struct.EState* %4, %struct.EState** %s, align 8, !tbaa !6
  %5 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %cmp1 = icmp eq %struct.EState* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8, !tbaa !12
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp5 = icmp ne %struct.bz_stream* %7, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 4
  %10 = load i32*, i32** %arr1, align 8, !tbaa !14
  %cmp8 = icmp ne i32* %10, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 11
  %14 = load i8*, i8** %opaque, align 8, !tbaa !11
  %15 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr110 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 4
  %16 = load i32*, i32** %arr110, align 8, !tbaa !14
  %17 = bitcast i32* %16 to i8*
  call void %12(i8* %14, i8* %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %18 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 5
  %19 = load i32*, i32** %arr2, align 8, !tbaa !15
  %cmp12 = icmp ne i32* %19, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %20 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %20, i32 0, i32 10
  %21 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8, !tbaa !10
  %22 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %22, i32 0, i32 11
  %23 = load i8*, i8** %opaque15, align 8, !tbaa !11
  %24 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %arr216 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 5
  %25 = load i32*, i32** %arr216, align 8, !tbaa !15
  %26 = bitcast i32* %25 to i8*
  call void %21(i8* %23, i8* %26)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %27 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 6
  %28 = load i32*, i32** %ftab, align 8, !tbaa !16
  %cmp18 = icmp ne i32* %28, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %30 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8, !tbaa !10
  %31 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 11
  %32 = load i8*, i8** %opaque21, align 8, !tbaa !11
  %33 = load %struct.EState*, %struct.EState** %s, align 8, !tbaa !6
  %ftab22 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 6
  %34 = load i32*, i32** %ftab22, align 8, !tbaa !16
  %35 = bitcast i32* %34 to i8*
  call void %30(i8* %32, i8* %35)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %36 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 10
  %37 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8, !tbaa !10
  %38 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %38, i32 0, i32 11
  %39 = load i8*, i8** %opaque25, align 8, !tbaa !11
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 8
  %41 = load i8*, i8** %state26, align 8, !tbaa !29
  call void %37(i8* %39, i8* %41)
  %42 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %42, i32 0, i32 8
  store i8* null, i8** %state27, align 8, !tbaa !29
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %43 = bitcast %struct.EState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #10
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca %struct.DState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  store i32 %small, i32* %small.addr, align 4, !tbaa !2
  %0 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp3 = icmp ne i32 %2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp4 = icmp ne i32 %3, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %4, 0
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %5 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp8 = icmp sgt i32 %5, 4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %6, i32 0, i32 9
  %7 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !8
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %7, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc13, align 8, !tbaa !8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %9 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 10
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %cmp15 = icmp eq void (i8*, i8*)* %10, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree17 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree17, align 8, !tbaa !10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzalloc19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 9
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc19, align 8, !tbaa !8
  %14 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 11
  %15 = load i8*, i8** %opaque, align 8, !tbaa !11
  %call20 = call i8* %13(i8* %15, i32 64144, i32 1)
  %16 = bitcast i8* %call20 to %struct.DState*
  store %struct.DState* %16, %struct.DState** %s, align 8, !tbaa !6
  %17 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %cmp21 = icmp eq %struct.DState* %17, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -3, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %19 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 0
  store %struct.bz_stream* %18, %struct.bz_stream** %strm24, align 8, !tbaa !46
  %20 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %21 = bitcast %struct.DState* %20 to i8*
  %22 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %22, i32 0, i32 8
  store i8* %21, i8** %state, align 8, !tbaa !29
  %23 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state25 = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 1
  store i32 10, i32* %state25, align 8, !tbaa !48
  %24 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 8
  store i32 0, i32* %bsLive, align 4, !tbaa !49
  %25 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 7
  store i32 0, i32* %bsBuff, align 8, !tbaa !50
  %26 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 26
  store i32 0, i32* %calculatedCombinedCRC, align 4, !tbaa !51
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4, !tbaa !30
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 8, !tbaa !31
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4, !tbaa !32
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 8, !tbaa !33
  %31 = load i32, i32* %small.addr, align 4, !tbaa !2
  %conv = trunc i32 %31 to i8
  %32 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 10
  store i8 %conv, i8* %smallDecompress, align 4, !tbaa !52
  %33 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 22
  store i8* null, i8** %ll4, align 8, !tbaa !53
  %34 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 21
  store i16* null, i16** %ll16, align 8, !tbaa !54
  %35 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 20
  store i32* null, i32** %tt, align 8, !tbaa !55
  %36 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 11
  store i32 0, i32* %currBlockNo, align 8, !tbaa !56
  %37 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %38 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %verbosity26 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 12
  store i32 %37, i32* %verbosity26, align 4, !tbaa !57
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then9, %if.then5, %if.then1, %if.then
  %39 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #10
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @BZ2_indexIntoF(i32 %indx, i32* %cftab) #4 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca i32*, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !2
  store i32* %cftab, i32** %cftab.addr, align 8, !tbaa !6
  %0 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast i32* %na to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #10
  store i32 0, i32* %nb, align 4, !tbaa !2
  store i32 256, i32* %na, align 4, !tbaa !2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i32, i32* %nb, align 4, !tbaa !2
  %4 = load i32, i32* %na, align 4, !tbaa !2
  %add = add nsw i32 %3, %4
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4, !tbaa !2
  %5 = load i32, i32* %indx.addr, align 4, !tbaa !2
  %6 = load i32*, i32** %cftab.addr, align 8, !tbaa !6
  %7 = load i32, i32* %mid, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %cmp = icmp sge i32 %5, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %mid, align 4, !tbaa !2
  store i32 %9, i32* %nb, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load i32, i32* %mid, align 4, !tbaa !2
  store i32 %10, i32* %na, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i32, i32* %na, align 4, !tbaa !2
  %12 = load i32, i32* %nb, align 4, !tbaa !2
  %sub = sub nsw i32 %11, %12
  %cmp1 = icmp ne i32 %sub, 1
  br i1 %cmp1, label %do.body, label %do.end, !llvm.loop !58

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %nb, align 4, !tbaa !2
  %14 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #10
  %15 = bitcast i32* %na to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #10
  %16 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #10
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %corrupt = alloca i8, align 1
  %s = alloca %struct.DState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %corrupt) #10
  %0 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end:                                           ; preds = %entry
  %2 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2, i32 0, i32 8
  %3 = load i8*, i8** %state, align 8, !tbaa !29
  %4 = bitcast i8* %3 to %struct.DState*
  store %struct.DState* %4, %struct.DState** %s, align 8, !tbaa !6
  %5 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %cmp1 = icmp eq %struct.DState* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end3:                                          ; preds = %if.end
  %6 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8, !tbaa !46
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp5 = icmp ne %struct.bz_stream* %7, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end7:                                          ; preds = %if.end3
  br label %while.cond

while.cond:                                       ; preds = %if.end70, %if.end7
  br label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state8 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 1
  %10 = load i32, i32* %state8, align 8, !tbaa !48
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end11:                                         ; preds = %while.body
  %11 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state12 = getelementptr inbounds %struct.DState, %struct.DState* %11, i32 0, i32 1
  %12 = load i32, i32* %state12, align 8, !tbaa !48
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %if.then14, label %if.end47

if.then14:                                        ; preds = %if.end11
  %13 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %13, i32 0, i32 10
  %14 = load i8, i8* %smallDecompress, align 4, !tbaa !52
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %15 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %call = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %15)
  store i8 %call, i8* %corrupt, align 1, !tbaa !40
  br label %if.end17

if.else:                                          ; preds = %if.then14
  %16 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %call16 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %16)
  store i8 %call16, i8* %corrupt, align 1, !tbaa !40
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %17 = load i8, i8* %corrupt, align 1, !tbaa !40
  %tobool18 = icmp ne i8 %17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end20:                                         ; preds = %if.end17
  %18 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 17
  %19 = load i32, i32* %nblock_used, align 4, !tbaa !59
  %20 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 51
  %21 = load i32, i32* %save_nblock, align 8, !tbaa !60
  %add = add nsw i32 %21, 1
  %cmp21 = icmp eq i32 %19, %add
  br i1 %cmp21, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.end20
  %22 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 3
  %23 = load i32, i32* %state_out_len, align 8, !tbaa !61
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then23, label %if.else45

if.then23:                                        ; preds = %land.lhs.true
  %24 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 25
  %25 = load i32, i32* %calculatedBlockCRC, align 8, !tbaa !62
  %neg = xor i32 %25, -1
  %26 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedBlockCRC24 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 25
  store i32 %neg, i32* %calculatedBlockCRC24, align 8, !tbaa !62
  %27 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 12
  %28 = load i32, i32* %verbosity, align 4, !tbaa !57
  %cmp25 = icmp sge i32 %28, 3
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %30 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %30, i32 0, i32 23
  %31 = load i32, i32* %storedBlockCRC, align 8, !tbaa !63
  %32 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedBlockCRC27 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 25
  %33 = load i32, i32* %calculatedBlockCRC27, align 8, !tbaa !62
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  %34 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %verbosity30 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 12
  %35 = load i32, i32* %verbosity30, align 4, !tbaa !57
  %cmp31 = icmp sge i32 %35, 2
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %37 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedBlockCRC35 = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 25
  %38 = load i32, i32* %calculatedBlockCRC35, align 8, !tbaa !62
  %39 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %storedBlockCRC36 = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 23
  %40 = load i32, i32* %storedBlockCRC36, align 8, !tbaa !63
  %cmp37 = icmp ne i32 %38, %40
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 -4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end39:                                         ; preds = %if.end34
  %41 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 26
  %42 = load i32, i32* %calculatedCombinedCRC, align 4, !tbaa !51
  %shl = shl i32 %42, 1
  %43 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC40 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 26
  %44 = load i32, i32* %calculatedCombinedCRC40, align 4, !tbaa !51
  %shr = lshr i32 %44, 31
  %or = or i32 %shl, %shr
  %45 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC41 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 26
  store i32 %or, i32* %calculatedCombinedCRC41, align 4, !tbaa !51
  %46 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedBlockCRC42 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 25
  %47 = load i32, i32* %calculatedBlockCRC42, align 8, !tbaa !62
  %48 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC43 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 26
  %49 = load i32, i32* %calculatedCombinedCRC43, align 4, !tbaa !51
  %xor = xor i32 %49, %47
  store i32 %xor, i32* %calculatedCombinedCRC43, align 4, !tbaa !51
  %50 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state44 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 1
  store i32 14, i32* %state44, align 8, !tbaa !48
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true, %if.end20
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup71

if.end46:                                         ; preds = %if.end39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end11
  %51 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state48 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 1
  %52 = load i32, i32* %state48, align 8, !tbaa !48
  %cmp49 = icmp sge i32 %52, 10
  br i1 %cmp49, label %if.then50, label %if.end70

if.then50:                                        ; preds = %if.end47
  %53 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #10
  %54 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %call51 = call i32 @BZ2_decompress(%struct.DState* %54)
  store i32 %call51, i32* %r, align 4, !tbaa !2
  %55 = load i32, i32* %r, align 4, !tbaa !2
  %cmp52 = icmp eq i32 %55, 4
  br i1 %cmp52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %if.then50
  %56 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %verbosity54 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 12
  %57 = load i32, i32* %verbosity54, align 4, !tbaa !57
  %cmp55 = icmp sge i32 %57, 3
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then53
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %59 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 24
  %60 = load i32, i32* %storedCombinedCRC, align 4, !tbaa !64
  %61 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC57 = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 26
  %62 = load i32, i32* %calculatedCombinedCRC57, align 4, !tbaa !51
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %62)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53
  %63 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %calculatedCombinedCRC60 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 26
  %64 = load i32, i32* %calculatedCombinedCRC60, align 4, !tbaa !51
  %65 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %storedCombinedCRC61 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 24
  %66 = load i32, i32* %storedCombinedCRC61, align 4, !tbaa !64
  %cmp62 = icmp ne i32 %64, %66
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  store i32 -4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %67 = load i32, i32* %r, align 4, !tbaa !2
  store i32 %67, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.then50
  %68 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %state66 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 1
  %69 = load i32, i32* %state66, align 8, !tbaa !48
  %cmp67 = icmp ne i32 %69, 2
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  %70 = load i32, i32* %r, align 4, !tbaa !2
  store i32 %70, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then68, %if.end64, %if.then63
  %71 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #10
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end70

if.end70:                                         ; preds = %cleanup.cont, %if.end47
  br label %while.cond, !llvm.loop !65

cleanup71:                                        ; preds = %cleanup, %if.else45, %if.then38, %if.then19, %if.then10, %if.then6, %if.then2, %if.then
  %72 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %corrupt) #10
  %73 = load i32, i32* %retval, align 4
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %k1) #10
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 4, !tbaa !66
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end328, %if.then229, %if.then223, %if.then161, %if.then155, %if.then93, %if.then87, %if.then
  br label %while.body

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end26, %while.body
  br label %while.body2

while.body2:                                      ; preds = %while.cond1
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !46
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 8, !tbaa !67
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 8, !tbaa !61
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 4, !tbaa !68
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8, !tbaa !46
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8, !tbaa !69
  store i8 %8, i8* %11, align 1, !tbaa !40
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 8, !tbaa !62
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 8, !tbaa !62
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 4, !tbaa !68
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 8, !tbaa !62
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 8, !tbaa !61
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 8, !tbaa !61
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8, !tbaa !46
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8, !tbaa !69
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8, !tbaa !69
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8, !tbaa !46
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 8, !tbaa !67
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 8, !tbaa !67
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8, !tbaa !46
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4, !tbaa !32
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4, !tbaa !32
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8, !tbaa !46
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4, !tbaa !32
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8, !tbaa !46
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 8, !tbaa !33
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 8, !tbaa !33
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.cond1, !llvm.loop !70

while.end:                                        ; preds = %if.then5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4, !tbaa !59
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 8, !tbaa !60
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4, !tbaa !59
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 8, !tbaa !60
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 8, !tbaa !61
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 8, !tbaa !71
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 4, !tbaa !68
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 14
  %50 = load i32, i32* %tPos, align 4, !tbaa !72
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i64 0, i64 0
  %call = call i32 @BZ2_indexIntoF(i32 %50, i32* %arraydecay)
  %conv41 = trunc i32 %call to i8
  store i8 %conv41, i8* %k1, align 1, !tbaa !40
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 21
  %53 = load i16*, i16** %ll16, align 8, !tbaa !54
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos42 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  %55 = load i32, i32* %tPos42, align 4, !tbaa !72
  %idxprom43 = zext i32 %55 to i64
  %arrayidx44 = getelementptr inbounds i16, i16* %53, i64 %idxprom43
  %56 = load i16, i16* %arrayidx44, align 2, !tbaa !73
  %conv45 = zext i16 %56 to i32
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 22
  %58 = load i8*, i8** %ll4, align 8, !tbaa !53
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 14
  %60 = load i32, i32* %tPos46, align 4, !tbaa !72
  %shr47 = lshr i32 %60, 1
  %idxprom48 = zext i32 %shr47 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %58, i64 %idxprom48
  %61 = load i8, i8* %arrayidx49, align 1, !tbaa !40
  %conv50 = zext i8 %61 to i32
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos51 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 14
  %63 = load i32, i32* %tPos51, align 4, !tbaa !72
  %shl52 = shl i32 %63, 2
  %and = and i32 %shl52, 4
  %shr53 = lshr i32 %conv50, %and
  %and54 = and i32 %shr53, 15
  %shl55 = shl i32 %and54, 16
  %or = or i32 %conv45, %shl55
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos56 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 14
  store i32 %or, i32* %tPos56, align 4, !tbaa !72
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 5
  %66 = load i32, i32* %rNToGo, align 8, !tbaa !75
  %cmp57 = icmp eq i32 %66, 0
  br i1 %cmp57, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end37
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos, align 4, !tbaa !76
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom60
  %69 = load i32, i32* %arrayidx61, align 4, !tbaa !2
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo62 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  store i32 %69, i32* %rNToGo62, align 8, !tbaa !75
  %71 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos63 = getelementptr inbounds %struct.DState, %struct.DState* %71, i32 0, i32 6
  %72 = load i32, i32* %rTPos63, align 4, !tbaa !76
  %inc64 = add nsw i32 %72, 1
  store i32 %inc64, i32* %rTPos63, align 4, !tbaa !76
  %73 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos65 = getelementptr inbounds %struct.DState, %struct.DState* %73, i32 0, i32 6
  %74 = load i32, i32* %rTPos65, align 4, !tbaa !76
  %cmp66 = icmp eq i32 %74, 512
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then59
  %75 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos69 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 6
  store i32 0, i32* %rTPos69, align 4, !tbaa !76
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end37
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo72 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 5
  %77 = load i32, i32* %rNToGo72, align 8, !tbaa !75
  %dec73 = add nsw i32 %77, -1
  store i32 %dec73, i32* %rNToGo72, align 8, !tbaa !75
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo74 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 5
  %79 = load i32, i32* %rNToGo74, align 8, !tbaa !75
  %cmp75 = icmp eq i32 %79, 1
  %80 = zext i1 %cmp75 to i64
  %cond = select i1 %cmp75, i32 1, i32 0
  %81 = load i8, i8* %k1, align 1, !tbaa !40
  %conv77 = zext i8 %81 to i32
  %xor78 = xor i32 %conv77, %cond
  %conv79 = trunc i32 %xor78 to i8
  store i8 %conv79, i8* %k1, align 1, !tbaa !40
  %82 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used80 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 17
  %83 = load i32, i32* %nblock_used80, align 4, !tbaa !59
  %inc81 = add nsw i32 %83, 1
  store i32 %inc81, i32* %nblock_used80, align 4, !tbaa !59
  %84 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used82 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 17
  %85 = load i32, i32* %nblock_used82, align 4, !tbaa !59
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock83 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 51
  %87 = load i32, i32* %save_nblock83, align 8, !tbaa !60
  %add84 = add nsw i32 %87, 1
  %cmp85 = icmp eq i32 %85, %add84
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end71
  br label %while.cond, !llvm.loop !77

if.end88:                                         ; preds = %if.end71
  %88 = load i8, i8* %k1, align 1, !tbaa !40
  %conv89 = zext i8 %88 to i32
  %89 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k090 = getelementptr inbounds %struct.DState, %struct.DState* %89, i32 0, i32 15
  %90 = load i32, i32* %k090, align 8, !tbaa !71
  %cmp91 = icmp ne i32 %conv89, %90
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end88
  %91 = load i8, i8* %k1, align 1, !tbaa !40
  %conv94 = zext i8 %91 to i32
  %92 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k095 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 15
  store i32 %conv94, i32* %k095, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !77

if.end96:                                         ; preds = %if.end88
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len97 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 3
  store i32 2, i32* %state_out_len97, align 8, !tbaa !61
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos98 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 14
  %95 = load i32, i32* %tPos98, align 4, !tbaa !72
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab99 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 18
  %arraydecay100 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab99, i64 0, i64 0
  %call101 = call i32 @BZ2_indexIntoF(i32 %95, i32* %arraydecay100)
  %conv102 = trunc i32 %call101 to i8
  store i8 %conv102, i8* %k1, align 1, !tbaa !40
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16103 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 21
  %98 = load i16*, i16** %ll16103, align 8, !tbaa !54
  %99 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos104 = getelementptr inbounds %struct.DState, %struct.DState* %99, i32 0, i32 14
  %100 = load i32, i32* %tPos104, align 4, !tbaa !72
  %idxprom105 = zext i32 %100 to i64
  %arrayidx106 = getelementptr inbounds i16, i16* %98, i64 %idxprom105
  %101 = load i16, i16* %arrayidx106, align 2, !tbaa !73
  %conv107 = zext i16 %101 to i32
  %102 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4108 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 22
  %103 = load i8*, i8** %ll4108, align 8, !tbaa !53
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos109 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 14
  %105 = load i32, i32* %tPos109, align 4, !tbaa !72
  %shr110 = lshr i32 %105, 1
  %idxprom111 = zext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds i8, i8* %103, i64 %idxprom111
  %106 = load i8, i8* %arrayidx112, align 1, !tbaa !40
  %conv113 = zext i8 %106 to i32
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos114 = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 14
  %108 = load i32, i32* %tPos114, align 4, !tbaa !72
  %shl115 = shl i32 %108, 2
  %and116 = and i32 %shl115, 4
  %shr117 = lshr i32 %conv113, %and116
  %and118 = and i32 %shr117, 15
  %shl119 = shl i32 %and118, 16
  %or120 = or i32 %conv107, %shl119
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos121 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 14
  store i32 %or120, i32* %tPos121, align 4, !tbaa !72
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo122 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 5
  %111 = load i32, i32* %rNToGo122, align 8, !tbaa !75
  %cmp123 = icmp eq i32 %111, 0
  br i1 %cmp123, label %if.then125, label %if.end138

if.then125:                                       ; preds = %if.end96
  %112 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos126 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 6
  %113 = load i32, i32* %rTPos126, align 4, !tbaa !76
  %idxprom127 = sext i32 %113 to i64
  %arrayidx128 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom127
  %114 = load i32, i32* %arrayidx128, align 4, !tbaa !2
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo129 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 5
  store i32 %114, i32* %rNToGo129, align 8, !tbaa !75
  %116 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos130 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 6
  %117 = load i32, i32* %rTPos130, align 4, !tbaa !76
  %inc131 = add nsw i32 %117, 1
  store i32 %inc131, i32* %rTPos130, align 4, !tbaa !76
  %118 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos132 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 6
  %119 = load i32, i32* %rTPos132, align 4, !tbaa !76
  %cmp133 = icmp eq i32 %119, 512
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then125
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos136 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 6
  store i32 0, i32* %rTPos136, align 4, !tbaa !76
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then125
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end96
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo139 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 5
  %122 = load i32, i32* %rNToGo139, align 8, !tbaa !75
  %dec140 = add nsw i32 %122, -1
  store i32 %dec140, i32* %rNToGo139, align 8, !tbaa !75
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo141 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 5
  %124 = load i32, i32* %rNToGo141, align 8, !tbaa !75
  %cmp142 = icmp eq i32 %124, 1
  %125 = zext i1 %cmp142 to i64
  %cond144 = select i1 %cmp142, i32 1, i32 0
  %126 = load i8, i8* %k1, align 1, !tbaa !40
  %conv145 = zext i8 %126 to i32
  %xor146 = xor i32 %conv145, %cond144
  %conv147 = trunc i32 %xor146 to i8
  store i8 %conv147, i8* %k1, align 1, !tbaa !40
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used148 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 17
  %128 = load i32, i32* %nblock_used148, align 4, !tbaa !59
  %inc149 = add nsw i32 %128, 1
  store i32 %inc149, i32* %nblock_used148, align 4, !tbaa !59
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used150 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 17
  %130 = load i32, i32* %nblock_used150, align 4, !tbaa !59
  %131 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock151 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 51
  %132 = load i32, i32* %save_nblock151, align 8, !tbaa !60
  %add152 = add nsw i32 %132, 1
  %cmp153 = icmp eq i32 %130, %add152
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end138
  br label %while.cond, !llvm.loop !77

if.end156:                                        ; preds = %if.end138
  %133 = load i8, i8* %k1, align 1, !tbaa !40
  %conv157 = zext i8 %133 to i32
  %134 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0158 = getelementptr inbounds %struct.DState, %struct.DState* %134, i32 0, i32 15
  %135 = load i32, i32* %k0158, align 8, !tbaa !71
  %cmp159 = icmp ne i32 %conv157, %135
  br i1 %cmp159, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end156
  %136 = load i8, i8* %k1, align 1, !tbaa !40
  %conv162 = zext i8 %136 to i32
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0163 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 15
  store i32 %conv162, i32* %k0163, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !77

if.end164:                                        ; preds = %if.end156
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len165 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 3
  store i32 3, i32* %state_out_len165, align 8, !tbaa !61
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos166 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 14
  %140 = load i32, i32* %tPos166, align 4, !tbaa !72
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab167 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 18
  %arraydecay168 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab167, i64 0, i64 0
  %call169 = call i32 @BZ2_indexIntoF(i32 %140, i32* %arraydecay168)
  %conv170 = trunc i32 %call169 to i8
  store i8 %conv170, i8* %k1, align 1, !tbaa !40
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16171 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 21
  %143 = load i16*, i16** %ll16171, align 8, !tbaa !54
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos172 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 14
  %145 = load i32, i32* %tPos172, align 4, !tbaa !72
  %idxprom173 = zext i32 %145 to i64
  %arrayidx174 = getelementptr inbounds i16, i16* %143, i64 %idxprom173
  %146 = load i16, i16* %arrayidx174, align 2, !tbaa !73
  %conv175 = zext i16 %146 to i32
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4176 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 22
  %148 = load i8*, i8** %ll4176, align 8, !tbaa !53
  %149 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos177 = getelementptr inbounds %struct.DState, %struct.DState* %149, i32 0, i32 14
  %150 = load i32, i32* %tPos177, align 4, !tbaa !72
  %shr178 = lshr i32 %150, 1
  %idxprom179 = zext i32 %shr178 to i64
  %arrayidx180 = getelementptr inbounds i8, i8* %148, i64 %idxprom179
  %151 = load i8, i8* %arrayidx180, align 1, !tbaa !40
  %conv181 = zext i8 %151 to i32
  %152 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos182 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 14
  %153 = load i32, i32* %tPos182, align 4, !tbaa !72
  %shl183 = shl i32 %153, 2
  %and184 = and i32 %shl183, 4
  %shr185 = lshr i32 %conv181, %and184
  %and186 = and i32 %shr185, 15
  %shl187 = shl i32 %and186, 16
  %or188 = or i32 %conv175, %shl187
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos189 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 14
  store i32 %or188, i32* %tPos189, align 4, !tbaa !72
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo190 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 5
  %156 = load i32, i32* %rNToGo190, align 8, !tbaa !75
  %cmp191 = icmp eq i32 %156, 0
  br i1 %cmp191, label %if.then193, label %if.end206

if.then193:                                       ; preds = %if.end164
  %157 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos194 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 6
  %158 = load i32, i32* %rTPos194, align 4, !tbaa !76
  %idxprom195 = sext i32 %158 to i64
  %arrayidx196 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom195
  %159 = load i32, i32* %arrayidx196, align 4, !tbaa !2
  %160 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo197 = getelementptr inbounds %struct.DState, %struct.DState* %160, i32 0, i32 5
  store i32 %159, i32* %rNToGo197, align 8, !tbaa !75
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos198 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 6
  %162 = load i32, i32* %rTPos198, align 4, !tbaa !76
  %inc199 = add nsw i32 %162, 1
  store i32 %inc199, i32* %rTPos198, align 4, !tbaa !76
  %163 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos200 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 6
  %164 = load i32, i32* %rTPos200, align 4, !tbaa !76
  %cmp201 = icmp eq i32 %164, 512
  br i1 %cmp201, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.then193
  %165 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos204 = getelementptr inbounds %struct.DState, %struct.DState* %165, i32 0, i32 6
  store i32 0, i32* %rTPos204, align 4, !tbaa !76
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.then193
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end164
  %166 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo207 = getelementptr inbounds %struct.DState, %struct.DState* %166, i32 0, i32 5
  %167 = load i32, i32* %rNToGo207, align 8, !tbaa !75
  %dec208 = add nsw i32 %167, -1
  store i32 %dec208, i32* %rNToGo207, align 8, !tbaa !75
  %168 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo209 = getelementptr inbounds %struct.DState, %struct.DState* %168, i32 0, i32 5
  %169 = load i32, i32* %rNToGo209, align 8, !tbaa !75
  %cmp210 = icmp eq i32 %169, 1
  %170 = zext i1 %cmp210 to i64
  %cond212 = select i1 %cmp210, i32 1, i32 0
  %171 = load i8, i8* %k1, align 1, !tbaa !40
  %conv213 = zext i8 %171 to i32
  %xor214 = xor i32 %conv213, %cond212
  %conv215 = trunc i32 %xor214 to i8
  store i8 %conv215, i8* %k1, align 1, !tbaa !40
  %172 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used216 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 17
  %173 = load i32, i32* %nblock_used216, align 4, !tbaa !59
  %inc217 = add nsw i32 %173, 1
  store i32 %inc217, i32* %nblock_used216, align 4, !tbaa !59
  %174 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used218 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 17
  %175 = load i32, i32* %nblock_used218, align 4, !tbaa !59
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock219 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 51
  %177 = load i32, i32* %save_nblock219, align 8, !tbaa !60
  %add220 = add nsw i32 %177, 1
  %cmp221 = icmp eq i32 %175, %add220
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end206
  br label %while.cond, !llvm.loop !77

if.end224:                                        ; preds = %if.end206
  %178 = load i8, i8* %k1, align 1, !tbaa !40
  %conv225 = zext i8 %178 to i32
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0226 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 15
  %180 = load i32, i32* %k0226, align 8, !tbaa !71
  %cmp227 = icmp ne i32 %conv225, %180
  br i1 %cmp227, label %if.then229, label %if.end232

if.then229:                                       ; preds = %if.end224
  %181 = load i8, i8* %k1, align 1, !tbaa !40
  %conv230 = zext i8 %181 to i32
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0231 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 15
  store i32 %conv230, i32* %k0231, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !77

if.end232:                                        ; preds = %if.end224
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos233 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 14
  %184 = load i32, i32* %tPos233, align 4, !tbaa !72
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab234 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 18
  %arraydecay235 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab234, i64 0, i64 0
  %call236 = call i32 @BZ2_indexIntoF(i32 %184, i32* %arraydecay235)
  %conv237 = trunc i32 %call236 to i8
  store i8 %conv237, i8* %k1, align 1, !tbaa !40
  %186 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16238 = getelementptr inbounds %struct.DState, %struct.DState* %186, i32 0, i32 21
  %187 = load i16*, i16** %ll16238, align 8, !tbaa !54
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos239 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 14
  %189 = load i32, i32* %tPos239, align 4, !tbaa !72
  %idxprom240 = zext i32 %189 to i64
  %arrayidx241 = getelementptr inbounds i16, i16* %187, i64 %idxprom240
  %190 = load i16, i16* %arrayidx241, align 2, !tbaa !73
  %conv242 = zext i16 %190 to i32
  %191 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4243 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 22
  %192 = load i8*, i8** %ll4243, align 8, !tbaa !53
  %193 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos244 = getelementptr inbounds %struct.DState, %struct.DState* %193, i32 0, i32 14
  %194 = load i32, i32* %tPos244, align 4, !tbaa !72
  %shr245 = lshr i32 %194, 1
  %idxprom246 = zext i32 %shr245 to i64
  %arrayidx247 = getelementptr inbounds i8, i8* %192, i64 %idxprom246
  %195 = load i8, i8* %arrayidx247, align 1, !tbaa !40
  %conv248 = zext i8 %195 to i32
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos249 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 14
  %197 = load i32, i32* %tPos249, align 4, !tbaa !72
  %shl250 = shl i32 %197, 2
  %and251 = and i32 %shl250, 4
  %shr252 = lshr i32 %conv248, %and251
  %and253 = and i32 %shr252, 15
  %shl254 = shl i32 %and253, 16
  %or255 = or i32 %conv242, %shl254
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos256 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 14
  store i32 %or255, i32* %tPos256, align 4, !tbaa !72
  %199 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo257 = getelementptr inbounds %struct.DState, %struct.DState* %199, i32 0, i32 5
  %200 = load i32, i32* %rNToGo257, align 8, !tbaa !75
  %cmp258 = icmp eq i32 %200, 0
  br i1 %cmp258, label %if.then260, label %if.end273

if.then260:                                       ; preds = %if.end232
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos261 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 6
  %202 = load i32, i32* %rTPos261, align 4, !tbaa !76
  %idxprom262 = sext i32 %202 to i64
  %arrayidx263 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom262
  %203 = load i32, i32* %arrayidx263, align 4, !tbaa !2
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo264 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 5
  store i32 %203, i32* %rNToGo264, align 8, !tbaa !75
  %205 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos265 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 6
  %206 = load i32, i32* %rTPos265, align 4, !tbaa !76
  %inc266 = add nsw i32 %206, 1
  store i32 %inc266, i32* %rTPos265, align 4, !tbaa !76
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos267 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 6
  %208 = load i32, i32* %rTPos267, align 4, !tbaa !76
  %cmp268 = icmp eq i32 %208, 512
  br i1 %cmp268, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.then260
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos271 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 6
  store i32 0, i32* %rTPos271, align 4, !tbaa !76
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.then260
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end232
  %210 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo274 = getelementptr inbounds %struct.DState, %struct.DState* %210, i32 0, i32 5
  %211 = load i32, i32* %rNToGo274, align 8, !tbaa !75
  %dec275 = add nsw i32 %211, -1
  store i32 %dec275, i32* %rNToGo274, align 8, !tbaa !75
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo276 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 5
  %213 = load i32, i32* %rNToGo276, align 8, !tbaa !75
  %cmp277 = icmp eq i32 %213, 1
  %214 = zext i1 %cmp277 to i64
  %cond279 = select i1 %cmp277, i32 1, i32 0
  %215 = load i8, i8* %k1, align 1, !tbaa !40
  %conv280 = zext i8 %215 to i32
  %xor281 = xor i32 %conv280, %cond279
  %conv282 = trunc i32 %xor281 to i8
  store i8 %conv282, i8* %k1, align 1, !tbaa !40
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used283 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 17
  %217 = load i32, i32* %nblock_used283, align 4, !tbaa !59
  %inc284 = add nsw i32 %217, 1
  store i32 %inc284, i32* %nblock_used283, align 4, !tbaa !59
  %218 = load i8, i8* %k1, align 1, !tbaa !40
  %conv285 = zext i8 %218 to i32
  %add286 = add nsw i32 %conv285, 4
  %219 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len287 = getelementptr inbounds %struct.DState, %struct.DState* %219, i32 0, i32 3
  store i32 %add286, i32* %state_out_len287, align 8, !tbaa !61
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos288 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 14
  %221 = load i32, i32* %tPos288, align 4, !tbaa !72
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab289 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 18
  %arraydecay290 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab289, i64 0, i64 0
  %call291 = call i32 @BZ2_indexIntoF(i32 %221, i32* %arraydecay290)
  %223 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0292 = getelementptr inbounds %struct.DState, %struct.DState* %223, i32 0, i32 15
  store i32 %call291, i32* %k0292, align 8, !tbaa !71
  %224 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16293 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 21
  %225 = load i16*, i16** %ll16293, align 8, !tbaa !54
  %226 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos294 = getelementptr inbounds %struct.DState, %struct.DState* %226, i32 0, i32 14
  %227 = load i32, i32* %tPos294, align 4, !tbaa !72
  %idxprom295 = zext i32 %227 to i64
  %arrayidx296 = getelementptr inbounds i16, i16* %225, i64 %idxprom295
  %228 = load i16, i16* %arrayidx296, align 2, !tbaa !73
  %conv297 = zext i16 %228 to i32
  %229 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4298 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 22
  %230 = load i8*, i8** %ll4298, align 8, !tbaa !53
  %231 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos299 = getelementptr inbounds %struct.DState, %struct.DState* %231, i32 0, i32 14
  %232 = load i32, i32* %tPos299, align 4, !tbaa !72
  %shr300 = lshr i32 %232, 1
  %idxprom301 = zext i32 %shr300 to i64
  %arrayidx302 = getelementptr inbounds i8, i8* %230, i64 %idxprom301
  %233 = load i8, i8* %arrayidx302, align 1, !tbaa !40
  %conv303 = zext i8 %233 to i32
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos304 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 14
  %235 = load i32, i32* %tPos304, align 4, !tbaa !72
  %shl305 = shl i32 %235, 2
  %and306 = and i32 %shl305, 4
  %shr307 = lshr i32 %conv303, %and306
  %and308 = and i32 %shr307, 15
  %shl309 = shl i32 %and308, 16
  %or310 = or i32 %conv297, %shl309
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos311 = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 14
  store i32 %or310, i32* %tPos311, align 4, !tbaa !72
  %237 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo312 = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 5
  %238 = load i32, i32* %rNToGo312, align 8, !tbaa !75
  %cmp313 = icmp eq i32 %238, 0
  br i1 %cmp313, label %if.then315, label %if.end328

if.then315:                                       ; preds = %if.end273
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos316 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 6
  %240 = load i32, i32* %rTPos316, align 4, !tbaa !76
  %idxprom317 = sext i32 %240 to i64
  %arrayidx318 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom317
  %241 = load i32, i32* %arrayidx318, align 4, !tbaa !2
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo319 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 5
  store i32 %241, i32* %rNToGo319, align 8, !tbaa !75
  %243 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos320 = getelementptr inbounds %struct.DState, %struct.DState* %243, i32 0, i32 6
  %244 = load i32, i32* %rTPos320, align 4, !tbaa !76
  %inc321 = add nsw i32 %244, 1
  store i32 %inc321, i32* %rTPos320, align 4, !tbaa !76
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos322 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 6
  %246 = load i32, i32* %rTPos322, align 4, !tbaa !76
  %cmp323 = icmp eq i32 %246, 512
  br i1 %cmp323, label %if.then325, label %if.end327

if.then325:                                       ; preds = %if.then315
  %247 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos326 = getelementptr inbounds %struct.DState, %struct.DState* %247, i32 0, i32 6
  store i32 0, i32* %rTPos326, align 4, !tbaa !76
  br label %if.end327

if.end327:                                        ; preds = %if.then325, %if.then315
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.end273
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo329 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 5
  %249 = load i32, i32* %rNToGo329, align 8, !tbaa !75
  %dec330 = add nsw i32 %249, -1
  store i32 %dec330, i32* %rNToGo329, align 8, !tbaa !75
  %250 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo331 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 5
  %251 = load i32, i32* %rNToGo331, align 8, !tbaa !75
  %cmp332 = icmp eq i32 %251, 1
  %252 = zext i1 %cmp332 to i64
  %cond334 = select i1 %cmp332, i32 1, i32 0
  %253 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0335 = getelementptr inbounds %struct.DState, %struct.DState* %253, i32 0, i32 15
  %254 = load i32, i32* %k0335, align 8, !tbaa !71
  %xor336 = xor i32 %254, %cond334
  store i32 %xor336, i32* %k0335, align 8, !tbaa !71
  %255 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used337 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 17
  %256 = load i32, i32* %nblock_used337, align 4, !tbaa !59
  %inc338 = add nsw i32 %256, 1
  store i32 %inc338, i32* %nblock_used337, align 4, !tbaa !59
  br label %while.cond, !llvm.loop !77

if.else:                                          ; preds = %entry
  br label %while.cond339

while.cond339:                                    ; preds = %if.end531, %if.then528, %if.then522, %if.then486, %if.then480, %if.then444, %if.then438, %if.else
  br label %while.body340

while.body340:                                    ; preds = %while.cond339
  br label %while.cond341

while.cond341:                                    ; preds = %if.end387, %while.body340
  br label %while.body342

while.body342:                                    ; preds = %while.cond341
  %257 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm343 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 0
  %258 = load %struct.bz_stream*, %struct.bz_stream** %strm343, align 8, !tbaa !46
  %avail_out344 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %258, i32 0, i32 5
  %259 = load i32, i32* %avail_out344, align 8, !tbaa !67
  %cmp345 = icmp eq i32 %259, 0
  br i1 %cmp345, label %if.then347, label %if.end348

if.then347:                                       ; preds = %while.body342
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end348:                                        ; preds = %while.body342
  %260 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len349 = getelementptr inbounds %struct.DState, %struct.DState* %260, i32 0, i32 3
  %261 = load i32, i32* %state_out_len349, align 8, !tbaa !61
  %cmp350 = icmp eq i32 %261, 0
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %if.end348
  br label %while.end388

if.end353:                                        ; preds = %if.end348
  %262 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch354 = getelementptr inbounds %struct.DState, %struct.DState* %262, i32 0, i32 2
  %263 = load i8, i8* %state_out_ch354, align 4, !tbaa !68
  %264 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm355 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 0
  %265 = load %struct.bz_stream*, %struct.bz_stream** %strm355, align 8, !tbaa !46
  %next_out356 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %265, i32 0, i32 4
  %266 = load i8*, i8** %next_out356, align 8, !tbaa !69
  store i8 %263, i8* %266, align 1, !tbaa !40
  %267 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC357 = getelementptr inbounds %struct.DState, %struct.DState* %267, i32 0, i32 25
  %268 = load i32, i32* %calculatedBlockCRC357, align 8, !tbaa !62
  %shl358 = shl i32 %268, 8
  %269 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC359 = getelementptr inbounds %struct.DState, %struct.DState* %269, i32 0, i32 25
  %270 = load i32, i32* %calculatedBlockCRC359, align 8, !tbaa !62
  %shr360 = lshr i32 %270, 24
  %271 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch361 = getelementptr inbounds %struct.DState, %struct.DState* %271, i32 0, i32 2
  %272 = load i8, i8* %state_out_ch361, align 4, !tbaa !68
  %conv362 = zext i8 %272 to i32
  %xor363 = xor i32 %shr360, %conv362
  %idxprom364 = zext i32 %xor363 to i64
  %arrayidx365 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom364
  %273 = load i32, i32* %arrayidx365, align 4, !tbaa !2
  %xor366 = xor i32 %shl358, %273
  %274 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC367 = getelementptr inbounds %struct.DState, %struct.DState* %274, i32 0, i32 25
  store i32 %xor366, i32* %calculatedBlockCRC367, align 8, !tbaa !62
  %275 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len368 = getelementptr inbounds %struct.DState, %struct.DState* %275, i32 0, i32 3
  %276 = load i32, i32* %state_out_len368, align 8, !tbaa !61
  %dec369 = add nsw i32 %276, -1
  store i32 %dec369, i32* %state_out_len368, align 8, !tbaa !61
  %277 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm370 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 0
  %278 = load %struct.bz_stream*, %struct.bz_stream** %strm370, align 8, !tbaa !46
  %next_out371 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %278, i32 0, i32 4
  %279 = load i8*, i8** %next_out371, align 8, !tbaa !69
  %incdec.ptr372 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr372, i8** %next_out371, align 8, !tbaa !69
  %280 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm373 = getelementptr inbounds %struct.DState, %struct.DState* %280, i32 0, i32 0
  %281 = load %struct.bz_stream*, %struct.bz_stream** %strm373, align 8, !tbaa !46
  %avail_out374 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %281, i32 0, i32 5
  %282 = load i32, i32* %avail_out374, align 8, !tbaa !67
  %dec375 = add i32 %282, -1
  store i32 %dec375, i32* %avail_out374, align 8, !tbaa !67
  %283 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm376 = getelementptr inbounds %struct.DState, %struct.DState* %283, i32 0, i32 0
  %284 = load %struct.bz_stream*, %struct.bz_stream** %strm376, align 8, !tbaa !46
  %total_out_lo32377 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %284, i32 0, i32 6
  %285 = load i32, i32* %total_out_lo32377, align 4, !tbaa !32
  %inc378 = add i32 %285, 1
  store i32 %inc378, i32* %total_out_lo32377, align 4, !tbaa !32
  %286 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm379 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 0
  %287 = load %struct.bz_stream*, %struct.bz_stream** %strm379, align 8, !tbaa !46
  %total_out_lo32380 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %287, i32 0, i32 6
  %288 = load i32, i32* %total_out_lo32380, align 4, !tbaa !32
  %cmp381 = icmp eq i32 %288, 0
  br i1 %cmp381, label %if.then383, label %if.end387

if.then383:                                       ; preds = %if.end353
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm384 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 0
  %290 = load %struct.bz_stream*, %struct.bz_stream** %strm384, align 8, !tbaa !46
  %total_out_hi32385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %290, i32 0, i32 7
  %291 = load i32, i32* %total_out_hi32385, align 8, !tbaa !33
  %inc386 = add i32 %291, 1
  store i32 %inc386, i32* %total_out_hi32385, align 8, !tbaa !33
  br label %if.end387

if.end387:                                        ; preds = %if.then383, %if.end353
  br label %while.cond341, !llvm.loop !78

while.end388:                                     ; preds = %if.then352
  %292 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used389 = getelementptr inbounds %struct.DState, %struct.DState* %292, i32 0, i32 17
  %293 = load i32, i32* %nblock_used389, align 4, !tbaa !59
  %294 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock390 = getelementptr inbounds %struct.DState, %struct.DState* %294, i32 0, i32 51
  %295 = load i32, i32* %save_nblock390, align 8, !tbaa !60
  %add391 = add nsw i32 %295, 1
  %cmp392 = icmp eq i32 %293, %add391
  br i1 %cmp392, label %if.then394, label %if.end395

if.then394:                                       ; preds = %while.end388
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end395:                                        ; preds = %while.end388
  %296 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used396 = getelementptr inbounds %struct.DState, %struct.DState* %296, i32 0, i32 17
  %297 = load i32, i32* %nblock_used396, align 4, !tbaa !59
  %298 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock397 = getelementptr inbounds %struct.DState, %struct.DState* %298, i32 0, i32 51
  %299 = load i32, i32* %save_nblock397, align 8, !tbaa !60
  %add398 = add nsw i32 %299, 1
  %cmp399 = icmp sgt i32 %297, %add398
  br i1 %cmp399, label %if.then401, label %if.end402

if.then401:                                       ; preds = %if.end395
  store i8 1, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end402:                                        ; preds = %if.end395
  %300 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len403 = getelementptr inbounds %struct.DState, %struct.DState* %300, i32 0, i32 3
  store i32 1, i32* %state_out_len403, align 8, !tbaa !61
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0404 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 15
  %302 = load i32, i32* %k0404, align 8, !tbaa !71
  %conv405 = trunc i32 %302 to i8
  %303 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch406 = getelementptr inbounds %struct.DState, %struct.DState* %303, i32 0, i32 2
  store i8 %conv405, i8* %state_out_ch406, align 4, !tbaa !68
  %304 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos407 = getelementptr inbounds %struct.DState, %struct.DState* %304, i32 0, i32 14
  %305 = load i32, i32* %tPos407, align 4, !tbaa !72
  %306 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab408 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 18
  %arraydecay409 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab408, i64 0, i64 0
  %call410 = call i32 @BZ2_indexIntoF(i32 %305, i32* %arraydecay409)
  %conv411 = trunc i32 %call410 to i8
  store i8 %conv411, i8* %k1, align 1, !tbaa !40
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16412 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 21
  %308 = load i16*, i16** %ll16412, align 8, !tbaa !54
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos413 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 14
  %310 = load i32, i32* %tPos413, align 4, !tbaa !72
  %idxprom414 = zext i32 %310 to i64
  %arrayidx415 = getelementptr inbounds i16, i16* %308, i64 %idxprom414
  %311 = load i16, i16* %arrayidx415, align 2, !tbaa !73
  %conv416 = zext i16 %311 to i32
  %312 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4417 = getelementptr inbounds %struct.DState, %struct.DState* %312, i32 0, i32 22
  %313 = load i8*, i8** %ll4417, align 8, !tbaa !53
  %314 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos418 = getelementptr inbounds %struct.DState, %struct.DState* %314, i32 0, i32 14
  %315 = load i32, i32* %tPos418, align 4, !tbaa !72
  %shr419 = lshr i32 %315, 1
  %idxprom420 = zext i32 %shr419 to i64
  %arrayidx421 = getelementptr inbounds i8, i8* %313, i64 %idxprom420
  %316 = load i8, i8* %arrayidx421, align 1, !tbaa !40
  %conv422 = zext i8 %316 to i32
  %317 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos423 = getelementptr inbounds %struct.DState, %struct.DState* %317, i32 0, i32 14
  %318 = load i32, i32* %tPos423, align 4, !tbaa !72
  %shl424 = shl i32 %318, 2
  %and425 = and i32 %shl424, 4
  %shr426 = lshr i32 %conv422, %and425
  %and427 = and i32 %shr426, 15
  %shl428 = shl i32 %and427, 16
  %or429 = or i32 %conv416, %shl428
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos430 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 14
  store i32 %or429, i32* %tPos430, align 4, !tbaa !72
  %320 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used431 = getelementptr inbounds %struct.DState, %struct.DState* %320, i32 0, i32 17
  %321 = load i32, i32* %nblock_used431, align 4, !tbaa !59
  %inc432 = add nsw i32 %321, 1
  store i32 %inc432, i32* %nblock_used431, align 4, !tbaa !59
  %322 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used433 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 17
  %323 = load i32, i32* %nblock_used433, align 4, !tbaa !59
  %324 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock434 = getelementptr inbounds %struct.DState, %struct.DState* %324, i32 0, i32 51
  %325 = load i32, i32* %save_nblock434, align 8, !tbaa !60
  %add435 = add nsw i32 %325, 1
  %cmp436 = icmp eq i32 %323, %add435
  br i1 %cmp436, label %if.then438, label %if.end439

if.then438:                                       ; preds = %if.end402
  br label %while.cond339, !llvm.loop !79

if.end439:                                        ; preds = %if.end402
  %326 = load i8, i8* %k1, align 1, !tbaa !40
  %conv440 = zext i8 %326 to i32
  %327 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0441 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 15
  %328 = load i32, i32* %k0441, align 8, !tbaa !71
  %cmp442 = icmp ne i32 %conv440, %328
  br i1 %cmp442, label %if.then444, label %if.end447

if.then444:                                       ; preds = %if.end439
  %329 = load i8, i8* %k1, align 1, !tbaa !40
  %conv445 = zext i8 %329 to i32
  %330 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0446 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 15
  store i32 %conv445, i32* %k0446, align 8, !tbaa !71
  br label %while.cond339, !llvm.loop !79

if.end447:                                        ; preds = %if.end439
  %331 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len448 = getelementptr inbounds %struct.DState, %struct.DState* %331, i32 0, i32 3
  store i32 2, i32* %state_out_len448, align 8, !tbaa !61
  %332 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos449 = getelementptr inbounds %struct.DState, %struct.DState* %332, i32 0, i32 14
  %333 = load i32, i32* %tPos449, align 4, !tbaa !72
  %334 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab450 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 18
  %arraydecay451 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab450, i64 0, i64 0
  %call452 = call i32 @BZ2_indexIntoF(i32 %333, i32* %arraydecay451)
  %conv453 = trunc i32 %call452 to i8
  store i8 %conv453, i8* %k1, align 1, !tbaa !40
  %335 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16454 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 21
  %336 = load i16*, i16** %ll16454, align 8, !tbaa !54
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos455 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 14
  %338 = load i32, i32* %tPos455, align 4, !tbaa !72
  %idxprom456 = zext i32 %338 to i64
  %arrayidx457 = getelementptr inbounds i16, i16* %336, i64 %idxprom456
  %339 = load i16, i16* %arrayidx457, align 2, !tbaa !73
  %conv458 = zext i16 %339 to i32
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4459 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 22
  %341 = load i8*, i8** %ll4459, align 8, !tbaa !53
  %342 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos460 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 14
  %343 = load i32, i32* %tPos460, align 4, !tbaa !72
  %shr461 = lshr i32 %343, 1
  %idxprom462 = zext i32 %shr461 to i64
  %arrayidx463 = getelementptr inbounds i8, i8* %341, i64 %idxprom462
  %344 = load i8, i8* %arrayidx463, align 1, !tbaa !40
  %conv464 = zext i8 %344 to i32
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos465 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 14
  %346 = load i32, i32* %tPos465, align 4, !tbaa !72
  %shl466 = shl i32 %346, 2
  %and467 = and i32 %shl466, 4
  %shr468 = lshr i32 %conv464, %and467
  %and469 = and i32 %shr468, 15
  %shl470 = shl i32 %and469, 16
  %or471 = or i32 %conv458, %shl470
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos472 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 14
  store i32 %or471, i32* %tPos472, align 4, !tbaa !72
  %348 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used473 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 17
  %349 = load i32, i32* %nblock_used473, align 4, !tbaa !59
  %inc474 = add nsw i32 %349, 1
  store i32 %inc474, i32* %nblock_used473, align 4, !tbaa !59
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used475 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 17
  %351 = load i32, i32* %nblock_used475, align 4, !tbaa !59
  %352 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock476 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 51
  %353 = load i32, i32* %save_nblock476, align 8, !tbaa !60
  %add477 = add nsw i32 %353, 1
  %cmp478 = icmp eq i32 %351, %add477
  br i1 %cmp478, label %if.then480, label %if.end481

if.then480:                                       ; preds = %if.end447
  br label %while.cond339, !llvm.loop !79

if.end481:                                        ; preds = %if.end447
  %354 = load i8, i8* %k1, align 1, !tbaa !40
  %conv482 = zext i8 %354 to i32
  %355 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0483 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 15
  %356 = load i32, i32* %k0483, align 8, !tbaa !71
  %cmp484 = icmp ne i32 %conv482, %356
  br i1 %cmp484, label %if.then486, label %if.end489

if.then486:                                       ; preds = %if.end481
  %357 = load i8, i8* %k1, align 1, !tbaa !40
  %conv487 = zext i8 %357 to i32
  %358 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0488 = getelementptr inbounds %struct.DState, %struct.DState* %358, i32 0, i32 15
  store i32 %conv487, i32* %k0488, align 8, !tbaa !71
  br label %while.cond339, !llvm.loop !79

if.end489:                                        ; preds = %if.end481
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len490 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 3
  store i32 3, i32* %state_out_len490, align 8, !tbaa !61
  %360 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos491 = getelementptr inbounds %struct.DState, %struct.DState* %360, i32 0, i32 14
  %361 = load i32, i32* %tPos491, align 4, !tbaa !72
  %362 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab492 = getelementptr inbounds %struct.DState, %struct.DState* %362, i32 0, i32 18
  %arraydecay493 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab492, i64 0, i64 0
  %call494 = call i32 @BZ2_indexIntoF(i32 %361, i32* %arraydecay493)
  %conv495 = trunc i32 %call494 to i8
  store i8 %conv495, i8* %k1, align 1, !tbaa !40
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16496 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 21
  %364 = load i16*, i16** %ll16496, align 8, !tbaa !54
  %365 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos497 = getelementptr inbounds %struct.DState, %struct.DState* %365, i32 0, i32 14
  %366 = load i32, i32* %tPos497, align 4, !tbaa !72
  %idxprom498 = zext i32 %366 to i64
  %arrayidx499 = getelementptr inbounds i16, i16* %364, i64 %idxprom498
  %367 = load i16, i16* %arrayidx499, align 2, !tbaa !73
  %conv500 = zext i16 %367 to i32
  %368 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4501 = getelementptr inbounds %struct.DState, %struct.DState* %368, i32 0, i32 22
  %369 = load i8*, i8** %ll4501, align 8, !tbaa !53
  %370 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos502 = getelementptr inbounds %struct.DState, %struct.DState* %370, i32 0, i32 14
  %371 = load i32, i32* %tPos502, align 4, !tbaa !72
  %shr503 = lshr i32 %371, 1
  %idxprom504 = zext i32 %shr503 to i64
  %arrayidx505 = getelementptr inbounds i8, i8* %369, i64 %idxprom504
  %372 = load i8, i8* %arrayidx505, align 1, !tbaa !40
  %conv506 = zext i8 %372 to i32
  %373 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos507 = getelementptr inbounds %struct.DState, %struct.DState* %373, i32 0, i32 14
  %374 = load i32, i32* %tPos507, align 4, !tbaa !72
  %shl508 = shl i32 %374, 2
  %and509 = and i32 %shl508, 4
  %shr510 = lshr i32 %conv506, %and509
  %and511 = and i32 %shr510, 15
  %shl512 = shl i32 %and511, 16
  %or513 = or i32 %conv500, %shl512
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos514 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 14
  store i32 %or513, i32* %tPos514, align 4, !tbaa !72
  %376 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used515 = getelementptr inbounds %struct.DState, %struct.DState* %376, i32 0, i32 17
  %377 = load i32, i32* %nblock_used515, align 4, !tbaa !59
  %inc516 = add nsw i32 %377, 1
  store i32 %inc516, i32* %nblock_used515, align 4, !tbaa !59
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used517 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 17
  %379 = load i32, i32* %nblock_used517, align 4, !tbaa !59
  %380 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock518 = getelementptr inbounds %struct.DState, %struct.DState* %380, i32 0, i32 51
  %381 = load i32, i32* %save_nblock518, align 8, !tbaa !60
  %add519 = add nsw i32 %381, 1
  %cmp520 = icmp eq i32 %379, %add519
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end489
  br label %while.cond339, !llvm.loop !79

if.end523:                                        ; preds = %if.end489
  %382 = load i8, i8* %k1, align 1, !tbaa !40
  %conv524 = zext i8 %382 to i32
  %383 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0525 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 15
  %384 = load i32, i32* %k0525, align 8, !tbaa !71
  %cmp526 = icmp ne i32 %conv524, %384
  br i1 %cmp526, label %if.then528, label %if.end531

if.then528:                                       ; preds = %if.end523
  %385 = load i8, i8* %k1, align 1, !tbaa !40
  %conv529 = zext i8 %385 to i32
  %386 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0530 = getelementptr inbounds %struct.DState, %struct.DState* %386, i32 0, i32 15
  store i32 %conv529, i32* %k0530, align 8, !tbaa !71
  br label %while.cond339, !llvm.loop !79

if.end531:                                        ; preds = %if.end523
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos532 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 14
  %388 = load i32, i32* %tPos532, align 4, !tbaa !72
  %389 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab533 = getelementptr inbounds %struct.DState, %struct.DState* %389, i32 0, i32 18
  %arraydecay534 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab533, i64 0, i64 0
  %call535 = call i32 @BZ2_indexIntoF(i32 %388, i32* %arraydecay534)
  %conv536 = trunc i32 %call535 to i8
  store i8 %conv536, i8* %k1, align 1, !tbaa !40
  %390 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16537 = getelementptr inbounds %struct.DState, %struct.DState* %390, i32 0, i32 21
  %391 = load i16*, i16** %ll16537, align 8, !tbaa !54
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos538 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 14
  %393 = load i32, i32* %tPos538, align 4, !tbaa !72
  %idxprom539 = zext i32 %393 to i64
  %arrayidx540 = getelementptr inbounds i16, i16* %391, i64 %idxprom539
  %394 = load i16, i16* %arrayidx540, align 2, !tbaa !73
  %conv541 = zext i16 %394 to i32
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4542 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 22
  %396 = load i8*, i8** %ll4542, align 8, !tbaa !53
  %397 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos543 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 14
  %398 = load i32, i32* %tPos543, align 4, !tbaa !72
  %shr544 = lshr i32 %398, 1
  %idxprom545 = zext i32 %shr544 to i64
  %arrayidx546 = getelementptr inbounds i8, i8* %396, i64 %idxprom545
  %399 = load i8, i8* %arrayidx546, align 1, !tbaa !40
  %conv547 = zext i8 %399 to i32
  %400 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos548 = getelementptr inbounds %struct.DState, %struct.DState* %400, i32 0, i32 14
  %401 = load i32, i32* %tPos548, align 4, !tbaa !72
  %shl549 = shl i32 %401, 2
  %and550 = and i32 %shl549, 4
  %shr551 = lshr i32 %conv547, %and550
  %and552 = and i32 %shr551, 15
  %shl553 = shl i32 %and552, 16
  %or554 = or i32 %conv541, %shl553
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos555 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 14
  store i32 %or554, i32* %tPos555, align 4, !tbaa !72
  %403 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used556 = getelementptr inbounds %struct.DState, %struct.DState* %403, i32 0, i32 17
  %404 = load i32, i32* %nblock_used556, align 4, !tbaa !59
  %inc557 = add nsw i32 %404, 1
  store i32 %inc557, i32* %nblock_used556, align 4, !tbaa !59
  %405 = load i8, i8* %k1, align 1, !tbaa !40
  %conv558 = zext i8 %405 to i32
  %add559 = add nsw i32 %conv558, 4
  %406 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len560 = getelementptr inbounds %struct.DState, %struct.DState* %406, i32 0, i32 3
  store i32 %add559, i32* %state_out_len560, align 8, !tbaa !61
  %407 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos561 = getelementptr inbounds %struct.DState, %struct.DState* %407, i32 0, i32 14
  %408 = load i32, i32* %tPos561, align 4, !tbaa !72
  %409 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %cftab562 = getelementptr inbounds %struct.DState, %struct.DState* %409, i32 0, i32 18
  %arraydecay563 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab562, i64 0, i64 0
  %call564 = call i32 @BZ2_indexIntoF(i32 %408, i32* %arraydecay563)
  %410 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0565 = getelementptr inbounds %struct.DState, %struct.DState* %410, i32 0, i32 15
  store i32 %call564, i32* %k0565, align 8, !tbaa !71
  %411 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll16566 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 21
  %412 = load i16*, i16** %ll16566, align 8, !tbaa !54
  %413 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos567 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 14
  %414 = load i32, i32* %tPos567, align 4, !tbaa !72
  %idxprom568 = zext i32 %414 to i64
  %arrayidx569 = getelementptr inbounds i16, i16* %412, i64 %idxprom568
  %415 = load i16, i16* %arrayidx569, align 2, !tbaa !73
  %conv570 = zext i16 %415 to i32
  %416 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %ll4571 = getelementptr inbounds %struct.DState, %struct.DState* %416, i32 0, i32 22
  %417 = load i8*, i8** %ll4571, align 8, !tbaa !53
  %418 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos572 = getelementptr inbounds %struct.DState, %struct.DState* %418, i32 0, i32 14
  %419 = load i32, i32* %tPos572, align 4, !tbaa !72
  %shr573 = lshr i32 %419, 1
  %idxprom574 = zext i32 %shr573 to i64
  %arrayidx575 = getelementptr inbounds i8, i8* %417, i64 %idxprom574
  %420 = load i8, i8* %arrayidx575, align 1, !tbaa !40
  %conv576 = zext i8 %420 to i32
  %421 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos577 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 14
  %422 = load i32, i32* %tPos577, align 4, !tbaa !72
  %shl578 = shl i32 %422, 2
  %and579 = and i32 %shl578, 4
  %shr580 = lshr i32 %conv576, %and579
  %and581 = and i32 %shr580, 15
  %shl582 = shl i32 %and581, 16
  %or583 = or i32 %conv570, %shl582
  %423 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos584 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 14
  store i32 %or583, i32* %tPos584, align 4, !tbaa !72
  %424 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used585 = getelementptr inbounds %struct.DState, %struct.DState* %424, i32 0, i32 17
  %425 = load i32, i32* %nblock_used585, align 4, !tbaa !59
  %inc586 = add nsw i32 %425, 1
  store i32 %inc586, i32* %nblock_used585, align 4, !tbaa !59
  br label %while.cond339, !llvm.loop !79

cleanup:                                          ; preds = %if.then401, %if.then394, %if.then347, %if.then36, %if.then29, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %k1) #10
  %426 = load i8, i8* %retval, align 1
  ret i8 %426
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca i32*, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca i8*, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %k1) #10
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 4, !tbaa !66
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end265, %if.then192, %if.then186, %if.then138, %if.then132, %if.then84, %if.then78, %if.then
  br label %while.body

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end26, %while.body
  br label %while.body2

while.body2:                                      ; preds = %while.cond1
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !46
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 8, !tbaa !67
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup438

if.end:                                           ; preds = %while.body2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 8, !tbaa !61
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 4, !tbaa !68
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8, !tbaa !46
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8, !tbaa !69
  store i8 %8, i8* %11, align 1, !tbaa !40
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 8, !tbaa !62
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 8, !tbaa !62
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 4, !tbaa !68
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 8, !tbaa !62
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 8, !tbaa !61
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 8, !tbaa !61
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8, !tbaa !46
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8, !tbaa !69
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8, !tbaa !69
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8, !tbaa !46
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 8, !tbaa !67
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 8, !tbaa !67
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8, !tbaa !46
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4, !tbaa !32
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4, !tbaa !32
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8, !tbaa !46
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4, !tbaa !32
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8, !tbaa !46
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 8, !tbaa !33
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 8, !tbaa !33
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.cond1, !llvm.loop !80

while.end:                                        ; preds = %if.then5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4, !tbaa !59
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 8, !tbaa !60
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup438

if.end30:                                         ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4, !tbaa !59
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 8, !tbaa !60
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup438

if.end37:                                         ; preds = %if.end30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 8, !tbaa !61
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 8, !tbaa !71
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 4, !tbaa !68
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 20
  %50 = load i32*, i32** %tt, align 8, !tbaa !55
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 14
  %52 = load i32, i32* %tPos, align 4, !tbaa !72
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %50, i64 %idxprom41
  %53 = load i32, i32* %arrayidx42, align 4, !tbaa !2
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos43 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  store i32 %53, i32* %tPos43, align 4, !tbaa !72
  %55 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos44 = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 14
  %56 = load i32, i32* %tPos44, align 4, !tbaa !72
  %and = and i32 %56, 255
  %conv45 = trunc i32 %and to i8
  store i8 %conv45, i8* %k1, align 1, !tbaa !40
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 14
  %58 = load i32, i32* %tPos46, align 4, !tbaa !72
  %shr47 = lshr i32 %58, 8
  store i32 %shr47, i32* %tPos46, align 4, !tbaa !72
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 5
  %60 = load i32, i32* %rNToGo, align 8, !tbaa !75
  %cmp48 = icmp eq i32 %60, 0
  br i1 %cmp48, label %if.then50, label %if.end62

if.then50:                                        ; preds = %if.end37
  %61 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 6
  %62 = load i32, i32* %rTPos, align 4, !tbaa !76
  %idxprom51 = sext i32 %62 to i64
  %arrayidx52 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom51
  %63 = load i32, i32* %arrayidx52, align 4, !tbaa !2
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo53 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 5
  store i32 %63, i32* %rNToGo53, align 8, !tbaa !75
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos54 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 6
  %66 = load i32, i32* %rTPos54, align 4, !tbaa !76
  %inc55 = add nsw i32 %66, 1
  store i32 %inc55, i32* %rTPos54, align 4, !tbaa !76
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos56 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos56, align 4, !tbaa !76
  %cmp57 = icmp eq i32 %68, 512
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then50
  %69 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos60 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 6
  store i32 0, i32* %rTPos60, align 4, !tbaa !76
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then50
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end37
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo63 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  %71 = load i32, i32* %rNToGo63, align 8, !tbaa !75
  %dec64 = add nsw i32 %71, -1
  store i32 %dec64, i32* %rNToGo63, align 8, !tbaa !75
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo65 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 5
  %73 = load i32, i32* %rNToGo65, align 8, !tbaa !75
  %cmp66 = icmp eq i32 %73, 1
  %74 = zext i1 %cmp66 to i64
  %cond = select i1 %cmp66, i32 1, i32 0
  %75 = load i8, i8* %k1, align 1, !tbaa !40
  %conv68 = zext i8 %75 to i32
  %xor69 = xor i32 %conv68, %cond
  %conv70 = trunc i32 %xor69 to i8
  store i8 %conv70, i8* %k1, align 1, !tbaa !40
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used71 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 17
  %77 = load i32, i32* %nblock_used71, align 4, !tbaa !59
  %inc72 = add nsw i32 %77, 1
  store i32 %inc72, i32* %nblock_used71, align 4, !tbaa !59
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used73 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 17
  %79 = load i32, i32* %nblock_used73, align 4, !tbaa !59
  %80 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock74 = getelementptr inbounds %struct.DState, %struct.DState* %80, i32 0, i32 51
  %81 = load i32, i32* %save_nblock74, align 8, !tbaa !60
  %add75 = add nsw i32 %81, 1
  %cmp76 = icmp eq i32 %79, %add75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end62
  br label %while.cond, !llvm.loop !81

if.end79:                                         ; preds = %if.end62
  %82 = load i8, i8* %k1, align 1, !tbaa !40
  %conv80 = zext i8 %82 to i32
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k081 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 15
  %84 = load i32, i32* %k081, align 8, !tbaa !71
  %cmp82 = icmp ne i32 %conv80, %84
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end79
  %85 = load i8, i8* %k1, align 1, !tbaa !40
  %conv85 = zext i8 %85 to i32
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k086 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 15
  store i32 %conv85, i32* %k086, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !81

if.end87:                                         ; preds = %if.end79
  %87 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len88 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 3
  store i32 2, i32* %state_out_len88, align 8, !tbaa !61
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt89 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 20
  %89 = load i32*, i32** %tt89, align 8, !tbaa !55
  %90 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos90 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 14
  %91 = load i32, i32* %tPos90, align 4, !tbaa !72
  %idxprom91 = zext i32 %91 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %89, i64 %idxprom91
  %92 = load i32, i32* %arrayidx92, align 4, !tbaa !2
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos93 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 14
  store i32 %92, i32* %tPos93, align 4, !tbaa !72
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos94 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 14
  %95 = load i32, i32* %tPos94, align 4, !tbaa !72
  %and95 = and i32 %95, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, i8* %k1, align 1, !tbaa !40
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos97 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 14
  %97 = load i32, i32* %tPos97, align 4, !tbaa !72
  %shr98 = lshr i32 %97, 8
  store i32 %shr98, i32* %tPos97, align 4, !tbaa !72
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo99 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 5
  %99 = load i32, i32* %rNToGo99, align 8, !tbaa !75
  %cmp100 = icmp eq i32 %99, 0
  br i1 %cmp100, label %if.then102, label %if.end115

if.then102:                                       ; preds = %if.end87
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos103 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 6
  %101 = load i32, i32* %rTPos103, align 4, !tbaa !76
  %idxprom104 = sext i32 %101 to i64
  %arrayidx105 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom104
  %102 = load i32, i32* %arrayidx105, align 4, !tbaa !2
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo106 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 5
  store i32 %102, i32* %rNToGo106, align 8, !tbaa !75
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos107 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 6
  %105 = load i32, i32* %rTPos107, align 4, !tbaa !76
  %inc108 = add nsw i32 %105, 1
  store i32 %inc108, i32* %rTPos107, align 4, !tbaa !76
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos109 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 6
  %107 = load i32, i32* %rTPos109, align 4, !tbaa !76
  %cmp110 = icmp eq i32 %107, 512
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.then102
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos113 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 6
  store i32 0, i32* %rTPos113, align 4, !tbaa !76
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then102
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end87
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo116 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 5
  %110 = load i32, i32* %rNToGo116, align 8, !tbaa !75
  %dec117 = add nsw i32 %110, -1
  store i32 %dec117, i32* %rNToGo116, align 8, !tbaa !75
  %111 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo118 = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 5
  %112 = load i32, i32* %rNToGo118, align 8, !tbaa !75
  %cmp119 = icmp eq i32 %112, 1
  %113 = zext i1 %cmp119 to i64
  %cond121 = select i1 %cmp119, i32 1, i32 0
  %114 = load i8, i8* %k1, align 1, !tbaa !40
  %conv122 = zext i8 %114 to i32
  %xor123 = xor i32 %conv122, %cond121
  %conv124 = trunc i32 %xor123 to i8
  store i8 %conv124, i8* %k1, align 1, !tbaa !40
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used125 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 17
  %116 = load i32, i32* %nblock_used125, align 4, !tbaa !59
  %inc126 = add nsw i32 %116, 1
  store i32 %inc126, i32* %nblock_used125, align 4, !tbaa !59
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used127 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 17
  %118 = load i32, i32* %nblock_used127, align 4, !tbaa !59
  %119 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock128 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 51
  %120 = load i32, i32* %save_nblock128, align 8, !tbaa !60
  %add129 = add nsw i32 %120, 1
  %cmp130 = icmp eq i32 %118, %add129
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end115
  br label %while.cond, !llvm.loop !81

if.end133:                                        ; preds = %if.end115
  %121 = load i8, i8* %k1, align 1, !tbaa !40
  %conv134 = zext i8 %121 to i32
  %122 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0135 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 15
  %123 = load i32, i32* %k0135, align 8, !tbaa !71
  %cmp136 = icmp ne i32 %conv134, %123
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end133
  %124 = load i8, i8* %k1, align 1, !tbaa !40
  %conv139 = zext i8 %124 to i32
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0140 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 15
  store i32 %conv139, i32* %k0140, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !81

if.end141:                                        ; preds = %if.end133
  %126 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len142 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 3
  store i32 3, i32* %state_out_len142, align 8, !tbaa !61
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt143 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 20
  %128 = load i32*, i32** %tt143, align 8, !tbaa !55
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos144 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 14
  %130 = load i32, i32* %tPos144, align 4, !tbaa !72
  %idxprom145 = zext i32 %130 to i64
  %arrayidx146 = getelementptr inbounds i32, i32* %128, i64 %idxprom145
  %131 = load i32, i32* %arrayidx146, align 4, !tbaa !2
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos147 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 14
  store i32 %131, i32* %tPos147, align 4, !tbaa !72
  %133 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos148 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 14
  %134 = load i32, i32* %tPos148, align 4, !tbaa !72
  %and149 = and i32 %134, 255
  %conv150 = trunc i32 %and149 to i8
  store i8 %conv150, i8* %k1, align 1, !tbaa !40
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos151 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 14
  %136 = load i32, i32* %tPos151, align 4, !tbaa !72
  %shr152 = lshr i32 %136, 8
  store i32 %shr152, i32* %tPos151, align 4, !tbaa !72
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo153 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 5
  %138 = load i32, i32* %rNToGo153, align 8, !tbaa !75
  %cmp154 = icmp eq i32 %138, 0
  br i1 %cmp154, label %if.then156, label %if.end169

if.then156:                                       ; preds = %if.end141
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos157 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 6
  %140 = load i32, i32* %rTPos157, align 4, !tbaa !76
  %idxprom158 = sext i32 %140 to i64
  %arrayidx159 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom158
  %141 = load i32, i32* %arrayidx159, align 4, !tbaa !2
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo160 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 5
  store i32 %141, i32* %rNToGo160, align 8, !tbaa !75
  %143 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos161 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 6
  %144 = load i32, i32* %rTPos161, align 4, !tbaa !76
  %inc162 = add nsw i32 %144, 1
  store i32 %inc162, i32* %rTPos161, align 4, !tbaa !76
  %145 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos163 = getelementptr inbounds %struct.DState, %struct.DState* %145, i32 0, i32 6
  %146 = load i32, i32* %rTPos163, align 4, !tbaa !76
  %cmp164 = icmp eq i32 %146, 512
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.then156
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos167 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 6
  store i32 0, i32* %rTPos167, align 4, !tbaa !76
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.then156
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end141
  %148 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo170 = getelementptr inbounds %struct.DState, %struct.DState* %148, i32 0, i32 5
  %149 = load i32, i32* %rNToGo170, align 8, !tbaa !75
  %dec171 = add nsw i32 %149, -1
  store i32 %dec171, i32* %rNToGo170, align 8, !tbaa !75
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo172 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 5
  %151 = load i32, i32* %rNToGo172, align 8, !tbaa !75
  %cmp173 = icmp eq i32 %151, 1
  %152 = zext i1 %cmp173 to i64
  %cond175 = select i1 %cmp173, i32 1, i32 0
  %153 = load i8, i8* %k1, align 1, !tbaa !40
  %conv176 = zext i8 %153 to i32
  %xor177 = xor i32 %conv176, %cond175
  %conv178 = trunc i32 %xor177 to i8
  store i8 %conv178, i8* %k1, align 1, !tbaa !40
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used179 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 17
  %155 = load i32, i32* %nblock_used179, align 4, !tbaa !59
  %inc180 = add nsw i32 %155, 1
  store i32 %inc180, i32* %nblock_used179, align 4, !tbaa !59
  %156 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used181 = getelementptr inbounds %struct.DState, %struct.DState* %156, i32 0, i32 17
  %157 = load i32, i32* %nblock_used181, align 4, !tbaa !59
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock182 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 51
  %159 = load i32, i32* %save_nblock182, align 8, !tbaa !60
  %add183 = add nsw i32 %159, 1
  %cmp184 = icmp eq i32 %157, %add183
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end169
  br label %while.cond, !llvm.loop !81

if.end187:                                        ; preds = %if.end169
  %160 = load i8, i8* %k1, align 1, !tbaa !40
  %conv188 = zext i8 %160 to i32
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0189 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 15
  %162 = load i32, i32* %k0189, align 8, !tbaa !71
  %cmp190 = icmp ne i32 %conv188, %162
  br i1 %cmp190, label %if.then192, label %if.end195

if.then192:                                       ; preds = %if.end187
  %163 = load i8, i8* %k1, align 1, !tbaa !40
  %conv193 = zext i8 %163 to i32
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0194 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 15
  store i32 %conv193, i32* %k0194, align 8, !tbaa !71
  br label %while.cond, !llvm.loop !81

if.end195:                                        ; preds = %if.end187
  %165 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt196 = getelementptr inbounds %struct.DState, %struct.DState* %165, i32 0, i32 20
  %166 = load i32*, i32** %tt196, align 8, !tbaa !55
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos197 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 14
  %168 = load i32, i32* %tPos197, align 4, !tbaa !72
  %idxprom198 = zext i32 %168 to i64
  %arrayidx199 = getelementptr inbounds i32, i32* %166, i64 %idxprom198
  %169 = load i32, i32* %arrayidx199, align 4, !tbaa !2
  %170 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos200 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 14
  store i32 %169, i32* %tPos200, align 4, !tbaa !72
  %171 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos201 = getelementptr inbounds %struct.DState, %struct.DState* %171, i32 0, i32 14
  %172 = load i32, i32* %tPos201, align 4, !tbaa !72
  %and202 = and i32 %172, 255
  %conv203 = trunc i32 %and202 to i8
  store i8 %conv203, i8* %k1, align 1, !tbaa !40
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos204 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 14
  %174 = load i32, i32* %tPos204, align 4, !tbaa !72
  %shr205 = lshr i32 %174, 8
  store i32 %shr205, i32* %tPos204, align 4, !tbaa !72
  %175 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo206 = getelementptr inbounds %struct.DState, %struct.DState* %175, i32 0, i32 5
  %176 = load i32, i32* %rNToGo206, align 8, !tbaa !75
  %cmp207 = icmp eq i32 %176, 0
  br i1 %cmp207, label %if.then209, label %if.end222

if.then209:                                       ; preds = %if.end195
  %177 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos210 = getelementptr inbounds %struct.DState, %struct.DState* %177, i32 0, i32 6
  %178 = load i32, i32* %rTPos210, align 4, !tbaa !76
  %idxprom211 = sext i32 %178 to i64
  %arrayidx212 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom211
  %179 = load i32, i32* %arrayidx212, align 4, !tbaa !2
  %180 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo213 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 5
  store i32 %179, i32* %rNToGo213, align 8, !tbaa !75
  %181 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos214 = getelementptr inbounds %struct.DState, %struct.DState* %181, i32 0, i32 6
  %182 = load i32, i32* %rTPos214, align 4, !tbaa !76
  %inc215 = add nsw i32 %182, 1
  store i32 %inc215, i32* %rTPos214, align 4, !tbaa !76
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos216 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 6
  %184 = load i32, i32* %rTPos216, align 4, !tbaa !76
  %cmp217 = icmp eq i32 %184, 512
  br i1 %cmp217, label %if.then219, label %if.end221

if.then219:                                       ; preds = %if.then209
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos220 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 6
  store i32 0, i32* %rTPos220, align 4, !tbaa !76
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %if.then209
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.end195
  %186 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo223 = getelementptr inbounds %struct.DState, %struct.DState* %186, i32 0, i32 5
  %187 = load i32, i32* %rNToGo223, align 8, !tbaa !75
  %dec224 = add nsw i32 %187, -1
  store i32 %dec224, i32* %rNToGo223, align 8, !tbaa !75
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo225 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 5
  %189 = load i32, i32* %rNToGo225, align 8, !tbaa !75
  %cmp226 = icmp eq i32 %189, 1
  %190 = zext i1 %cmp226 to i64
  %cond228 = select i1 %cmp226, i32 1, i32 0
  %191 = load i8, i8* %k1, align 1, !tbaa !40
  %conv229 = zext i8 %191 to i32
  %xor230 = xor i32 %conv229, %cond228
  %conv231 = trunc i32 %xor230 to i8
  store i8 %conv231, i8* %k1, align 1, !tbaa !40
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used232 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 17
  %193 = load i32, i32* %nblock_used232, align 4, !tbaa !59
  %inc233 = add nsw i32 %193, 1
  store i32 %inc233, i32* %nblock_used232, align 4, !tbaa !59
  %194 = load i8, i8* %k1, align 1, !tbaa !40
  %conv234 = zext i8 %194 to i32
  %add235 = add nsw i32 %conv234, 4
  %195 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len236 = getelementptr inbounds %struct.DState, %struct.DState* %195, i32 0, i32 3
  store i32 %add235, i32* %state_out_len236, align 8, !tbaa !61
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt237 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 20
  %197 = load i32*, i32** %tt237, align 8, !tbaa !55
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos238 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 14
  %199 = load i32, i32* %tPos238, align 4, !tbaa !72
  %idxprom239 = zext i32 %199 to i64
  %arrayidx240 = getelementptr inbounds i32, i32* %197, i64 %idxprom239
  %200 = load i32, i32* %arrayidx240, align 4, !tbaa !2
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos241 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 14
  store i32 %200, i32* %tPos241, align 4, !tbaa !72
  %202 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos242 = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 14
  %203 = load i32, i32* %tPos242, align 4, !tbaa !72
  %and243 = and i32 %203, 255
  %conv244 = trunc i32 %and243 to i8
  %conv245 = zext i8 %conv244 to i32
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0246 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 15
  store i32 %conv245, i32* %k0246, align 8, !tbaa !71
  %205 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos247 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 14
  %206 = load i32, i32* %tPos247, align 4, !tbaa !72
  %shr248 = lshr i32 %206, 8
  store i32 %shr248, i32* %tPos247, align 4, !tbaa !72
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo249 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 5
  %208 = load i32, i32* %rNToGo249, align 8, !tbaa !75
  %cmp250 = icmp eq i32 %208, 0
  br i1 %cmp250, label %if.then252, label %if.end265

if.then252:                                       ; preds = %if.end222
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos253 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 6
  %210 = load i32, i32* %rTPos253, align 4, !tbaa !76
  %idxprom254 = sext i32 %210 to i64
  %arrayidx255 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom254
  %211 = load i32, i32* %arrayidx255, align 4, !tbaa !2
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo256 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 5
  store i32 %211, i32* %rNToGo256, align 8, !tbaa !75
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos257 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 6
  %214 = load i32, i32* %rTPos257, align 4, !tbaa !76
  %inc258 = add nsw i32 %214, 1
  store i32 %inc258, i32* %rTPos257, align 4, !tbaa !76
  %215 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos259 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 6
  %216 = load i32, i32* %rTPos259, align 4, !tbaa !76
  %cmp260 = icmp eq i32 %216, 512
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %if.then252
  %217 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rTPos263 = getelementptr inbounds %struct.DState, %struct.DState* %217, i32 0, i32 6
  store i32 0, i32* %rTPos263, align 4, !tbaa !76
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then252
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end222
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo266 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 5
  %219 = load i32, i32* %rNToGo266, align 8, !tbaa !75
  %dec267 = add nsw i32 %219, -1
  store i32 %dec267, i32* %rNToGo266, align 8, !tbaa !75
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %rNToGo268 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 5
  %221 = load i32, i32* %rNToGo268, align 8, !tbaa !75
  %cmp269 = icmp eq i32 %221, 1
  %222 = zext i1 %cmp269 to i64
  %cond271 = select i1 %cmp269, i32 1, i32 0
  %223 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0272 = getelementptr inbounds %struct.DState, %struct.DState* %223, i32 0, i32 15
  %224 = load i32, i32* %k0272, align 8, !tbaa !71
  %xor273 = xor i32 %224, %cond271
  store i32 %xor273, i32* %k0272, align 8, !tbaa !71
  %225 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used274 = getelementptr inbounds %struct.DState, %struct.DState* %225, i32 0, i32 17
  %226 = load i32, i32* %nblock_used274, align 4, !tbaa !59
  %inc275 = add nsw i32 %226, 1
  store i32 %inc275, i32* %nblock_used274, align 4, !tbaa !59
  br label %while.cond, !llvm.loop !81

if.else:                                          ; preds = %entry
  %227 = bitcast i32* %c_calculatedBlockCRC to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %227) #10
  %228 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC276 = getelementptr inbounds %struct.DState, %struct.DState* %228, i32 0, i32 25
  %229 = load i32, i32* %calculatedBlockCRC276, align 8, !tbaa !62
  store i32 %229, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c_state_out_ch) #10
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch277 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 2
  %231 = load i8, i8* %state_out_ch277, align 4, !tbaa !68
  store i8 %231, i8* %c_state_out_ch, align 1, !tbaa !40
  %232 = bitcast i32* %c_state_out_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %232) #10
  %233 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len278 = getelementptr inbounds %struct.DState, %struct.DState* %233, i32 0, i32 3
  %234 = load i32, i32* %state_out_len278, align 8, !tbaa !61
  store i32 %234, i32* %c_state_out_len, align 4, !tbaa !2
  %235 = bitcast i32* %c_nblock_used to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %235) #10
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used279 = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 17
  %237 = load i32, i32* %nblock_used279, align 4, !tbaa !59
  store i32 %237, i32* %c_nblock_used, align 4, !tbaa !2
  %238 = bitcast i32* %c_k0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %238) #10
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0280 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 15
  %240 = load i32, i32* %k0280, align 8, !tbaa !71
  store i32 %240, i32* %c_k0, align 4, !tbaa !2
  %241 = bitcast i32** %c_tt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %241) #10
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt281 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 20
  %243 = load i32*, i32** %tt281, align 8, !tbaa !55
  store i32* %243, i32** %c_tt, align 8, !tbaa !6
  %244 = bitcast i32* %c_tPos to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %244) #10
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos282 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 14
  %246 = load i32, i32* %tPos282, align 4, !tbaa !72
  store i32 %246, i32* %c_tPos, align 4, !tbaa !2
  %247 = bitcast i8** %cs_next_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %247) #10
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm283 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 0
  %249 = load %struct.bz_stream*, %struct.bz_stream** %strm283, align 8, !tbaa !46
  %next_out284 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %249, i32 0, i32 4
  %250 = load i8*, i8** %next_out284, align 8, !tbaa !69
  store i8* %250, i8** %cs_next_out, align 8, !tbaa !6
  %251 = bitcast i32* %cs_avail_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %251) #10
  %252 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm285 = getelementptr inbounds %struct.DState, %struct.DState* %252, i32 0, i32 0
  %253 = load %struct.bz_stream*, %struct.bz_stream** %strm285, align 8, !tbaa !46
  %avail_out286 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %253, i32 0, i32 5
  %254 = load i32, i32* %avail_out286, align 8, !tbaa !67
  store i32 %254, i32* %cs_avail_out, align 4, !tbaa !2
  %255 = bitcast i32* %avail_out_INIT to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %255) #10
  %256 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  store i32 %256, i32* %avail_out_INIT, align 4, !tbaa !2
  %257 = bitcast i32* %s_save_nblockPP to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %257) #10
  %258 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %save_nblock287 = getelementptr inbounds %struct.DState, %struct.DState* %258, i32 0, i32 51
  %259 = load i32, i32* %save_nblock287, align 8, !tbaa !60
  %add288 = add nsw i32 %259, 1
  store i32 %add288, i32* %s_save_nblockPP, align 4, !tbaa !2
  %260 = bitcast i32* %total_out_lo32_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %260) #10
  br label %while.cond289

while.cond289:                                    ; preds = %if.end385, %if.then383, %if.then378, %if.then367, %if.then362, %if.else
  br label %while.body290

while.body290:                                    ; preds = %while.cond289
  %261 = load i32, i32* %c_state_out_len, align 4, !tbaa !2
  %cmp291 = icmp sgt i32 %261, 0
  br i1 %cmp291, label %if.then293, label %if.end328

if.then293:                                       ; preds = %while.body290
  br label %while.cond294

while.cond294:                                    ; preds = %if.end303, %if.then293
  br label %while.body295

while.body295:                                    ; preds = %while.cond294
  %262 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %cmp296 = icmp eq i32 %262, 0
  br i1 %cmp296, label %if.then298, label %if.end299

if.then298:                                       ; preds = %while.body295
  br label %return_notr

if.end299:                                        ; preds = %while.body295
  %263 = load i32, i32* %c_state_out_len, align 4, !tbaa !2
  %cmp300 = icmp eq i32 %263, 1
  br i1 %cmp300, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.end299
  br label %while.end314

if.end303:                                        ; preds = %if.end299
  %264 = load i8, i8* %c_state_out_ch, align 1, !tbaa !40
  %265 = load i8*, i8** %cs_next_out, align 8, !tbaa !6
  store i8 %264, i8* %265, align 1, !tbaa !40
  %266 = load i32, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %shl304 = shl i32 %266, 8
  %267 = load i32, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %shr305 = lshr i32 %267, 24
  %268 = load i8, i8* %c_state_out_ch, align 1, !tbaa !40
  %conv306 = zext i8 %268 to i32
  %xor307 = xor i32 %shr305, %conv306
  %idxprom308 = zext i32 %xor307 to i64
  %arrayidx309 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom308
  %269 = load i32, i32* %arrayidx309, align 4, !tbaa !2
  %xor310 = xor i32 %shl304, %269
  store i32 %xor310, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %270 = load i32, i32* %c_state_out_len, align 4, !tbaa !2
  %dec311 = add nsw i32 %270, -1
  store i32 %dec311, i32* %c_state_out_len, align 4, !tbaa !2
  %271 = load i8*, i8** %cs_next_out, align 8, !tbaa !6
  %incdec.ptr312 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr312, i8** %cs_next_out, align 8, !tbaa !6
  %272 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %dec313 = add i32 %272, -1
  store i32 %dec313, i32* %cs_avail_out, align 4, !tbaa !2
  br label %while.cond294, !llvm.loop !82

while.end314:                                     ; preds = %if.then302
  br label %s_state_out_len_eq_one

s_state_out_len_eq_one:                           ; preds = %if.then352, %if.then347, %while.end314
  %273 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %cmp315 = icmp eq i32 %273, 0
  br i1 %cmp315, label %if.then317, label %if.end318

if.then317:                                       ; preds = %s_state_out_len_eq_one
  store i32 1, i32* %c_state_out_len, align 4, !tbaa !2
  br label %return_notr

if.end318:                                        ; preds = %s_state_out_len_eq_one
  %274 = load i8, i8* %c_state_out_ch, align 1, !tbaa !40
  %275 = load i8*, i8** %cs_next_out, align 8, !tbaa !6
  store i8 %274, i8* %275, align 1, !tbaa !40
  %276 = load i32, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %shl319 = shl i32 %276, 8
  %277 = load i32, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %shr320 = lshr i32 %277, 24
  %278 = load i8, i8* %c_state_out_ch, align 1, !tbaa !40
  %conv321 = zext i8 %278 to i32
  %xor322 = xor i32 %shr320, %conv321
  %idxprom323 = zext i32 %xor322 to i64
  %arrayidx324 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom323
  %279 = load i32, i32* %arrayidx324, align 4, !tbaa !2
  %xor325 = xor i32 %shl319, %279
  store i32 %xor325, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %280 = load i8*, i8** %cs_next_out, align 8, !tbaa !6
  %incdec.ptr326 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %incdec.ptr326, i8** %cs_next_out, align 8, !tbaa !6
  %281 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %dec327 = add i32 %281, -1
  store i32 %dec327, i32* %cs_avail_out, align 4, !tbaa !2
  br label %if.end328

if.end328:                                        ; preds = %if.end318, %while.body290
  %282 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %283 = load i32, i32* %s_save_nblockPP, align 4, !tbaa !2
  %cmp329 = icmp sgt i32 %282, %283
  br i1 %cmp329, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end328
  store i8 1, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end332:                                        ; preds = %if.end328
  %284 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %285 = load i32, i32* %s_save_nblockPP, align 4, !tbaa !2
  %cmp333 = icmp eq i32 %284, %285
  br i1 %cmp333, label %if.then335, label %if.end336

if.then335:                                       ; preds = %if.end332
  store i32 0, i32* %c_state_out_len, align 4, !tbaa !2
  br label %return_notr

if.end336:                                        ; preds = %if.end332
  %286 = load i32, i32* %c_k0, align 4, !tbaa !2
  %conv337 = trunc i32 %286 to i8
  store i8 %conv337, i8* %c_state_out_ch, align 1, !tbaa !40
  %287 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %288 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %idxprom338 = zext i32 %288 to i64
  %arrayidx339 = getelementptr inbounds i32, i32* %287, i64 %idxprom338
  %289 = load i32, i32* %arrayidx339, align 4, !tbaa !2
  store i32 %289, i32* %c_tPos, align 4, !tbaa !2
  %290 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %and340 = and i32 %290, 255
  %conv341 = trunc i32 %and340 to i8
  store i8 %conv341, i8* %k1, align 1, !tbaa !40
  %291 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %shr342 = lshr i32 %291, 8
  store i32 %shr342, i32* %c_tPos, align 4, !tbaa !2
  %292 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %inc343 = add nsw i32 %292, 1
  store i32 %inc343, i32* %c_nblock_used, align 4, !tbaa !2
  %293 = load i8, i8* %k1, align 1, !tbaa !40
  %conv344 = zext i8 %293 to i32
  %294 = load i32, i32* %c_k0, align 4, !tbaa !2
  %cmp345 = icmp ne i32 %conv344, %294
  br i1 %cmp345, label %if.then347, label %if.end349

if.then347:                                       ; preds = %if.end336
  %295 = load i8, i8* %k1, align 1, !tbaa !40
  %conv348 = zext i8 %295 to i32
  store i32 %conv348, i32* %c_k0, align 4, !tbaa !2
  br label %s_state_out_len_eq_one

if.end349:                                        ; preds = %if.end336
  %296 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %297 = load i32, i32* %s_save_nblockPP, align 4, !tbaa !2
  %cmp350 = icmp eq i32 %296, %297
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %if.end349
  br label %s_state_out_len_eq_one

if.end353:                                        ; preds = %if.end349
  store i32 2, i32* %c_state_out_len, align 4, !tbaa !2
  %298 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %299 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %idxprom354 = zext i32 %299 to i64
  %arrayidx355 = getelementptr inbounds i32, i32* %298, i64 %idxprom354
  %300 = load i32, i32* %arrayidx355, align 4, !tbaa !2
  store i32 %300, i32* %c_tPos, align 4, !tbaa !2
  %301 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %and356 = and i32 %301, 255
  %conv357 = trunc i32 %and356 to i8
  store i8 %conv357, i8* %k1, align 1, !tbaa !40
  %302 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %shr358 = lshr i32 %302, 8
  store i32 %shr358, i32* %c_tPos, align 4, !tbaa !2
  %303 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %inc359 = add nsw i32 %303, 1
  store i32 %inc359, i32* %c_nblock_used, align 4, !tbaa !2
  %304 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %305 = load i32, i32* %s_save_nblockPP, align 4, !tbaa !2
  %cmp360 = icmp eq i32 %304, %305
  br i1 %cmp360, label %if.then362, label %if.end363

if.then362:                                       ; preds = %if.end353
  br label %while.cond289, !llvm.loop !83

if.end363:                                        ; preds = %if.end353
  %306 = load i8, i8* %k1, align 1, !tbaa !40
  %conv364 = zext i8 %306 to i32
  %307 = load i32, i32* %c_k0, align 4, !tbaa !2
  %cmp365 = icmp ne i32 %conv364, %307
  br i1 %cmp365, label %if.then367, label %if.end369

if.then367:                                       ; preds = %if.end363
  %308 = load i8, i8* %k1, align 1, !tbaa !40
  %conv368 = zext i8 %308 to i32
  store i32 %conv368, i32* %c_k0, align 4, !tbaa !2
  br label %while.cond289, !llvm.loop !83

if.end369:                                        ; preds = %if.end363
  store i32 3, i32* %c_state_out_len, align 4, !tbaa !2
  %309 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %310 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %idxprom370 = zext i32 %310 to i64
  %arrayidx371 = getelementptr inbounds i32, i32* %309, i64 %idxprom370
  %311 = load i32, i32* %arrayidx371, align 4, !tbaa !2
  store i32 %311, i32* %c_tPos, align 4, !tbaa !2
  %312 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %and372 = and i32 %312, 255
  %conv373 = trunc i32 %and372 to i8
  store i8 %conv373, i8* %k1, align 1, !tbaa !40
  %313 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %shr374 = lshr i32 %313, 8
  store i32 %shr374, i32* %c_tPos, align 4, !tbaa !2
  %314 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %inc375 = add nsw i32 %314, 1
  store i32 %inc375, i32* %c_nblock_used, align 4, !tbaa !2
  %315 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %316 = load i32, i32* %s_save_nblockPP, align 4, !tbaa !2
  %cmp376 = icmp eq i32 %315, %316
  br i1 %cmp376, label %if.then378, label %if.end379

if.then378:                                       ; preds = %if.end369
  br label %while.cond289, !llvm.loop !83

if.end379:                                        ; preds = %if.end369
  %317 = load i8, i8* %k1, align 1, !tbaa !40
  %conv380 = zext i8 %317 to i32
  %318 = load i32, i32* %c_k0, align 4, !tbaa !2
  %cmp381 = icmp ne i32 %conv380, %318
  br i1 %cmp381, label %if.then383, label %if.end385

if.then383:                                       ; preds = %if.end379
  %319 = load i8, i8* %k1, align 1, !tbaa !40
  %conv384 = zext i8 %319 to i32
  store i32 %conv384, i32* %c_k0, align 4, !tbaa !2
  br label %while.cond289, !llvm.loop !83

if.end385:                                        ; preds = %if.end379
  %320 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %321 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %idxprom386 = zext i32 %321 to i64
  %arrayidx387 = getelementptr inbounds i32, i32* %320, i64 %idxprom386
  %322 = load i32, i32* %arrayidx387, align 4, !tbaa !2
  store i32 %322, i32* %c_tPos, align 4, !tbaa !2
  %323 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %and388 = and i32 %323, 255
  %conv389 = trunc i32 %and388 to i8
  store i8 %conv389, i8* %k1, align 1, !tbaa !40
  %324 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %shr390 = lshr i32 %324, 8
  store i32 %shr390, i32* %c_tPos, align 4, !tbaa !2
  %325 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %inc391 = add nsw i32 %325, 1
  store i32 %inc391, i32* %c_nblock_used, align 4, !tbaa !2
  %326 = load i8, i8* %k1, align 1, !tbaa !40
  %conv392 = zext i8 %326 to i32
  %add393 = add nsw i32 %conv392, 4
  store i32 %add393, i32* %c_state_out_len, align 4, !tbaa !2
  %327 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %328 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %idxprom394 = zext i32 %328 to i64
  %arrayidx395 = getelementptr inbounds i32, i32* %327, i64 %idxprom394
  %329 = load i32, i32* %arrayidx395, align 4, !tbaa !2
  store i32 %329, i32* %c_tPos, align 4, !tbaa !2
  %330 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %and396 = and i32 %330, 255
  %conv397 = trunc i32 %and396 to i8
  %conv398 = zext i8 %conv397 to i32
  store i32 %conv398, i32* %c_k0, align 4, !tbaa !2
  %331 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %shr399 = lshr i32 %331, 8
  store i32 %shr399, i32* %c_tPos, align 4, !tbaa !2
  %332 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %inc400 = add nsw i32 %332, 1
  store i32 %inc400, i32* %c_nblock_used, align 4, !tbaa !2
  br label %while.cond289, !llvm.loop !83

return_notr:                                      ; preds = %if.then335, %if.then317, %if.then298
  %333 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm401 = getelementptr inbounds %struct.DState, %struct.DState* %333, i32 0, i32 0
  %334 = load %struct.bz_stream*, %struct.bz_stream** %strm401, align 8, !tbaa !46
  %total_out_lo32402 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %334, i32 0, i32 6
  %335 = load i32, i32* %total_out_lo32402, align 4, !tbaa !32
  store i32 %335, i32* %total_out_lo32_old, align 4, !tbaa !2
  %336 = load i32, i32* %avail_out_INIT, align 4, !tbaa !2
  %337 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %sub = sub i32 %336, %337
  %338 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm403 = getelementptr inbounds %struct.DState, %struct.DState* %338, i32 0, i32 0
  %339 = load %struct.bz_stream*, %struct.bz_stream** %strm403, align 8, !tbaa !46
  %total_out_lo32404 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %339, i32 0, i32 6
  %340 = load i32, i32* %total_out_lo32404, align 4, !tbaa !32
  %add405 = add i32 %340, %sub
  store i32 %add405, i32* %total_out_lo32404, align 4, !tbaa !32
  %341 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm406 = getelementptr inbounds %struct.DState, %struct.DState* %341, i32 0, i32 0
  %342 = load %struct.bz_stream*, %struct.bz_stream** %strm406, align 8, !tbaa !46
  %total_out_lo32407 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %342, i32 0, i32 6
  %343 = load i32, i32* %total_out_lo32407, align 4, !tbaa !32
  %344 = load i32, i32* %total_out_lo32_old, align 4, !tbaa !2
  %cmp408 = icmp ult i32 %343, %344
  br i1 %cmp408, label %if.then410, label %if.end414

if.then410:                                       ; preds = %return_notr
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm411 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 0
  %346 = load %struct.bz_stream*, %struct.bz_stream** %strm411, align 8, !tbaa !46
  %total_out_hi32412 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %346, i32 0, i32 7
  %347 = load i32, i32* %total_out_hi32412, align 8, !tbaa !33
  %inc413 = add i32 %347, 1
  store i32 %inc413, i32* %total_out_hi32412, align 8, !tbaa !33
  br label %if.end414

if.end414:                                        ; preds = %if.then410, %return_notr
  %348 = load i32, i32* %c_calculatedBlockCRC, align 4, !tbaa !2
  %349 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %calculatedBlockCRC415 = getelementptr inbounds %struct.DState, %struct.DState* %349, i32 0, i32 25
  store i32 %348, i32* %calculatedBlockCRC415, align 8, !tbaa !62
  %350 = load i8, i8* %c_state_out_ch, align 1, !tbaa !40
  %351 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_ch416 = getelementptr inbounds %struct.DState, %struct.DState* %351, i32 0, i32 2
  store i8 %350, i8* %state_out_ch416, align 4, !tbaa !68
  %352 = load i32, i32* %c_state_out_len, align 4, !tbaa !2
  %353 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %state_out_len417 = getelementptr inbounds %struct.DState, %struct.DState* %353, i32 0, i32 3
  store i32 %352, i32* %state_out_len417, align 8, !tbaa !61
  %354 = load i32, i32* %c_nblock_used, align 4, !tbaa !2
  %355 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %nblock_used418 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 17
  store i32 %354, i32* %nblock_used418, align 4, !tbaa !59
  %356 = load i32, i32* %c_k0, align 4, !tbaa !2
  %357 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %k0419 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 15
  store i32 %356, i32* %k0419, align 8, !tbaa !71
  %358 = load i32*, i32** %c_tt, align 8, !tbaa !6
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tt420 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 20
  store i32* %358, i32** %tt420, align 8, !tbaa !55
  %360 = load i32, i32* %c_tPos, align 4, !tbaa !2
  %361 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %tPos421 = getelementptr inbounds %struct.DState, %struct.DState* %361, i32 0, i32 14
  store i32 %360, i32* %tPos421, align 4, !tbaa !72
  %362 = load i8*, i8** %cs_next_out, align 8, !tbaa !6
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm422 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 0
  %364 = load %struct.bz_stream*, %struct.bz_stream** %strm422, align 8, !tbaa !46
  %next_out423 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %364, i32 0, i32 4
  store i8* %362, i8** %next_out423, align 8, !tbaa !69
  %365 = load i32, i32* %cs_avail_out, align 4, !tbaa !2
  %366 = load %struct.DState*, %struct.DState** %s.addr, align 8, !tbaa !6
  %strm424 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 0
  %367 = load %struct.bz_stream*, %struct.bz_stream** %strm424, align 8, !tbaa !46
  %avail_out425 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %367, i32 0, i32 5
  store i32 %365, i32* %avail_out425, align 8, !tbaa !67
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end414, %if.then331
  %368 = bitcast i32* %total_out_lo32_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %368) #10
  %369 = bitcast i32* %s_save_nblockPP to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %369) #10
  %370 = bitcast i32* %avail_out_INIT to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %370) #10
  %371 = bitcast i32* %cs_avail_out to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %371) #10
  %372 = bitcast i8** %cs_next_out to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %372) #10
  %373 = bitcast i32* %c_tPos to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %373) #10
  %374 = bitcast i32** %c_tt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %374) #10
  %375 = bitcast i32* %c_k0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %375) #10
  %376 = bitcast i32* %c_nblock_used to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %376) #10
  %377 = bitcast i32* %c_state_out_len to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %377) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c_state_out_ch) #10
  %378 = bitcast i32* %c_calculatedBlockCRC to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %378) #10
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup438 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end437

if.end437:                                        ; preds = %cleanup.cont
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup438

cleanup438:                                       ; preds = %if.end437, %cleanup, %if.then36, %if.then29, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %k1) #10
  %379 = load i8, i8* %retval, align 1
  ret i8 %379
}

declare dso_local i32 @BZ2_decompress(%struct.DState*) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.DState*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %0 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct.bz_stream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2, i32 0, i32 8
  %3 = load i8*, i8** %state, align 8, !tbaa !29
  %4 = bitcast i8* %3 to %struct.DState*
  store %struct.DState* %4, %struct.DState** %s, align 8, !tbaa !6
  %5 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %cmp1 = icmp eq %struct.DState* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8, !tbaa !46
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %cmp5 = icmp ne %struct.bz_stream* %7, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 20
  %10 = load i32*, i32** %tt, align 8, !tbaa !55
  %cmp8 = icmp ne i32* %10, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 11
  %14 = load i8*, i8** %opaque, align 8, !tbaa !11
  %15 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %tt10 = getelementptr inbounds %struct.DState, %struct.DState* %15, i32 0, i32 20
  %16 = load i32*, i32** %tt10, align 8, !tbaa !55
  %17 = bitcast i32* %16 to i8*
  call void %12(i8* %14, i8* %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %18 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 21
  %19 = load i16*, i16** %ll16, align 8, !tbaa !54
  %cmp12 = icmp ne i16* %19, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %20 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %20, i32 0, i32 10
  %21 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8, !tbaa !10
  %22 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %22, i32 0, i32 11
  %23 = load i8*, i8** %opaque15, align 8, !tbaa !11
  %24 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll1616 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 21
  %25 = load i16*, i16** %ll1616, align 8, !tbaa !54
  %26 = bitcast i16* %25 to i8*
  call void %21(i8* %23, i8* %26)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %27 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 22
  %28 = load i8*, i8** %ll4, align 8, !tbaa !53
  %cmp18 = icmp ne i8* %28, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %30 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8, !tbaa !10
  %31 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 11
  %32 = load i8*, i8** %opaque21, align 8, !tbaa !11
  %33 = load %struct.DState*, %struct.DState** %s, align 8, !tbaa !6
  %ll422 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 22
  %34 = load i8*, i8** %ll422, align 8, !tbaa !53
  call void %30(i8* %32, i8* %34)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 10
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8, !tbaa !10
  %37 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %37, i32 0, i32 11
  %38 = load i8*, i8** %opaque25, align 8, !tbaa !11
  %39 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %39, i32 0, i32 8
  %40 = load i8*, i8** %state26, align 8, !tbaa !29
  call void %36(i8* %38, i8* %40)
  %41 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8, !tbaa !6
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %41, i32 0, i32 8
  store i8* null, i8** %state27, align 8, !tbaa !29
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %42 = bitcast %struct.DState** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #10
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzWriteOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4, !tbaa !2
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  store i32 %workFactor, i32* %workFactor.addr, align 4, !tbaa !2
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #10
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8, !tbaa !6
  %2 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %3, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %cmp4 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp4, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %7, 1
  br i1 %cmp5, label %if.then16, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp7 = icmp sgt i32 %8, 9
  br i1 %cmp7, label %if.then16, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %9 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %10 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp11 = icmp sgt i32 %10, 250
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %11 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp13 = icmp slt i32 %11, 0
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %12 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp15 = icmp sgt i32 %12, 4
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %if.end3
  %13 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp17 = icmp ne i32* %13, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %14 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %14, align 4, !tbaa !2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp20 = icmp ne %struct.bzFile* %15, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr22 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 -2, i32* %lastErr22, align 8, !tbaa !84
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call = call i32 @ferror(%struct._IO_FILE* %17) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end24
  %18 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp26 = icmp ne i32* %18, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  %19 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %19, align 4, !tbaa !2
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp29 = icmp ne %struct.bzFile* %20, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr31 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %21, i32 0, i32 5
  store i32 -6, i32* %lastErr31, align 8, !tbaa !84
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %call34 = call noalias i8* @malloc(i64 5104) #10
  %22 = bitcast i8* %call34 to %struct.bzFile*
  store %struct.bzFile* %22, %struct.bzFile** %bzf, align 8, !tbaa !6
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp35 = icmp eq %struct.bzFile* %23, null
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %24 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp37 = icmp ne i32* %24, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then36
  %25 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -3, i32* %25, align 4, !tbaa !2
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp40 = icmp ne %struct.bzFile* %26, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 5
  store i32 -3, i32* %lastErr42, align 8, !tbaa !84
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %28 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp45 = icmp ne i32* %28, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  %29 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %29, align 4, !tbaa !2
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp48 = icmp ne %struct.bzFile* %30, null
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 5
  store i32 0, i32* %lastErr50, align 8, !tbaa !84
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 4, !tbaa !86
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 2
  store i32 0, i32* %bufN, align 8, !tbaa !87
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 0
  store %struct._IO_FILE* %34, %struct._IO_FILE** %handle, align 8, !tbaa !88
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 3
  store i8 1, i8* %writing, align 4, !tbaa !89
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !90
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm52, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8, !tbaa !91
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm53 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm53, i32 0, i32 11
  store i8* null, i8** %opaque, align 8, !tbaa !92
  %40 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp54 = icmp eq i32 %40, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 30, i32* %workFactor.addr, align 4, !tbaa !2
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 4
  %42 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %43 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %44 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %call58 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm57, i32 %42, i32 %43, i32 %44)
  store i32 %call58, i32* %ret, align 4, !tbaa !2
  %45 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp59 = icmp ne i32 %45, 0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %if.end56
  %46 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp61 = icmp ne i32* %46, null
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then60
  %47 = load i32, i32* %ret, align 4, !tbaa !2
  %48 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 %47, i32* %48, align 4, !tbaa !2
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then60
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp64 = icmp ne %struct.bzFile* %49, null
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  %50 = load i32, i32* %ret, align 4, !tbaa !2
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 5
  store i32 %50, i32* %lastErr66, align 8, !tbaa !84
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %53 = bitcast %struct.bzFile* %52 to i8*
  call void @free(i8* %53) #10
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end56
  %54 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm69 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm69, i32 0, i32 1
  store i32 0, i32* %avail_in, align 8, !tbaa !93
  %55 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %initialisedOk70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %55, i32 0, i32 6
  store i8 1, i8* %initialisedOk70, align 4, !tbaa !86
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %57 = bitcast %struct.bzFile* %56 to i8*
  store i8* %57, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end67, %if.end43, %if.end32, %if.end23
  %58 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #10
  %59 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #10
  %60 = load i8*, i8** %retval, align 8
  ret i8* %60
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i32 %len, i32* %len.addr, align 4, !tbaa !2
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #10
  %3 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #10
  %4 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %5 = bitcast i8* %4 to %struct.bzFile*
  store %struct.bzFile* %5, %struct.bzFile** %bzf, align 8, !tbaa !6
  %6 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %7, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp1 = icmp ne %struct.bzFile* %8, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %9, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp4 = icmp eq %struct.bzFile* %10, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %cmp5 = icmp eq i8* %11, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = load i32, i32* %len.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %13 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp9 = icmp ne i32* %13, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %14 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %14, align 4, !tbaa !2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp12 = icmp ne %struct.bzFile* %15, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 8, !tbaa !84
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 3
  %18 = load i8, i8* %writing, align 4, !tbaa !89
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end16
  %19 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp18 = icmp ne i32* %19, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %20 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -1, i32* %20, align 4, !tbaa !2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp21 = icmp ne %struct.bzFile* %21, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 8, !tbaa !84
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8, !tbaa !88
  %call = call i32 @ferror(%struct._IO_FILE* %24) #10
  %tobool26 = icmp ne i32 %call, 0
  br i1 %tobool26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %25 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp28 = icmp ne i32* %25, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %26 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %26, align 4, !tbaa !2
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp31 = icmp ne %struct.bzFile* %27, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 5
  store i32 -6, i32* %lastErr33, align 8, !tbaa !84
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %29 = load i32, i32* %len.addr, align 4, !tbaa !2
  %cmp36 = icmp eq i32 %29, 0
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %30 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp38 = icmp ne i32* %30, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then37
  %31 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %31, align 4, !tbaa !2
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp41 = icmp ne %struct.bzFile* %32, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 5
  store i32 0, i32* %lastErr43, align 8, !tbaa !84
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %34 = load i32, i32* %len.addr, align 4, !tbaa !2
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %34, i32* %avail_in, align 8, !tbaa !93
  %36 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm46 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm46, i32 0, i32 0
  store i8* %36, i8** %next_in, align 8, !tbaa !94
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %if.end45
  br label %while.body

while.body:                                       ; preds = %while.cond
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm47, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 8, !tbaa !95
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf48, i64 0, i64 0
  %40 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm49 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm49, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8, !tbaa !96
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 4
  %call51 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm50, i32 0)
  store i32 %call51, i32* %ret, align 4, !tbaa !2
  %42 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp52 = icmp ne i32 %42, 1
  br i1 %cmp52, label %if.then53, label %if.end61

if.then53:                                        ; preds = %while.body
  %43 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp54 = icmp ne i32* %43, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then53
  %44 = load i32, i32* %ret, align 4, !tbaa !2
  %45 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 %44, i32* %45, align 4, !tbaa !2
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp57 = icmp ne %struct.bzFile* %46, null
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %47 = load i32, i32* %ret, align 4, !tbaa !2
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr59 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %48, i32 0, i32 5
  store i32 %47, i32* %lastErr59, align 8, !tbaa !84
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %while.body
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 4
  %avail_out63 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm62, i32 0, i32 5
  %50 = load i32, i32* %avail_out63, align 8, !tbaa !95
  %cmp64 = icmp ult i32 %50, 5000
  br i1 %cmp64, label %if.then65, label %if.end90

if.then65:                                        ; preds = %if.end61
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 4
  %avail_out67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm66, i32 0, i32 5
  %52 = load i32, i32* %avail_out67, align 8, !tbaa !95
  %sub = sub i32 5000, %52
  store i32 %sub, i32* %n, align 4, !tbaa !2
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf68 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 1
  %arraydecay69 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf68, i64 0, i64 0
  %54 = load i32, i32* %n, align 4, !tbaa !2
  %conv = sext i32 %54 to i64
  %55 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %55, i32 0, i32 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %handle70, align 8, !tbaa !88
  %call71 = call i64 @fwrite(i8* %arraydecay69, i64 1, i64 %conv, %struct._IO_FILE* %56)
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, i32* %n2, align 4, !tbaa !2
  %57 = load i32, i32* %n, align 4, !tbaa !2
  %58 = load i32, i32* %n2, align 4, !tbaa !2
  %cmp73 = icmp ne i32 %57, %58
  br i1 %cmp73, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then65
  %59 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %59, i32 0, i32 0
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %handle76, align 8, !tbaa !88
  %call77 = call i32 @ferror(%struct._IO_FILE* %60) #10
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end89

if.then79:                                        ; preds = %lor.lhs.false75, %if.then65
  %61 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp80 = icmp ne i32* %61, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %62 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %62, align 4, !tbaa !2
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %63 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp84 = icmp ne %struct.bzFile* %63, null
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end83
  %64 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr87 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %64, i32 0, i32 5
  store i32 -6, i32* %lastErr87, align 8, !tbaa !84
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end83
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false75
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end61
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm91 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 4
  %avail_in92 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm91, i32 0, i32 1
  %66 = load i32, i32* %avail_in92, align 8, !tbaa !93
  %cmp93 = icmp eq i32 %66, 0
  br i1 %cmp93, label %if.then95, label %if.end105

if.then95:                                        ; preds = %if.end90
  %67 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp96 = icmp ne i32* %67, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  %68 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %68, align 4, !tbaa !2
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then95
  %69 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp100 = icmp ne %struct.bzFile* %69, null
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %70 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 5
  store i32 0, i32* %lastErr103, align 8, !tbaa !84
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.end90
  br label %while.cond, !llvm.loop !97

cleanup:                                          ; preds = %if.end104, %if.end88, %if.end60, %if.end44, %if.end34, %if.end24, %if.end15
  %71 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #10
  %72 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #10
  %73 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #10
  %74 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #10
  ret void
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in.addr = alloca i32*, align 8
  %nbytes_out.addr = alloca i32*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i32 %abandon, i32* %abandon.addr, align 4, !tbaa !2
  store i32* %nbytes_in, i32** %nbytes_in.addr, align 8, !tbaa !6
  store i32* %nbytes_out, i32** %nbytes_out.addr, align 8, !tbaa !6
  %0 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %2 = load i32, i32* %abandon.addr, align 4, !tbaa !2
  %3 = load i32*, i32** %nbytes_in.addr, align 8, !tbaa !6
  %4 = load i32*, i32** %nbytes_out.addr, align 8, !tbaa !6
  call void @BZ2_bzWriteClose64(i32* %0, i8* %1, i32 %2, i32* %3, i32* null, i32* %4, i32* null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in_lo32.addr = alloca i32*, align 8
  %nbytes_in_hi32.addr = alloca i32*, align 8
  %nbytes_out_lo32.addr = alloca i32*, align 8
  %nbytes_out_hi32.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i32 %abandon, i32* %abandon.addr, align 4, !tbaa !2
  store i32* %nbytes_in_lo32, i32** %nbytes_in_lo32.addr, align 8, !tbaa !6
  store i32* %nbytes_in_hi32, i32** %nbytes_in_hi32.addr, align 8, !tbaa !6
  store i32* %nbytes_out_lo32, i32** %nbytes_out_lo32.addr, align 8, !tbaa !6
  store i32* %nbytes_out_hi32, i32** %nbytes_out_hi32.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #10
  %3 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #10
  %4 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %5 = bitcast i8* %4 to %struct.bzFile*
  store %struct.bzFile* %5, %struct.bzFile** %bzf, align 8, !tbaa !6
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp = icmp eq %struct.bzFile* %6, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp1 = icmp ne i32* %7, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %8, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp3 = icmp ne %struct.bzFile* %9, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %10, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 3
  %12 = load i8, i8* %writing, align 4, !tbaa !89
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end6
  %13 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp8 = icmp ne i32* %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %14 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -1, i32* %14, align 4, !tbaa !2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp11 = icmp ne %struct.bzFile* %15, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr13 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 -1, i32* %lastErr13, align 8, !tbaa !84
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8, !tbaa !88
  %call = call i32 @ferror(%struct._IO_FILE* %18) #10
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %19 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp18 = icmp ne i32* %19, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %20 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %20, align 4, !tbaa !2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp21 = icmp ne %struct.bzFile* %21, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 -6, i32* %lastErr23, align 8, !tbaa !84
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %23 = load i32*, i32** %nbytes_in_lo32.addr, align 8, !tbaa !6
  %cmp26 = icmp ne i32* %23, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  %24 = load i32*, i32** %nbytes_in_lo32.addr, align 8, !tbaa !6
  store i32 0, i32* %24, align 4, !tbaa !2
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %25 = load i32*, i32** %nbytes_in_hi32.addr, align 8, !tbaa !6
  %cmp29 = icmp ne i32* %25, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %26 = load i32*, i32** %nbytes_in_hi32.addr, align 8, !tbaa !6
  store i32 0, i32* %26, align 4, !tbaa !2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %27 = load i32*, i32** %nbytes_out_lo32.addr, align 8, !tbaa !6
  %cmp32 = icmp ne i32* %27, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %28 = load i32*, i32** %nbytes_out_lo32.addr, align 8, !tbaa !6
  store i32 0, i32* %28, align 4, !tbaa !2
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %29 = load i32*, i32** %nbytes_out_hi32.addr, align 8, !tbaa !6
  %cmp35 = icmp ne i32* %29, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %30 = load i32*, i32** %nbytes_out_hi32.addr, align 8, !tbaa !6
  store i32 0, i32* %30, align 4, !tbaa !2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %31 = load i32, i32* %abandon.addr, align 4, !tbaa !2
  %tobool38 = icmp ne i32 %31, 0
  br i1 %tobool38, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr39 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 5
  %33 = load i32, i32* %lastErr39, align 8, !tbaa !84
  %cmp40 = icmp eq i32 %33, 0
  br i1 %cmp40, label %if.then41, label %if.end89

if.then41:                                        ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end88, %if.then41
  br label %while.body

while.body:                                       ; preds = %while.cond
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 8, !tbaa !95
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i64 0, i64 0
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm42, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8, !tbaa !96
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %call44 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm43, i32 2)
  store i32 %call44, i32* %ret, align 4, !tbaa !2
  %38 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp45 = icmp ne i32 %38, 3
  br i1 %cmp45, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %while.body
  %39 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp47 = icmp ne i32 %39, 4
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %land.lhs.true46
  %40 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp49 = icmp ne i32* %40, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  %41 = load i32, i32* %ret, align 4, !tbaa !2
  %42 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 %41, i32* %42, align 4, !tbaa !2
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %43 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp52 = icmp ne %struct.bzFile* %43, null
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %44 = load i32, i32* %ret, align 4, !tbaa !2
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr54 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %45, i32 0, i32 5
  store i32 %44, i32* %lastErr54, align 8, !tbaa !84
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true46, %while.body
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %46, i32 0, i32 4
  %avail_out58 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm57, i32 0, i32 5
  %47 = load i32, i32* %avail_out58, align 8, !tbaa !95
  %cmp59 = icmp ult i32 %47, 5000
  br i1 %cmp59, label %if.then60, label %if.end84

if.then60:                                        ; preds = %if.end56
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %48, i32 0, i32 4
  %avail_out62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm61, i32 0, i32 5
  %49 = load i32, i32* %avail_out62, align 8, !tbaa !95
  %sub = sub i32 5000, %49
  store i32 %sub, i32* %n, align 4, !tbaa !2
  %50 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf63 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %50, i32 0, i32 1
  %arraydecay64 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf63, i64 0, i64 0
  %51 = load i32, i32* %n, align 4, !tbaa !2
  %conv = sext i32 %51 to i64
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle65 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %handle65, align 8, !tbaa !88
  %call66 = call i64 @fwrite(i8* %arraydecay64, i64 1, i64 %conv, %struct._IO_FILE* %53)
  %conv67 = trunc i64 %call66 to i32
  store i32 %conv67, i32* %n2, align 4, !tbaa !2
  %54 = load i32, i32* %n, align 4, !tbaa !2
  %55 = load i32, i32* %n2, align 4, !tbaa !2
  %cmp68 = icmp ne i32 %54, %55
  br i1 %cmp68, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then60
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %56, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %handle70, align 8, !tbaa !88
  %call71 = call i32 @ferror(%struct._IO_FILE* %57) #10
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %lor.lhs.false, %if.then60
  %58 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp74 = icmp ne i32* %58, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then73
  %59 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %59, align 4, !tbaa !2
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp78 = icmp ne %struct.bzFile* %60, null
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr81 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %61, i32 0, i32 5
  store i32 -6, i32* %lastErr81, align 8, !tbaa !84
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end83:                                         ; preds = %lor.lhs.false
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end56
  %62 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp85 = icmp eq i32 %62, 4
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  br label %while.end

if.end88:                                         ; preds = %if.end84
  br label %while.cond, !llvm.loop !98

while.end:                                        ; preds = %if.then87
  br label %if.end89

if.end89:                                         ; preds = %while.end, %land.lhs.true, %if.end37
  %63 = load i32, i32* %abandon.addr, align 4, !tbaa !2
  %tobool90 = icmp ne i32 %63, 0
  br i1 %tobool90, label %if.end112, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %64 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %64, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %handle92, align 8, !tbaa !88
  %call93 = call i32 @ferror(%struct._IO_FILE* %65) #10
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end112, label %if.then95

if.then95:                                        ; preds = %land.lhs.true91
  %66 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle96 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %66, i32 0, i32 0
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %handle96, align 8, !tbaa !88
  %call97 = call i32 @fflush(%struct._IO_FILE* %67)
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %68, i32 0, i32 0
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %handle98, align 8, !tbaa !88
  %call99 = call i32 @ferror(%struct._IO_FILE* %69) #10
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end111

if.then101:                                       ; preds = %if.then95
  %70 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp102 = icmp ne i32* %70, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  %71 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %71, align 4, !tbaa !2
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then101
  %72 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp106 = icmp ne %struct.bzFile* %72, null
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end105
  %73 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr109 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %73, i32 0, i32 5
  store i32 -6, i32* %lastErr109, align 8, !tbaa !84
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end111:                                        ; preds = %if.then95
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %land.lhs.true91, %if.end89
  %74 = load i32*, i32** %nbytes_in_lo32.addr, align 8, !tbaa !6
  %cmp113 = icmp ne i32* %74, null
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %75 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm116 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 4
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm116, i32 0, i32 2
  %76 = load i32, i32* %total_in_lo32, align 4, !tbaa !99
  %77 = load i32*, i32** %nbytes_in_lo32.addr, align 8, !tbaa !6
  store i32 %76, i32* %77, align 4, !tbaa !2
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %78 = load i32*, i32** %nbytes_in_hi32.addr, align 8, !tbaa !6
  %cmp118 = icmp ne i32* %78, null
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  %79 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm121 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %79, i32 0, i32 4
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm121, i32 0, i32 3
  %80 = load i32, i32* %total_in_hi32, align 8, !tbaa !100
  %81 = load i32*, i32** %nbytes_in_hi32.addr, align 8, !tbaa !6
  store i32 %80, i32* %81, align 4, !tbaa !2
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  %82 = load i32*, i32** %nbytes_out_lo32.addr, align 8, !tbaa !6
  %cmp123 = icmp ne i32* %82, null
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end122
  %83 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm126 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %83, i32 0, i32 4
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm126, i32 0, i32 6
  %84 = load i32, i32* %total_out_lo32, align 4, !tbaa !101
  %85 = load i32*, i32** %nbytes_out_lo32.addr, align 8, !tbaa !6
  store i32 %84, i32* %85, align 4, !tbaa !2
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122
  %86 = load i32*, i32** %nbytes_out_hi32.addr, align 8, !tbaa !6
  %cmp128 = icmp ne i32* %86, null
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end127
  %87 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm131 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %87, i32 0, i32 4
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm131, i32 0, i32 7
  %88 = load i32, i32* %total_out_hi32, align 8, !tbaa !102
  %89 = load i32*, i32** %nbytes_out_hi32.addr, align 8, !tbaa !6
  store i32 %88, i32* %89, align 4, !tbaa !2
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127
  %90 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp133 = icmp ne i32* %90, null
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  %91 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %91, align 4, !tbaa !2
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end132
  %92 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp137 = icmp ne %struct.bzFile* %92, null
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end136
  %93 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr140 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %93, i32 0, i32 5
  store i32 0, i32* %lastErr140, align 8, !tbaa !84
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136
  %94 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm142 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %94, i32 0, i32 4
  %call143 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm142)
  %95 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %96 = bitcast %struct.bzFile* %95 to i8*
  call void @free(i8* %96) #10
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end110, %if.end82, %if.end55, %if.end24, %if.end14, %if.end5
  %97 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #10
  %98 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #10
  %99 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #10
  %100 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #10
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

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzReadOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %verbosity, i32 %small, i8* %unused, i32 %nUnused) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %unused.addr = alloca i8*, align 8
  %nUnused.addr = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  store i32 %small, i32* %small.addr, align 4, !tbaa !2
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !6
  store i32 %nUnused, i32* %nUnused.addr, align 4, !tbaa !2
  %0 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8, !tbaa !6
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %3, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %cmp4 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp4, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp6 = icmp ne i32 %8, 1
  br i1 %cmp6, label %if.then21, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %10 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp10 = icmp sgt i32 %10, 4
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %11 = load i8*, i8** %unused.addr, align 8, !tbaa !6
  %cmp12 = icmp eq i8* %11, null
  br i1 %cmp12, label %land.lhs.true13, label %lor.lhs.false15

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %12 = load i32, i32* %nUnused.addr, align 4, !tbaa !2
  %cmp14 = icmp ne i32 %12, 0
  br i1 %cmp14, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true13, %lor.lhs.false11
  %13 = load i8*, i8** %unused.addr, align 8, !tbaa !6
  %cmp16 = icmp ne i8* %13, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end29

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %14 = load i32, i32* %nUnused.addr, align 4, !tbaa !2
  %cmp18 = icmp slt i32 %14, 0
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %15 = load i32, i32* %nUnused.addr, align 4, !tbaa !2
  %cmp20 = icmp sgt i32 %15, 5000
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true17, %land.lhs.true13, %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %if.end3
  %16 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp22 = icmp ne i32* %16, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %17 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %17, align 4, !tbaa !2
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp25 = icmp ne %struct.bzFile* %18, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr27 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 5
  store i32 -2, i32* %lastErr27, align 8, !tbaa !84
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false19, %lor.lhs.false15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call = call i32 @ferror(%struct._IO_FILE* %20) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end29
  %21 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp31 = icmp ne i32* %21, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  %22 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %22, align 4, !tbaa !2
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp34 = icmp ne %struct.bzFile* %23, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 5
  store i32 -6, i32* %lastErr36, align 8, !tbaa !84
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %call39 = call noalias i8* @malloc(i64 5104) #10
  %25 = bitcast i8* %call39 to %struct.bzFile*
  store %struct.bzFile* %25, %struct.bzFile** %bzf, align 8, !tbaa !6
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp40 = icmp eq %struct.bzFile* %26, null
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end38
  %27 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp42 = icmp ne i32* %27, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then41
  %28 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -3, i32* %28, align 4, !tbaa !2
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then41
  %29 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp45 = icmp ne %struct.bzFile* %29, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end44
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 5
  store i32 -3, i32* %lastErr47, align 8, !tbaa !84
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %31 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp50 = icmp ne i32* %31, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %32 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %32, align 4, !tbaa !2
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp53 = icmp ne %struct.bzFile* %33, null
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr55 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 5
  store i32 0, i32* %lastErr55, align 8, !tbaa !84
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 4, !tbaa !86
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 0
  store %struct._IO_FILE* %36, %struct._IO_FILE** %handle, align 8, !tbaa !88
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 2
  store i32 0, i32* %bufN, align 8, !tbaa !87
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 3
  store i8 0, i8* %writing, align 4, !tbaa !89
  %40 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !90
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm57, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8, !tbaa !91
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm58 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm58, i32 0, i32 11
  store i8* null, i8** %opaque, align 8, !tbaa !92
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end56
  %43 = load i32, i32* %nUnused.addr, align 4, !tbaa !2
  %cmp59 = icmp sgt i32 %43, 0
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %unused.addr, align 8, !tbaa !6
  %45 = load i8, i8* %44, align 1, !tbaa !40
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %46, i32 0, i32 1
  %47 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN60 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 2
  %48 = load i32, i32* %bufN60, align 8, !tbaa !87
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i64 0, i64 %idxprom
  store i8 %45, i8* %arrayidx, align 1, !tbaa !40
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 2
  %50 = load i32, i32* %bufN61, align 8, !tbaa !87
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %bufN61, align 8, !tbaa !87
  %51 = load i8*, i8** %unused.addr, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %add.ptr, i8** %unused.addr, align 8, !tbaa !6
  %52 = load i32, i32* %nUnused.addr, align 4, !tbaa !2
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %nUnused.addr, align 4, !tbaa !2
  br label %while.cond, !llvm.loop !103

while.end:                                        ; preds = %while.cond
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 4
  %54 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %55 = load i32, i32* %small.addr, align 4, !tbaa !2
  %call63 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm62, i32 %54, i32 %55)
  store i32 %call63, i32* %ret, align 4, !tbaa !2
  %56 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp64 = icmp ne i32 %56, 0
  br i1 %cmp64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %while.end
  %57 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp66 = icmp ne i32* %57, null
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then65
  %58 = load i32, i32* %ret, align 4, !tbaa !2
  %59 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 %58, i32* %59, align 4, !tbaa !2
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then65
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp69 = icmp ne %struct.bzFile* %60, null
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end68
  %61 = load i32, i32* %ret, align 4, !tbaa !2
  %62 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %62, i32 0, i32 5
  store i32 %61, i32* %lastErr71, align 8, !tbaa !84
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  %63 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %64 = bitcast %struct.bzFile* %63 to i8*
  call void @free(i8* %64) #10
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %while.end
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN74 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 2
  %66 = load i32, i32* %bufN74, align 8, !tbaa !87
  %67 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm75 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %67, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm75, i32 0, i32 1
  store i32 %66, i32* %avail_in, align 8, !tbaa !93
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %68, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf76, i64 0, i64 0
  %69 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm77 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %69, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm77, i32 0, i32 0
  store i8* %arraydecay, i8** %next_in, align 8, !tbaa !94
  %70 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %initialisedOk78 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 6
  store i8 1, i8* %initialisedOk78, align 4, !tbaa !86
  %71 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %72 = bitcast %struct.bzFile* %71 to i8*
  store i8* %72, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end72, %if.end48, %if.end37, %if.end28
  %73 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #10
  %74 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #10
  %75 = load i8*, i8** %retval, align 8
  ret i8* %75
}

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  %0 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %2 = bitcast i8* %1 to %struct.bzFile*
  store %struct.bzFile* %2, %struct.bzFile** %bzf, align 8, !tbaa !6
  %3 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp = icmp ne i32* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %4, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp1 = icmp ne %struct.bzFile* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp4 = icmp eq %struct.bzFile* %7, null
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end3
  %8 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp6 = icmp ne i32* %8, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %9 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %9, align 4, !tbaa !2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %10 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp9 = icmp ne %struct.bzFile* %10, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr11 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 5
  store i32 0, i32* %lastErr11, align 8, !tbaa !84
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 3
  %13 = load i8, i8* %writing, align 4, !tbaa !89
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end13
  %14 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp15 = icmp ne i32* %14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %15 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -1, i32* %15, align 4, !tbaa !2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp18 = icmp ne %struct.bzFile* %16, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr20 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 5
  store i32 -1, i32* %lastErr20, align 8, !tbaa !84
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 6
  %19 = load i8, i8* %initialisedOk, align 4, !tbaa !86
  %tobool23 = icmp ne i8 %19, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %20, i32 0, i32 4
  %call = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %22 = bitcast %struct.bzFile* %21 to i8*
  call void @free(i8* %22) #10
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21, %if.end12
  %23 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #10
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
define dso_local i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i32 %len, i32* %len.addr, align 4, !tbaa !2
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #10
  %3 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %4 = bitcast i8* %3 to %struct.bzFile*
  store %struct.bzFile* %4, %struct.bzFile** %bzf, align 8, !tbaa !6
  %5 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp = icmp ne i32* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %6, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp1 = icmp ne %struct.bzFile* %7, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %8, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8, !tbaa !84
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp4 = icmp eq %struct.bzFile* %9, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %cmp5 = icmp eq i8* %10, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load i32, i32* %len.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %12 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp9 = icmp ne i32* %12, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %13 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %13, align 4, !tbaa !2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %14 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp12 = icmp ne %struct.bzFile* %14, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %15, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 8, !tbaa !84
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 3
  %17 = load i8, i8* %writing, align 4, !tbaa !89
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end16
  %18 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp18 = icmp ne i32* %18, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %19 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -1, i32* %19, align 4, !tbaa !2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp21 = icmp ne %struct.bzFile* %20, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %21, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 8, !tbaa !84
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %22 = load i32, i32* %len.addr, align 4, !tbaa !2
  %cmp26 = icmp eq i32 %22, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %23 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp28 = icmp ne i32* %23, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %24 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %24, align 4, !tbaa !2
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp31 = icmp ne %struct.bzFile* %25, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %26, i32 0, i32 5
  store i32 0, i32* %lastErr33, align 8, !tbaa !84
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %27 = load i32, i32* %len.addr, align 4, !tbaa !2
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %27, i32* %avail_out, align 8, !tbaa !95
  %29 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 4
  store i8* %29, i8** %next_out, align 8, !tbaa !96
  br label %while.cond

while.cond:                                       ; preds = %if.end152, %if.end35
  br label %while.body

while.body:                                       ; preds = %while.cond
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8, !tbaa !88
  %call = call i32 @ferror(%struct._IO_FILE* %32) #10
  %tobool37 = icmp ne i32 %call, 0
  br i1 %tobool37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %while.body
  %33 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp39 = icmp ne i32* %33, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then38
  %34 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %34, align 4, !tbaa !2
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp42 = icmp ne %struct.bzFile* %35, null
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 5
  store i32 -6, i32* %lastErr44, align 8, !tbaa !84
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %while.body
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm47, i32 0, i32 1
  %38 = load i32, i32* %avail_in, align 8, !tbaa !93
  %cmp48 = icmp eq i32 %38, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %if.end46
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle49 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %handle49, align 8, !tbaa !88
  %call50 = call zeroext i8 @myfeof(%struct._IO_FILE* %40)
  %tobool51 = icmp ne i8 %call50, 0
  br i1 %tobool51, label %if.end76, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf53 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf53, i64 0, i64 0
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle54 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %handle54, align 8, !tbaa !88
  %call55 = call i64 @fread(i8* %arraydecay, i64 1, i64 5000, %struct._IO_FILE* %43)
  %conv = trunc i64 %call55 to i32
  store i32 %conv, i32* %n, align 4, !tbaa !2
  %44 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle56 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %44, i32 0, i32 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %handle56, align 8, !tbaa !88
  %call57 = call i32 @ferror(%struct._IO_FILE* %45) #10
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end69

if.then59:                                        ; preds = %if.then52
  %46 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp60 = icmp ne i32* %46, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  %47 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -6, i32* %47, align 4, !tbaa !2
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp64 = icmp ne %struct.bzFile* %48, null
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr67 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 5
  store i32 -6, i32* %lastErr67, align 8, !tbaa !84
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.then52
  %50 = load i32, i32* %n, align 4, !tbaa !2
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 2
  store i32 %50, i32* %bufN, align 8, !tbaa !87
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %bufN70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 2
  %53 = load i32, i32* %bufN70, align 8, !tbaa !87
  %54 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 4
  %avail_in72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm71, i32 0, i32 1
  store i32 %53, i32* %avail_in72, align 8, !tbaa !93
  %55 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %buf73 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %55, i32 0, i32 1
  %arraydecay74 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf73, i64 0, i64 0
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm75 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %56, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm75, i32 0, i32 0
  store i8* %arraydecay74, i8** %next_in, align 8, !tbaa !94
  br label %if.end76

if.end76:                                         ; preds = %if.end69, %land.lhs.true, %if.end46
  %57 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm77 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %57, i32 0, i32 4
  %call78 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm77)
  store i32 %call78, i32* %ret, align 4, !tbaa !2
  %58 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp79 = icmp ne i32 %58, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end94

land.lhs.true81:                                  ; preds = %if.end76
  %59 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp82 = icmp ne i32 %59, 4
  br i1 %cmp82, label %if.then84, label %if.end94

if.then84:                                        ; preds = %land.lhs.true81
  %60 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp85 = icmp ne i32* %60, null
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  %61 = load i32, i32* %ret, align 4, !tbaa !2
  %62 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 %61, i32* %62, align 4, !tbaa !2
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %63 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp89 = icmp ne %struct.bzFile* %63, null
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  %64 = load i32, i32* %ret, align 4, !tbaa !2
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 5
  store i32 %64, i32* %lastErr92, align 8, !tbaa !84
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %land.lhs.true81, %if.end76
  %66 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp95 = icmp eq i32 %66, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.end122

land.lhs.true97:                                  ; preds = %if.end94
  %67 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %handle98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %67, i32 0, i32 0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %handle98, align 8, !tbaa !88
  %call99 = call zeroext i8 @myfeof(%struct._IO_FILE* %68)
  %conv100 = zext i8 %call99 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.end122

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %69 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %69, i32 0, i32 4
  %avail_in104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm103, i32 0, i32 1
  %70 = load i32, i32* %avail_in104, align 8, !tbaa !93
  %cmp105 = icmp eq i32 %70, 0
  br i1 %cmp105, label %land.lhs.true107, label %if.end122

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %71 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm108 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %71, i32 0, i32 4
  %avail_out109 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm108, i32 0, i32 5
  %72 = load i32, i32* %avail_out109, align 8, !tbaa !95
  %cmp110 = icmp ugt i32 %72, 0
  br i1 %cmp110, label %if.then112, label %if.end122

if.then112:                                       ; preds = %land.lhs.true107
  %73 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp113 = icmp ne i32* %73, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.then112
  %74 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -7, i32* %74, align 4, !tbaa !2
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.then112
  %75 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp117 = icmp ne %struct.bzFile* %75, null
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %76 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr120 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %76, i32 0, i32 5
  store i32 -7, i32* %lastErr120, align 8, !tbaa !84
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end122:                                        ; preds = %land.lhs.true107, %land.lhs.true102, %land.lhs.true97, %if.end94
  %77 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp123 = icmp eq i32 %77, 4
  br i1 %cmp123, label %if.then125, label %if.end137

if.then125:                                       ; preds = %if.end122
  %78 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp126 = icmp ne i32* %78, null
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.then125
  %79 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 4, i32* %79, align 4, !tbaa !2
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.then125
  %80 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp130 = icmp ne %struct.bzFile* %80, null
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end129
  %81 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr133 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %81, i32 0, i32 5
  store i32 4, i32* %lastErr133, align 8, !tbaa !84
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129
  %82 = load i32, i32* %len.addr, align 4, !tbaa !2
  %83 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm135 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %83, i32 0, i32 4
  %avail_out136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm135, i32 0, i32 5
  %84 = load i32, i32* %avail_out136, align 8, !tbaa !95
  %sub = sub i32 %82, %84
  store i32 %sub, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %if.end122
  %85 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm138 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %85, i32 0, i32 4
  %avail_out139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm138, i32 0, i32 5
  %86 = load i32, i32* %avail_out139, align 8, !tbaa !95
  %cmp140 = icmp eq i32 %86, 0
  br i1 %cmp140, label %if.then142, label %if.end152

if.then142:                                       ; preds = %if.end137
  %87 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp143 = icmp ne i32* %87, null
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then142
  %88 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %88, align 4, !tbaa !2
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then142
  %89 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp147 = icmp ne %struct.bzFile* %89, null
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end146
  %90 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr150 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %90, i32 0, i32 5
  store i32 0, i32* %lastErr150, align 8, !tbaa !84
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146
  %91 = load i32, i32* %len.addr, align 4, !tbaa !2
  store i32 %91, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end152:                                        ; preds = %if.end137
  br label %while.cond, !llvm.loop !104

cleanup:                                          ; preds = %if.end151, %if.end134, %if.end121, %if.end93, %if.end68, %if.end45, %if.end34, %if.end24, %if.end15
  %92 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #10
  %93 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #10
  %94 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #10
  %95 = load i32, i32* %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @myfeof(%struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i8, align 1
  %f.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call = call i32 @fgetc(%struct._IO_FILE* %1)
  store i32 %call, i32* %c, align 4, !tbaa !2
  %2 = load i32, i32* %c, align 4, !tbaa !2
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %c, align 4, !tbaa !2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call1 = call i32 @ungetc(i32 %3, %struct._IO_FILE* %4)
  store i8 0, i8* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #10
  %6 = load i8, i8* %retval, align 1
  ret i8 %6
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %unused.addr = alloca i8**, align 8
  %nUnused.addr = alloca i32*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i8** %unused, i8*** %unused.addr, align 8, !tbaa !6
  store i32* %nUnused, i32** %nUnused.addr, align 8, !tbaa !6
  %0 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #10
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %2 = bitcast i8* %1 to %struct.bzFile*
  store %struct.bzFile* %2, %struct.bzFile** %bzf, align 8, !tbaa !6
  %3 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp = icmp eq %struct.bzFile* %3, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp1 = icmp ne i32* %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %5, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp3 = icmp ne %struct.bzFile* %6, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 5
  store i32 -2, i32* %lastErr, align 8, !tbaa !84
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %8 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr7 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %8, i32 0, i32 5
  %9 = load i32, i32* %lastErr7, align 8, !tbaa !84
  %cmp8 = icmp ne i32 %9, 4
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %10 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp10 = icmp ne i32* %10, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %11 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -1, i32* %11, align 4, !tbaa !2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp13 = icmp ne %struct.bzFile* %12, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr15 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 5
  store i32 -1, i32* %lastErr15, align 8, !tbaa !84
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %14 = load i8**, i8*** %unused.addr, align 8, !tbaa !6
  %cmp18 = icmp eq i8** %14, null
  br i1 %cmp18, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %15 = load i32*, i32** %nUnused.addr, align 8, !tbaa !6
  %cmp19 = icmp eq i32* %15, null
  br i1 %cmp19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %lor.lhs.false, %if.end17
  %16 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp21 = icmp ne i32* %16, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  %17 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 -2, i32* %17, align 4, !tbaa !2
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp24 = icmp ne %struct.bzFile* %18, null
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr26 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 5
  store i32 -2, i32* %lastErr26, align 8, !tbaa !84
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %20 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  %cmp29 = icmp ne i32* %20, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %21 = load i32*, i32** %bzerror.addr, align 8, !tbaa !6
  store i32 0, i32* %21, align 4, !tbaa !2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %cmp32 = icmp ne %struct.bzFile* %22, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %lastErr34 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %lastErr34, align 8, !tbaa !84
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  %25 = load i32, i32* %avail_in, align 8, !tbaa !93
  %26 = load i32*, i32** %nUnused.addr, align 8, !tbaa !6
  store i32 %25, i32* %26, align 4, !tbaa !2
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8, !tbaa !6
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 0
  %28 = load i8*, i8** %next_in, align 8, !tbaa !94
  %29 = load i8**, i8*** %unused.addr, align 8, !tbaa !6
  store i8* %28, i8** %29, align 8, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end27, %if.end16, %if.end5
  %30 = bitcast %struct.bzFile** %bzf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #10
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
define dso_local i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !6
  store i32* %destLen, i32** %destLen.addr, align 8, !tbaa !6
  store i8* %source, i8** %source.addr, align 8, !tbaa !6
  store i32 %sourceLen, i32* %sourceLen.addr, align 4, !tbaa !2
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4, !tbaa !2
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  store i32 %workFactor, i32* %workFactor.addr, align 4, !tbaa !2
  %0 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %0) #10
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = load i8*, i8** %dest.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %cmp1 = icmp eq i32* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %source.addr, align 8, !tbaa !6
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %6 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %cmp7 = icmp sgt i32 %6, 9
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp9 = icmp slt i32 %7, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp11 = icmp sgt i32 %8, 4
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %9 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp13 = icmp slt i32 %9, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %10 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp15 = icmp sgt i32 %10, 250
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false14
  %11 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  store i32 30, i32* %workFactor.addr, align 4, !tbaa !2
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8, !tbaa !11
  %12 = load i32, i32* %blockSize100k.addr, align 4, !tbaa !2
  %13 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %14 = load i32, i32* %workFactor.addr, align 4, !tbaa !2
  %call = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %12, i32 %13, i32 %14)
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %15 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp19 = icmp ne i32 %15, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %16 = load i32, i32* %ret, align 4, !tbaa !2
  store i32 %16, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %17 = load i8*, i8** %source.addr, align 8, !tbaa !6
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %17, i8** %next_in, align 8, !tbaa !105
  %18 = load i8*, i8** %dest.addr, align 8, !tbaa !6
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %18, i8** %next_out, align 8, !tbaa !69
  %19 = load i32, i32* %sourceLen.addr, align 4, !tbaa !2
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %19, i32* %avail_in, align 8, !tbaa !43
  %20 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %21 = load i32, i32* %20, align 4, !tbaa !2
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %21, i32* %avail_out, align 8, !tbaa !67
  %call22 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2)
  store i32 %call22, i32* %ret, align 4, !tbaa !2
  %22 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp23 = icmp eq i32 %22, 3
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %output_overflow

if.end25:                                         ; preds = %if.end21
  %23 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp26 = icmp ne i32 %23, 4
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  br label %errhandler

if.end28:                                         ; preds = %if.end25
  %avail_out29 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %24 = load i32, i32* %avail_out29, align 8, !tbaa !67
  %25 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %26 = load i32, i32* %25, align 4, !tbaa !2
  %sub = sub i32 %26, %24
  store i32 %sub, i32* %25, align 4, !tbaa !2
  %call30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

output_overflow:                                  ; preds = %if.then24
  %call31 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

errhandler:                                       ; preds = %if.then27
  %call32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  %27 = load i32, i32* %ret, align 4, !tbaa !2
  store i32 %27, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %errhandler, %output_overflow, %if.end28, %if.then20, %if.then
  %28 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #10
  %29 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %29) #10
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !6
  store i32* %destLen, i32** %destLen.addr, align 8, !tbaa !6
  store i8* %source, i8** %source.addr, align 8, !tbaa !6
  store i32 %sourceLen, i32* %sourceLen.addr, align 4, !tbaa !2
  store i32 %small, i32* %small.addr, align 4, !tbaa !2
  store i32 %verbosity, i32* %verbosity.addr, align 4, !tbaa !2
  %0 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %0) #10
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = load i8*, i8** %dest.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %cmp1 = icmp eq i32* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %source.addr, align 8, !tbaa !6
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %6 = load i32, i32* %small.addr, align 4, !tbaa !2
  %cmp6 = icmp ne i32 %6, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %7 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %8 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %cmp10 = icmp sgt i32 %8, 4
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8, !tbaa !10
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8, !tbaa !11
  %9 = load i32, i32* %verbosity.addr, align 4, !tbaa !2
  %10 = load i32, i32* %small.addr, align 4, !tbaa !2
  %call = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %9, i32 %10)
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %11 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp11 = icmp ne i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %12 = load i32, i32* %ret, align 4, !tbaa !2
  store i32 %12, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %13 = load i8*, i8** %source.addr, align 8, !tbaa !6
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %13, i8** %next_in, align 8, !tbaa !105
  %14 = load i8*, i8** %dest.addr, align 8, !tbaa !6
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %14, i8** %next_out, align 8, !tbaa !69
  %15 = load i32, i32* %sourceLen.addr, align 4, !tbaa !2
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %15, i32* %avail_in, align 8, !tbaa !43
  %16 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %17 = load i32, i32* %16, align 4, !tbaa !2
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %17, i32* %avail_out, align 8, !tbaa !67
  %call14 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm)
  store i32 %call14, i32* %ret, align 4, !tbaa !2
  %18 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %output_overflow_or_eof

if.end17:                                         ; preds = %if.end13
  %19 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp18 = icmp ne i32 %19, 4
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  br label %errhandler

if.end20:                                         ; preds = %if.end17
  %avail_out21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %20 = load i32, i32* %avail_out21, align 8, !tbaa !67
  %21 = load i32*, i32** %destLen.addr, align 8, !tbaa !6
  %22 = load i32, i32* %21, align 4, !tbaa !2
  %sub = sub i32 %22, %20
  store i32 %sub, i32* %21, align 4, !tbaa !2
  %call22 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

output_overflow_or_eof:                           ; preds = %if.then16
  %avail_out23 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %23 = load i32, i32* %avail_out23, align 8, !tbaa !67
  %cmp24 = icmp ugt i32 %23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %output_overflow_or_eof
  %call26 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -7, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %output_overflow_or_eof
  %call27 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

errhandler:                                       ; preds = %if.then19
  %call28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  %24 = load i32, i32* %ret, align 4, !tbaa !2
  store i32 %24, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %errhandler, %if.else, %if.then25, %if.end20, %if.then12, %if.then
  %25 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #10
  %26 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %26) #10
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzopen(i8* %path, i8* %mode) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8, !tbaa !6
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %path.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %call = call i8* @bzopen_or_bzdopen(i8* %0, i32 -1, i8* %1, i32 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @bzopen_or_bzdopen(i8* %path, i32 %fd, i8* %mode, i32 %open_mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  %open_mode.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %blockSize100k = alloca i32, align 4
  %writing = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %bzfp = alloca i8*, align 8
  %verbosity = alloca i32, align 4
  %workFactor = alloca i32, align 4
  %smallMode = alloca i32, align 4
  %nUnused = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8, !tbaa !6
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !6
  store i32 %open_mode, i32* %open_mode.addr, align 4, !tbaa !2
  %0 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast [5000 x i8]* %unused to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* %1) #10
  %2 = bitcast i32* %blockSize100k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #10
  store i32 9, i32* %blockSize100k, align 4, !tbaa !2
  %3 = bitcast i32* %writing to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #10
  store i32 0, i32* %writing, align 4, !tbaa !2
  %4 = bitcast [10 x i8]* %mode2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %4) #10
  %5 = bitcast [10 x i8]* %mode2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 10, i1 false)
  %6 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #10
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %7 = bitcast i8** %bzfp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #10
  store i8* null, i8** %bzfp, align 8, !tbaa !6
  %8 = bitcast i32* %verbosity to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #10
  store i32 0, i32* %verbosity, align 4, !tbaa !2
  %9 = bitcast i32* %workFactor to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #10
  store i32 30, i32* %workFactor, align 4, !tbaa !2
  %10 = bitcast i32* %smallMode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #10
  store i32 0, i32* %smallMode, align 4, !tbaa !2
  %11 = bitcast i32* %nUnused to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #10
  store i32 0, i32* %nUnused, align 4, !tbaa !2
  %12 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %13 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %14 = load i8, i8* %13, align 1, !tbaa !40
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %16 = load i8, i8* %15, align 1, !tbaa !40
  %conv = sext i8 %16 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %writing, align 4, !tbaa !2
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, i32* %writing, align 4, !tbaa !2
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, i32* %smallMode, align 4, !tbaa !2
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call = call i16** @__ctype_b_loc() #11
  %17 = load i16*, i16** %call, align 8, !tbaa !6
  %18 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %19 = load i8, i8* %18, align 1, !tbaa !40
  %conv3 = sext i8 %19 to i32
  %idxprom = sext i32 %conv3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %20 = load i16, i16* %arrayidx, align 2, !tbaa !73
  %conv4 = zext i16 %20 to i32
  %and = and i32 %conv4, 2048
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.default
  %21 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %22 = load i8, i8* %21, align 1, !tbaa !40
  %conv7 = sext i8 %22 to i32
  %sub = sub nsw i32 %conv7, 48
  store i32 %sub, i32* %blockSize100k, align 4, !tbaa !2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb2, %sw.bb1, %sw.bb
  %23 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8, !tbaa !6
  br label %while.cond, !llvm.loop !106

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %24 = load i32, i32* %writing, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %24, 0
  %25 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %call10 = call i8* @strcat(i8* %arraydecay, i8* %cond) #10
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call12 = call i8* @strcat(i8* %arraydecay11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #10
  %26 = load i32, i32* %open_mode.addr, align 4, !tbaa !2
  %cmp13 = icmp eq i32 %26, 0
  br i1 %cmp13, label %if.then15, label %if.else27

if.then15:                                        ; preds = %while.end
  %27 = load i8*, i8** %path.addr, align 8, !tbaa !6
  %cmp16 = icmp eq i8* %27, null
  br i1 %cmp16, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %28 = load i8*, i8** %path.addr, align 8, !tbaa !6
  %call18 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %lor.lhs.false, %if.then15
  %29 = load i32, i32* %writing, align 4, !tbaa !2
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi %struct._IO_FILE* [ %30, %cond.true ], [ %31, %cond.false ]
  store %struct._IO_FILE* %cond23, %struct._IO_FILE** %fp, align 8, !tbaa !6
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %32 = load i8*, i8** %path.addr, align 8, !tbaa !6
  %arraydecay24 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call25 = call %struct._IO_FILE* @fopen(i8* %32, i8* %arraydecay24)
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %fp, align 8, !tbaa !6
  br label %if.end26

if.end26:                                         ; preds = %if.else, %cond.end
  br label %if.end30

if.else27:                                        ; preds = %while.end
  %33 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %arraydecay28 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call29 = call %struct._IO_FILE* @fdopen(i32 %33, i8* %arraydecay28) #10
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %fp, align 8, !tbaa !6
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.end26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %cmp31 = icmp eq %struct._IO_FILE* %34, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %35 = load i32, i32* %writing, align 4, !tbaa !2
  %tobool35 = icmp ne i32 %35, 0
  br i1 %tobool35, label %if.then36, label %if.else46

if.then36:                                        ; preds = %if.end34
  %36 = load i32, i32* %blockSize100k, align 4, !tbaa !2
  %cmp37 = icmp slt i32 %36, 1
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  store i32 1, i32* %blockSize100k, align 4, !tbaa !2
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then36
  %37 = load i32, i32* %blockSize100k, align 4, !tbaa !2
  %cmp41 = icmp sgt i32 %37, 9
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 9, i32* %blockSize100k, align 4, !tbaa !2
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %39 = load i32, i32* %blockSize100k, align 4, !tbaa !2
  %40 = load i32, i32* %verbosity, align 4, !tbaa !2
  %41 = load i32, i32* %workFactor, align 4, !tbaa !2
  %call45 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, %struct._IO_FILE* %38, i32 %39, i32 %40, i32 %41)
  store i8* %call45, i8** %bzfp, align 8, !tbaa !6
  br label %if.end49

if.else46:                                        ; preds = %if.end34
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %43 = load i32, i32* %verbosity, align 4, !tbaa !2
  %44 = load i32, i32* %smallMode, align 4, !tbaa !2
  %arraydecay47 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 0
  %45 = load i32, i32* %nUnused, align 4, !tbaa !2
  %call48 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct._IO_FILE* %42, i32 %43, i32 %44, i8* %arraydecay47, i32 %45)
  store i8* %call48, i8** %bzfp, align 8, !tbaa !6
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.end44
  %46 = load i8*, i8** %bzfp, align 8, !tbaa !6
  %cmp50 = icmp eq i8* %46, null
  br i1 %cmp50, label %if.then52, label %if.end60

if.then52:                                        ; preds = %if.end49
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %cmp53 = icmp ne %struct._IO_FILE* %47, %48
  br i1 %cmp53, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.then52
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %cmp55 = icmp ne %struct._IO_FILE* %49, %50
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %call58 = call i32 @fclose(%struct._IO_FILE* %51)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true, %if.then52
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end49
  %52 = load i8*, i8** %bzfp, align 8, !tbaa !6
  store i8* %52, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end59, %if.then33, %if.then
  %53 = bitcast i32* %nUnused to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #10
  %54 = bitcast i32* %smallMode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #10
  %55 = bitcast i32* %workFactor to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #10
  %56 = bitcast i32* %verbosity to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #10
  %57 = bitcast i8** %bzfp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #10
  %58 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #10
  %59 = bitcast [10 x i8]* %mode2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %59) #10
  %60 = bitcast i32* %writing to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #10
  %61 = bitcast i32* %blockSize100k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #10
  %62 = bitcast [5000 x i8]* %unused to i8*
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* %62) #10
  %63 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #10
  %64 = load i8*, i8** %retval, align 8
  ret i8* %64
}

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzdopen(i32 %fd, i8* %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !6
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %call = call i8* @bzopen_or_bzdopen(i8* null, i32 %0, i8* %1, i32 1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %nread = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i32 %len, i32* %len.addr, align 4, !tbaa !2
  %0 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #10
  %2 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %3 = bitcast i8* %2 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 5
  %4 = load i32, i32* %lastErr, align 8, !tbaa !84
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %7 = load i32, i32* %len.addr, align 4, !tbaa !2
  %call = call i32 @BZ2_bzRead(i32* %bzerr, i8* %5, i8* %6, i32 %7)
  store i32 %call, i32* %nread, align 4, !tbaa !2
  %8 = load i32, i32* %bzerr, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %bzerr, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %9, 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i32, i32* %nread, align 4, !tbaa !2
  store i32 %10, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  %11 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #10
  %12 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #10
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i32 %len, i32* %len.addr, align 4, !tbaa !2
  %0 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %3 = load i32, i32* %len.addr, align 4, !tbaa !2
  call void @BZ2_bzWrite(i32* %bzerr, i8* %1, i8* %2, i32 %3)
  %4 = load i32, i32* %bzerr, align 4, !tbaa !2
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %len.addr, align 4, !tbaa !2
  store i32 %5, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %6 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #10
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzflush(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzclose(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  %0 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #10
  %2 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %3 = bitcast i8* %2 to %struct.bzFile*
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8, !tbaa !88
  store %struct._IO_FILE* %4, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %5 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %7 = bitcast i8* %6 to %struct.bzFile*
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 3
  %8 = load i8, i8* %writing, align 4, !tbaa !89
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %9 = load i8*, i8** %b.addr, align 8, !tbaa !6
  call void @BZ2_bzWriteClose(i32* %bzerr, i8* %9, i32 0, i32* null, i32* null)
  %10 = load i32, i32* %bzerr, align 4, !tbaa !2
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %11 = load i8*, i8** %b.addr, align 8, !tbaa !6
  call void @BZ2_bzWriteClose(i32* null, i8* %11, i32 1, i32* null, i32* null)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  br label %if.end5

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %b.addr, align 8, !tbaa !6
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %12)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %cmp6 = icmp ne %struct._IO_FILE* %13, %14
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %cmp7 = icmp ne %struct._IO_FILE* %15, %16
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %call = call i32 @fclose(%struct._IO_FILE* %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end5
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %18 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #10
  %19 = bitcast i32* %bzerr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #10
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

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local i8* @BZ2_bzerror(i8* %b, i32* %errnum) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %errnum.addr = alloca i32*, align 8
  %err = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  store i32* %errnum, i32** %errnum.addr, align 8, !tbaa !6
  %0 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %2 = bitcast i8* %1 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %2, i32 0, i32 5
  %3 = load i32, i32* %lastErr, align 8, !tbaa !84
  store i32 %3, i32* %err, align 4, !tbaa !2
  %4 = load i32, i32* %err, align 4, !tbaa !2
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %err, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %err, align 4, !tbaa !2
  %6 = load i32*, i32** %errnum.addr, align 8, !tbaa !6
  store i32 %5, i32* %6, align 4, !tbaa !2
  %7 = load i32, i32* %err, align 4, !tbaa !2
  %mul = mul nsw i32 %7, -1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @bzerrorstrings, i64 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %9 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #10
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @copy_output_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_out = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %progress_out) #10
  store i8 0, i8* %progress_out, align 1, !tbaa !40
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 0
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !12
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 5
  %2 = load i32, i32* %avail_out, align 8, !tbaa !67
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 20
  %4 = load i32, i32* %state_out_pos, align 8, !tbaa !38
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 19
  %6 = load i32, i32* %numZ, align 4, !tbaa !37
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  store i8 1, i8* %progress_out, align 1, !tbaa !40
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 11
  %8 = load i8*, i8** %zbits, align 8, !tbaa !27
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_out_pos4 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 20
  %10 = load i32, i32* %state_out_pos4, align 8, !tbaa !38
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %12 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm5 = getelementptr inbounds %struct.EState, %struct.EState* %12, i32 0, i32 0
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm5, align 8, !tbaa !12
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 4
  %14 = load i8*, i8** %next_out, align 8, !tbaa !69
  store i8 %11, i8* %14, align 1, !tbaa !40
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_out_pos6 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 20
  %16 = load i32, i32* %state_out_pos6, align 8, !tbaa !38
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %state_out_pos6, align 8, !tbaa !38
  %17 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm7 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 0
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8, !tbaa !12
  %avail_out8 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %18, i32 0, i32 5
  %19 = load i32, i32* %avail_out8, align 8, !tbaa !67
  %dec = add i32 %19, -1
  store i32 %dec, i32* %avail_out8, align 8, !tbaa !67
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm9 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 0
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm9, align 8, !tbaa !12
  %next_out10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 4
  %22 = load i8*, i8** %next_out10, align 8, !tbaa !69
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %next_out10, align 8, !tbaa !69
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm11 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 0
  %24 = load %struct.bz_stream*, %struct.bz_stream** %strm11, align 8, !tbaa !12
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %24, i32 0, i32 6
  %25 = load i32, i32* %total_out_lo32, align 4, !tbaa !32
  %inc12 = add i32 %25, 1
  store i32 %inc12, i32* %total_out_lo32, align 4, !tbaa !32
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm13 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 0
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8, !tbaa !12
  %total_out_lo3214 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 6
  %28 = load i32, i32* %total_out_lo3214, align 4, !tbaa !32
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end3
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm17 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 0
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm17, align 8, !tbaa !12
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 7
  %31 = load i32, i32* %total_out_hi32, align 8, !tbaa !33
  %inc18 = add i32 %31, 1
  store i32 %inc18, i32* %total_out_hi32, align 8, !tbaa !33
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end3
  br label %while.cond, !llvm.loop !107

while.end:                                        ; preds = %if.then2, %if.then
  %32 = load i8, i8* %progress_out, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %progress_out) #10
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @copy_input_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_in = alloca i8, align 1
  %zchh = alloca i32, align 4
  %ch = alloca i8, align 1
  %zchh78 = alloca i32, align 4
  %ch90 = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %progress_in) #10
  store i8 0, i8* %progress_in, align 1, !tbaa !40
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 1
  %1 = load i32, i32* %mode, align 8, !tbaa !19
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else59

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.then
  br label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 17
  %3 = load i32, i32* %nblock, align 4, !tbaa !36
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 18
  %5 = load i32, i32* %nblockMAX, align 8, !tbaa !22
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8, !tbaa !12
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 1
  %8 = load i32, i32* %avail_in, align 8, !tbaa !43
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  store i8 1, i8* %progress_in, align 1, !tbaa !40
  %9 = bitcast i32* %zchh to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #10
  %10 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm6 = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 0
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm6, align 8, !tbaa !12
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_in, align 8, !tbaa !105
  %13 = load i8, i8* %12, align 1, !tbaa !40
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %zchh, align 4, !tbaa !2
  %14 = load i32, i32* %zchh, align 4, !tbaa !2
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 13
  %16 = load i32, i32* %state_in_ch, align 4, !tbaa !34
  %cmp7 = icmp ne i32 %14, %16
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %17 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 14
  %18 = load i32, i32* %state_in_len, align 8, !tbaa !35
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ch) #10
  %19 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch12 = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 13
  %20 = load i32, i32* %state_in_ch12, align 4, !tbaa !34
  %conv13 = trunc i32 %20 to i8
  store i8 %conv13, i8* %ch, align 1, !tbaa !40
  %21 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 26
  %22 = load i32, i32* %blockCRC, align 8, !tbaa !39
  %shl = shl i32 %22, 8
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC14 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 26
  %24 = load i32, i32* %blockCRC14, align 8, !tbaa !39
  %shr = lshr i32 %24, 24
  %25 = load i8, i8* %ch, align 1, !tbaa !40
  %conv15 = zext i8 %25 to i32
  %xor = xor i32 %shr, %conv15
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %xor16 = xor i32 %shl, %26
  %27 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC17 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 26
  store i32 %xor16, i32* %blockCRC17, align 8, !tbaa !39
  %28 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 22
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch18 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 13
  %30 = load i32, i32* %state_in_ch18, align 4, !tbaa !34
  %idxprom19 = zext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom19
  store i8 1, i8* %arrayidx20, align 1, !tbaa !40
  %31 = load i8, i8* %ch, align 1, !tbaa !40
  %32 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 9
  %33 = load i8*, i8** %block, align 8, !tbaa !25
  %34 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock21 = getelementptr inbounds %struct.EState, %struct.EState* %34, i32 0, i32 17
  %35 = load i32, i32* %nblock21, align 4, !tbaa !36
  %idxprom22 = sext i32 %35 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %33, i64 %idxprom22
  store i8 %31, i8* %arrayidx23, align 1, !tbaa !40
  %36 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock24 = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 17
  %37 = load i32, i32* %nblock24, align 4, !tbaa !36
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %nblock24, align 4, !tbaa !36
  %38 = load i32, i32* %zchh, align 4, !tbaa !2
  %39 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch25 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 13
  store i32 %38, i32* %state_in_ch25, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ch) #10
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %40 = load i32, i32* %zchh, align 4, !tbaa !2
  %41 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch26 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 13
  %42 = load i32, i32* %state_in_ch26, align 4, !tbaa !34
  %cmp27 = icmp ne i32 %40, %42
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %43 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len29 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 14
  %44 = load i32, i32* %state_in_len29, align 8, !tbaa !35
  %cmp30 = icmp eq i32 %44, 255
  br i1 %cmp30, label %if.then32, label %if.else40

if.then32:                                        ; preds = %lor.lhs.false, %if.else
  %45 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch33 = getelementptr inbounds %struct.EState, %struct.EState* %45, i32 0, i32 13
  %46 = load i32, i32* %state_in_ch33, align 4, !tbaa !34
  %cmp34 = icmp ult i32 %46, 256
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  %47 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @add_pair_to_block(%struct.EState* %47)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then32
  %48 = load i32, i32* %zchh, align 4, !tbaa !2
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch38 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 13
  store i32 %48, i32* %state_in_ch38, align 4, !tbaa !34
  %50 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len39 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 14
  store i32 1, i32* %state_in_len39, align 8, !tbaa !35
  br label %if.end43

if.else40:                                        ; preds = %lor.lhs.false
  %51 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len41 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 14
  %52 = load i32, i32* %state_in_len41, align 8, !tbaa !35
  %inc42 = add nsw i32 %52, 1
  store i32 %inc42, i32* %state_in_len41, align 8, !tbaa !35
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.end37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then11
  %53 = bitcast i32* %zchh to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #10
  %54 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm45 = getelementptr inbounds %struct.EState, %struct.EState* %54, i32 0, i32 0
  %55 = load %struct.bz_stream*, %struct.bz_stream** %strm45, align 8, !tbaa !12
  %next_in46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %55, i32 0, i32 0
  %56 = load i8*, i8** %next_in46, align 8, !tbaa !105
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %next_in46, align 8, !tbaa !105
  %57 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm47 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 0
  %58 = load %struct.bz_stream*, %struct.bz_stream** %strm47, align 8, !tbaa !12
  %avail_in48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %58, i32 0, i32 1
  %59 = load i32, i32* %avail_in48, align 8, !tbaa !43
  %dec = add i32 %59, -1
  store i32 %dec, i32* %avail_in48, align 8, !tbaa !43
  %60 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm49 = getelementptr inbounds %struct.EState, %struct.EState* %60, i32 0, i32 0
  %61 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8, !tbaa !12
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 2
  %62 = load i32, i32* %total_in_lo32, align 4, !tbaa !30
  %inc50 = add i32 %62, 1
  store i32 %inc50, i32* %total_in_lo32, align 4, !tbaa !30
  %63 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm51 = getelementptr inbounds %struct.EState, %struct.EState* %63, i32 0, i32 0
  %64 = load %struct.bz_stream*, %struct.bz_stream** %strm51, align 8, !tbaa !12
  %total_in_lo3252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 2
  %65 = load i32, i32* %total_in_lo3252, align 4, !tbaa !30
  %cmp53 = icmp eq i32 %65, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end44
  %66 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm56 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 0
  %67 = load %struct.bz_stream*, %struct.bz_stream** %strm56, align 8, !tbaa !12
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %67, i32 0, i32 3
  %68 = load i32, i32* %total_in_hi32, align 8, !tbaa !31
  %inc57 = add i32 %68, 1
  store i32 %inc57, i32* %total_in_hi32, align 8, !tbaa !31
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end44
  br label %while.cond, !llvm.loop !108

while.end:                                        ; preds = %if.then4, %if.then2
  br label %if.end156

if.else59:                                        ; preds = %entry
  br label %while.cond60

while.cond60:                                     ; preds = %if.end152, %if.else59
  br label %while.body61

while.body61:                                     ; preds = %while.cond60
  %69 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock62 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 17
  %70 = load i32, i32* %nblock62, align 4, !tbaa !36
  %71 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblockMAX63 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 18
  %72 = load i32, i32* %nblockMAX63, align 8, !tbaa !22
  %cmp64 = icmp sge i32 %70, %72
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %while.body61
  br label %while.end155

if.end67:                                         ; preds = %while.body61
  %73 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm68 = getelementptr inbounds %struct.EState, %struct.EState* %73, i32 0, i32 0
  %74 = load %struct.bz_stream*, %struct.bz_stream** %strm68, align 8, !tbaa !12
  %avail_in69 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 1
  %75 = load i32, i32* %avail_in69, align 8, !tbaa !43
  %cmp70 = icmp eq i32 %75, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  br label %while.end155

if.end73:                                         ; preds = %if.end67
  %76 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 3
  %77 = load i32, i32* %avail_in_expect, align 8, !tbaa !44
  %cmp74 = icmp eq i32 %77, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  br label %while.end155

if.end77:                                         ; preds = %if.end73
  store i8 1, i8* %progress_in, align 1, !tbaa !40
  %78 = bitcast i32* %zchh78 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %78) #10
  %79 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm79 = getelementptr inbounds %struct.EState, %struct.EState* %79, i32 0, i32 0
  %80 = load %struct.bz_stream*, %struct.bz_stream** %strm79, align 8, !tbaa !12
  %next_in80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 0
  %81 = load i8*, i8** %next_in80, align 8, !tbaa !105
  %82 = load i8, i8* %81, align 1, !tbaa !40
  %conv81 = zext i8 %82 to i32
  store i32 %conv81, i32* %zchh78, align 4, !tbaa !2
  %83 = load i32, i32* %zchh78, align 4, !tbaa !2
  %84 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch82 = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 13
  %85 = load i32, i32* %state_in_ch82, align 4, !tbaa !34
  %cmp83 = icmp ne i32 %83, %85
  br i1 %cmp83, label %land.lhs.true85, label %if.else114

land.lhs.true85:                                  ; preds = %if.end77
  %86 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len86 = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 14
  %87 = load i32, i32* %state_in_len86, align 8, !tbaa !35
  %cmp87 = icmp eq i32 %87, 1
  br i1 %cmp87, label %if.then89, label %if.else114

if.then89:                                        ; preds = %land.lhs.true85
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ch90) #10
  %88 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch91 = getelementptr inbounds %struct.EState, %struct.EState* %88, i32 0, i32 13
  %89 = load i32, i32* %state_in_ch91, align 4, !tbaa !34
  %conv92 = trunc i32 %89 to i8
  store i8 %conv92, i8* %ch90, align 1, !tbaa !40
  %90 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC93 = getelementptr inbounds %struct.EState, %struct.EState* %90, i32 0, i32 26
  %91 = load i32, i32* %blockCRC93, align 8, !tbaa !39
  %shl94 = shl i32 %91, 8
  %92 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC95 = getelementptr inbounds %struct.EState, %struct.EState* %92, i32 0, i32 26
  %93 = load i32, i32* %blockCRC95, align 8, !tbaa !39
  %shr96 = lshr i32 %93, 24
  %94 = load i8, i8* %ch90, align 1, !tbaa !40
  %conv97 = zext i8 %94 to i32
  %xor98 = xor i32 %shr96, %conv97
  %idxprom99 = zext i32 %xor98 to i64
  %arrayidx100 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom99
  %95 = load i32, i32* %arrayidx100, align 4, !tbaa !2
  %xor101 = xor i32 %shl94, %95
  %96 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC102 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 26
  store i32 %xor101, i32* %blockCRC102, align 8, !tbaa !39
  %97 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %inUse103 = getelementptr inbounds %struct.EState, %struct.EState* %97, i32 0, i32 22
  %98 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch104 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 13
  %99 = load i32, i32* %state_in_ch104, align 4, !tbaa !34
  %idxprom105 = zext i32 %99 to i64
  %arrayidx106 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse103, i64 0, i64 %idxprom105
  store i8 1, i8* %arrayidx106, align 1, !tbaa !40
  %100 = load i8, i8* %ch90, align 1, !tbaa !40
  %101 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block107 = getelementptr inbounds %struct.EState, %struct.EState* %101, i32 0, i32 9
  %102 = load i8*, i8** %block107, align 8, !tbaa !25
  %103 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock108 = getelementptr inbounds %struct.EState, %struct.EState* %103, i32 0, i32 17
  %104 = load i32, i32* %nblock108, align 4, !tbaa !36
  %idxprom109 = sext i32 %104 to i64
  %arrayidx110 = getelementptr inbounds i8, i8* %102, i64 %idxprom109
  store i8 %100, i8* %arrayidx110, align 1, !tbaa !40
  %105 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock111 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 17
  %106 = load i32, i32* %nblock111, align 4, !tbaa !36
  %inc112 = add nsw i32 %106, 1
  store i32 %inc112, i32* %nblock111, align 4, !tbaa !36
  %107 = load i32, i32* %zchh78, align 4, !tbaa !2
  %108 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch113 = getelementptr inbounds %struct.EState, %struct.EState* %108, i32 0, i32 13
  store i32 %107, i32* %state_in_ch113, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ch90) #10
  br label %if.end134

if.else114:                                       ; preds = %land.lhs.true85, %if.end77
  %109 = load i32, i32* %zchh78, align 4, !tbaa !2
  %110 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch115 = getelementptr inbounds %struct.EState, %struct.EState* %110, i32 0, i32 13
  %111 = load i32, i32* %state_in_ch115, align 4, !tbaa !34
  %cmp116 = icmp ne i32 %109, %111
  br i1 %cmp116, label %if.then122, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.else114
  %112 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len119 = getelementptr inbounds %struct.EState, %struct.EState* %112, i32 0, i32 14
  %113 = load i32, i32* %state_in_len119, align 8, !tbaa !35
  %cmp120 = icmp eq i32 %113, 255
  br i1 %cmp120, label %if.then122, label %if.else130

if.then122:                                       ; preds = %lor.lhs.false118, %if.else114
  %114 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch123 = getelementptr inbounds %struct.EState, %struct.EState* %114, i32 0, i32 13
  %115 = load i32, i32* %state_in_ch123, align 4, !tbaa !34
  %cmp124 = icmp ult i32 %115, 256
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.then122
  %116 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @add_pair_to_block(%struct.EState* %116)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.then122
  %117 = load i32, i32* %zchh78, align 4, !tbaa !2
  %118 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch128 = getelementptr inbounds %struct.EState, %struct.EState* %118, i32 0, i32 13
  store i32 %117, i32* %state_in_ch128, align 4, !tbaa !34
  %119 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len129 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 14
  store i32 1, i32* %state_in_len129, align 8, !tbaa !35
  br label %if.end133

if.else130:                                       ; preds = %lor.lhs.false118
  %120 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len131 = getelementptr inbounds %struct.EState, %struct.EState* %120, i32 0, i32 14
  %121 = load i32, i32* %state_in_len131, align 8, !tbaa !35
  %inc132 = add nsw i32 %121, 1
  store i32 %inc132, i32* %state_in_len131, align 8, !tbaa !35
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.end127
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then89
  %122 = bitcast i32* %zchh78 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #10
  %123 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm135 = getelementptr inbounds %struct.EState, %struct.EState* %123, i32 0, i32 0
  %124 = load %struct.bz_stream*, %struct.bz_stream** %strm135, align 8, !tbaa !12
  %next_in136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %124, i32 0, i32 0
  %125 = load i8*, i8** %next_in136, align 8, !tbaa !105
  %incdec.ptr137 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr137, i8** %next_in136, align 8, !tbaa !105
  %126 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm138 = getelementptr inbounds %struct.EState, %struct.EState* %126, i32 0, i32 0
  %127 = load %struct.bz_stream*, %struct.bz_stream** %strm138, align 8, !tbaa !12
  %avail_in139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %127, i32 0, i32 1
  %128 = load i32, i32* %avail_in139, align 8, !tbaa !43
  %dec140 = add i32 %128, -1
  store i32 %dec140, i32* %avail_in139, align 8, !tbaa !43
  %129 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm141 = getelementptr inbounds %struct.EState, %struct.EState* %129, i32 0, i32 0
  %130 = load %struct.bz_stream*, %struct.bz_stream** %strm141, align 8, !tbaa !12
  %total_in_lo32142 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %130, i32 0, i32 2
  %131 = load i32, i32* %total_in_lo32142, align 4, !tbaa !30
  %inc143 = add i32 %131, 1
  store i32 %inc143, i32* %total_in_lo32142, align 4, !tbaa !30
  %132 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm144 = getelementptr inbounds %struct.EState, %struct.EState* %132, i32 0, i32 0
  %133 = load %struct.bz_stream*, %struct.bz_stream** %strm144, align 8, !tbaa !12
  %total_in_lo32145 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %133, i32 0, i32 2
  %134 = load i32, i32* %total_in_lo32145, align 4, !tbaa !30
  %cmp146 = icmp eq i32 %134, 0
  br i1 %cmp146, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.end134
  %135 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %strm149 = getelementptr inbounds %struct.EState, %struct.EState* %135, i32 0, i32 0
  %136 = load %struct.bz_stream*, %struct.bz_stream** %strm149, align 8, !tbaa !12
  %total_in_hi32150 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %136, i32 0, i32 3
  %137 = load i32, i32* %total_in_hi32150, align 8, !tbaa !31
  %inc151 = add i32 %137, 1
  store i32 %inc151, i32* %total_in_hi32150, align 8, !tbaa !31
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %if.end134
  %138 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %avail_in_expect153 = getelementptr inbounds %struct.EState, %struct.EState* %138, i32 0, i32 3
  %139 = load i32, i32* %avail_in_expect153, align 8, !tbaa !44
  %dec154 = add i32 %139, -1
  store i32 %dec154, i32* %avail_in_expect153, align 8, !tbaa !44
  br label %while.cond60, !llvm.loop !109

while.end155:                                     ; preds = %if.then76, %if.then72, %if.then66
  br label %if.end156

if.end156:                                        ; preds = %while.end155, %while.end
  %140 = load i8, i8* %progress_in, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %progress_in) #10
  ret i8 %140
}

; Function Attrs: nounwind uwtable
define internal void @flush_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4, !tbaa !34
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @add_pair_to_block(%struct.EState* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  call void @init_RL(%struct.EState* %3)
  ret void
}

declare dso_local void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @add_pair_to_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ch) #10
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 13
  %2 = load i32, i32* %state_in_ch, align 4, !tbaa !34
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %ch, align 1, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 14
  %5 = load i32, i32* %state_in_len, align 8, !tbaa !35
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 26
  %7 = load i32, i32* %blockCRC, align 8, !tbaa !39
  %shl = shl i32 %7, 8
  %8 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC2 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 26
  %9 = load i32, i32* %blockCRC2, align 8, !tbaa !39
  %shr = lshr i32 %9, 24
  %10 = load i8, i8* %ch, align 1, !tbaa !40
  %conv3 = zext i8 %10 to i32
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %xor4 = xor i32 %shl, %11
  %12 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %blockCRC5 = getelementptr inbounds %struct.EState, %struct.EState* %12, i32 0, i32 26
  store i32 %xor4, i32* %blockCRC5, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  %14 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 22
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_ch6 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 13
  %16 = load i32, i32* %state_in_ch6, align 4, !tbaa !34
  %idxprom7 = zext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1, !tbaa !40
  %17 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len9 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 14
  %18 = load i32, i32* %state_in_len9, align 8, !tbaa !35
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.end
  %19 = load i8, i8* %ch, align 1, !tbaa !40
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 9
  %21 = load i8*, i8** %block, align 8, !tbaa !25
  %22 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 17
  %23 = load i32, i32* %nblock, align 4, !tbaa !36
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 %idxprom10
  store i8 %19, i8* %arrayidx11, align 1, !tbaa !40
  %24 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock12 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 17
  %25 = load i32, i32* %nblock12, align 4, !tbaa !36
  %inc13 = add nsw i32 %25, 1
  store i32 %inc13, i32* %nblock12, align 4, !tbaa !36
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %26 = load i8, i8* %ch, align 1, !tbaa !40
  %27 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block15 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 9
  %28 = load i8*, i8** %block15, align 8, !tbaa !25
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock16 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 17
  %30 = load i32, i32* %nblock16, align 4, !tbaa !36
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 %idxprom17
  store i8 %26, i8* %arrayidx18, align 1, !tbaa !40
  %31 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock19 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 17
  %32 = load i32, i32* %nblock19, align 4, !tbaa !36
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* %nblock19, align 4, !tbaa !36
  %33 = load i8, i8* %ch, align 1, !tbaa !40
  %34 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block21 = getelementptr inbounds %struct.EState, %struct.EState* %34, i32 0, i32 9
  %35 = load i8*, i8** %block21, align 8, !tbaa !25
  %36 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock22 = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 17
  %37 = load i32, i32* %nblock22, align 4, !tbaa !36
  %idxprom23 = sext i32 %37 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i64 %idxprom23
  store i8 %33, i8* %arrayidx24, align 1, !tbaa !40
  %38 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock25 = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 17
  %39 = load i32, i32* %nblock25, align 4, !tbaa !36
  %inc26 = add nsw i32 %39, 1
  store i32 %inc26, i32* %nblock25, align 4, !tbaa !36
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  %40 = load i8, i8* %ch, align 1, !tbaa !40
  %41 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block28 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 9
  %42 = load i8*, i8** %block28, align 8, !tbaa !25
  %43 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock29 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 17
  %44 = load i32, i32* %nblock29, align 4, !tbaa !36
  %idxprom30 = sext i32 %44 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 %idxprom30
  store i8 %40, i8* %arrayidx31, align 1, !tbaa !40
  %45 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock32 = getelementptr inbounds %struct.EState, %struct.EState* %45, i32 0, i32 17
  %46 = load i32, i32* %nblock32, align 4, !tbaa !36
  %inc33 = add nsw i32 %46, 1
  store i32 %inc33, i32* %nblock32, align 4, !tbaa !36
  %47 = load i8, i8* %ch, align 1, !tbaa !40
  %48 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block34 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 9
  %49 = load i8*, i8** %block34, align 8, !tbaa !25
  %50 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock35 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 17
  %51 = load i32, i32* %nblock35, align 4, !tbaa !36
  %idxprom36 = sext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %49, i64 %idxprom36
  store i8 %47, i8* %arrayidx37, align 1, !tbaa !40
  %52 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock38 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 17
  %53 = load i32, i32* %nblock38, align 4, !tbaa !36
  %inc39 = add nsw i32 %53, 1
  store i32 %inc39, i32* %nblock38, align 4, !tbaa !36
  %54 = load i8, i8* %ch, align 1, !tbaa !40
  %55 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block40 = getelementptr inbounds %struct.EState, %struct.EState* %55, i32 0, i32 9
  %56 = load i8*, i8** %block40, align 8, !tbaa !25
  %57 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock41 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 17
  %58 = load i32, i32* %nblock41, align 4, !tbaa !36
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %56, i64 %idxprom42
  store i8 %54, i8* %arrayidx43, align 1, !tbaa !40
  %59 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock44 = getelementptr inbounds %struct.EState, %struct.EState* %59, i32 0, i32 17
  %60 = load i32, i32* %nblock44, align 4, !tbaa !36
  %inc45 = add nsw i32 %60, 1
  store i32 %inc45, i32* %nblock44, align 4, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %61 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %inUse46 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 22
  %62 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len47 = getelementptr inbounds %struct.EState, %struct.EState* %62, i32 0, i32 14
  %63 = load i32, i32* %state_in_len47, align 8, !tbaa !35
  %sub = sub nsw i32 %63, 4
  %idxprom48 = sext i32 %sub to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse46, i64 0, i64 %idxprom48
  store i8 1, i8* %arrayidx49, align 1, !tbaa !40
  %64 = load i8, i8* %ch, align 1, !tbaa !40
  %65 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block50 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 9
  %66 = load i8*, i8** %block50, align 8, !tbaa !25
  %67 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock51 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 17
  %68 = load i32, i32* %nblock51, align 4, !tbaa !36
  %idxprom52 = sext i32 %68 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %66, i64 %idxprom52
  store i8 %64, i8* %arrayidx53, align 1, !tbaa !40
  %69 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock54 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 17
  %70 = load i32, i32* %nblock54, align 4, !tbaa !36
  %inc55 = add nsw i32 %70, 1
  store i32 %inc55, i32* %nblock54, align 4, !tbaa !36
  %71 = load i8, i8* %ch, align 1, !tbaa !40
  %72 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block56 = getelementptr inbounds %struct.EState, %struct.EState* %72, i32 0, i32 9
  %73 = load i8*, i8** %block56, align 8, !tbaa !25
  %74 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock57 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 17
  %75 = load i32, i32* %nblock57, align 4, !tbaa !36
  %idxprom58 = sext i32 %75 to i64
  %arrayidx59 = getelementptr inbounds i8, i8* %73, i64 %idxprom58
  store i8 %71, i8* %arrayidx59, align 1, !tbaa !40
  %76 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock60 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 17
  %77 = load i32, i32* %nblock60, align 4, !tbaa !36
  %inc61 = add nsw i32 %77, 1
  store i32 %inc61, i32* %nblock60, align 4, !tbaa !36
  %78 = load i8, i8* %ch, align 1, !tbaa !40
  %79 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block62 = getelementptr inbounds %struct.EState, %struct.EState* %79, i32 0, i32 9
  %80 = load i8*, i8** %block62, align 8, !tbaa !25
  %81 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock63 = getelementptr inbounds %struct.EState, %struct.EState* %81, i32 0, i32 17
  %82 = load i32, i32* %nblock63, align 4, !tbaa !36
  %idxprom64 = sext i32 %82 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %80, i64 %idxprom64
  store i8 %78, i8* %arrayidx65, align 1, !tbaa !40
  %83 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock66 = getelementptr inbounds %struct.EState, %struct.EState* %83, i32 0, i32 17
  %84 = load i32, i32* %nblock66, align 4, !tbaa !36
  %inc67 = add nsw i32 %84, 1
  store i32 %inc67, i32* %nblock66, align 4, !tbaa !36
  %85 = load i8, i8* %ch, align 1, !tbaa !40
  %86 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block68 = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 9
  %87 = load i8*, i8** %block68, align 8, !tbaa !25
  %88 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock69 = getelementptr inbounds %struct.EState, %struct.EState* %88, i32 0, i32 17
  %89 = load i32, i32* %nblock69, align 4, !tbaa !36
  %idxprom70 = sext i32 %89 to i64
  %arrayidx71 = getelementptr inbounds i8, i8* %87, i64 %idxprom70
  store i8 %85, i8* %arrayidx71, align 1, !tbaa !40
  %90 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock72 = getelementptr inbounds %struct.EState, %struct.EState* %90, i32 0, i32 17
  %91 = load i32, i32* %nblock72, align 4, !tbaa !36
  %inc73 = add nsw i32 %91, 1
  store i32 %inc73, i32* %nblock72, align 4, !tbaa !36
  %92 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %state_in_len74 = getelementptr inbounds %struct.EState, %struct.EState* %92, i32 0, i32 14
  %93 = load i32, i32* %state_in_len74, align 8, !tbaa !35
  %sub75 = sub nsw i32 %93, 4
  %conv76 = trunc i32 %sub75 to i8
  %94 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %block77 = getelementptr inbounds %struct.EState, %struct.EState* %94, i32 0, i32 9
  %95 = load i8*, i8** %block77, align 8, !tbaa !25
  %96 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock78 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 17
  %97 = load i32, i32* %nblock78, align 4, !tbaa !36
  %idxprom79 = sext i32 %97 to i64
  %arrayidx80 = getelementptr inbounds i8, i8* %95, i64 %idxprom79
  store i8 %conv76, i8* %arrayidx80, align 1, !tbaa !40
  %98 = load %struct.EState*, %struct.EState** %s.addr, align 8, !tbaa !6
  %nblock81 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 17
  %99 = load i32, i32* %nblock81, align 4, !tbaa !36
  %inc82 = add nsw i32 %99, 1
  store i32 %inc82, i32* %nblock81, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ch) #10
  %100 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #10
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #8

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn writeonly }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 56}
!9 = !{!"", !7, i64 0, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 24, !3, i64 32, !3, i64 36, !3, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!10 = !{!9, !7, i64 64}
!11 = !{!9, !7, i64 72}
!12 = !{!13, !7, i64 0}
!13 = !{!"", !7, i64 0, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !3, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !3, i64 120, !3, i64 124, !4, i64 128, !4, i64 384, !3, i64 640, !3, i64 644, !3, i64 648, !3, i64 652, !3, i64 656, !3, i64 660, !3, i64 664, !3, i64 668, !4, i64 672, !4, i64 1704, !4, i64 19706, !4, i64 37708, !4, i64 39256, !4, i64 45448, !4, i64 51640}
!14 = !{!13, !7, i64 24}
!15 = !{!13, !7, i64 32}
!16 = !{!13, !7, i64 40}
!17 = !{!13, !3, i64 660}
!18 = !{!13, !3, i64 12}
!19 = !{!13, !3, i64 8}
!20 = !{!13, !3, i64 652}
!21 = !{!13, !3, i64 664}
!22 = !{!13, !3, i64 112}
!23 = !{!13, !3, i64 656}
!24 = !{!13, !3, i64 88}
!25 = !{!13, !7, i64 64}
!26 = !{!13, !7, i64 72}
!27 = !{!13, !7, i64 80}
!28 = !{!13, !7, i64 56}
!29 = !{!9, !7, i64 48}
!30 = !{!9, !3, i64 12}
!31 = !{!9, !3, i64 16}
!32 = !{!9, !3, i64 36}
!33 = !{!9, !3, i64 40}
!34 = !{!13, !3, i64 92}
!35 = !{!13, !3, i64 96}
!36 = !{!13, !3, i64 108}
!37 = !{!13, !3, i64 116}
!38 = !{!13, !3, i64 120}
!39 = !{!13, !3, i64 648}
!40 = !{!4, !4, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!9, !3, i64 8}
!44 = !{!13, !3, i64 16}
!45 = distinct !{!45, !42}
!46 = !{!47, !7, i64 0}
!47 = !{!"", !7, i64 0, !3, i64 8, !4, i64 12, !3, i64 16, !4, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !4, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !4, i64 68, !3, i64 1092, !4, i64 1096, !4, i64 2124, !7, i64 3152, !7, i64 3160, !7, i64 3168, !3, i64 3176, !3, i64 3180, !3, i64 3184, !3, i64 3188, !3, i64 3192, !4, i64 3196, !4, i64 3452, !4, i64 3468, !4, i64 3724, !4, i64 7820, !4, i64 7884, !4, i64 25886, !4, i64 43888, !4, i64 45436, !4, i64 51628, !4, i64 57820, !4, i64 64012, !3, i64 64036, !3, i64 64040, !3, i64 64044, !3, i64 64048, !3, i64 64052, !3, i64 64056, !3, i64 64060, !3, i64 64064, !3, i64 64068, !3, i64 64072, !3, i64 64076, !3, i64 64080, !3, i64 64084, !3, i64 64088, !3, i64 64092, !3, i64 64096, !3, i64 64100, !3, i64 64104, !3, i64 64108, !3, i64 64112, !3, i64 64116, !7, i64 64120, !7, i64 64128, !7, i64 64136}
!48 = !{!47, !3, i64 8}
!49 = !{!47, !3, i64 36}
!50 = !{!47, !3, i64 32}
!51 = !{!47, !3, i64 3188}
!52 = !{!47, !4, i64 44}
!53 = !{!47, !7, i64 3168}
!54 = !{!47, !7, i64 3160}
!55 = !{!47, !7, i64 3152}
!56 = !{!47, !3, i64 48}
!57 = !{!47, !3, i64 52}
!58 = distinct !{!58, !42}
!59 = !{!47, !3, i64 1092}
!60 = !{!47, !3, i64 64080}
!61 = !{!47, !3, i64 16}
!62 = !{!47, !3, i64 3184}
!63 = !{!47, !3, i64 3176}
!64 = !{!47, !3, i64 3180}
!65 = distinct !{!65, !42}
!66 = !{!47, !4, i64 20}
!67 = !{!9, !3, i64 32}
!68 = !{!47, !4, i64 12}
!69 = !{!9, !7, i64 24}
!70 = distinct !{!70, !42}
!71 = !{!47, !3, i64 64}
!72 = !{!47, !3, i64 60}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !4, i64 0}
!75 = !{!47, !3, i64 24}
!76 = !{!47, !3, i64 28}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = !{!85, !3, i64 5096}
!85 = !{!"", !7, i64 0, !4, i64 8, !3, i64 5008, !4, i64 5012, !9, i64 5016, !3, i64 5096, !4, i64 5100}
!86 = !{!85, !4, i64 5100}
!87 = !{!85, !3, i64 5008}
!88 = !{!85, !7, i64 0}
!89 = !{!85, !4, i64 5012}
!90 = !{!85, !7, i64 5072}
!91 = !{!85, !7, i64 5080}
!92 = !{!85, !7, i64 5088}
!93 = !{!85, !3, i64 5024}
!94 = !{!85, !7, i64 5016}
!95 = !{!85, !3, i64 5048}
!96 = !{!85, !7, i64 5040}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = !{!85, !3, i64 5028}
!100 = !{!85, !3, i64 5032}
!101 = !{!85, !3, i64 5052}
!102 = !{!85, !3, i64 5056}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42}
!105 = !{!9, !7, i64 0}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42}
