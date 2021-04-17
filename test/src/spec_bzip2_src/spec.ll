; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = dso_local global i32 4, align 4
@seedi = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"spec_init\0A\00", align 1
@spec_fd = dso_local global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"spec_init: Error mallocing memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Creating Chunks\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Filling input file\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @ran() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %test = alloca i64, align 8
  %0 = bitcast i64* %lo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #7
  %1 = bitcast i64* %hi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #7
  %2 = bitcast i64* %test to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #7
  %3 = load i64, i64* @seedi, align 8, !tbaa !2
  %div = sdiv i64 %3, 127773
  store i64 %div, i64* %hi, align 8, !tbaa !2
  %4 = load i64, i64* @seedi, align 8, !tbaa !2
  %rem = srem i64 %4, 127773
  store i64 %rem, i64* %lo, align 8, !tbaa !2
  %5 = load i64, i64* %lo, align 8, !tbaa !2
  %mul = mul nsw i64 16807, %5
  %6 = load i64, i64* %hi, align 8, !tbaa !2
  %mul1 = mul nsw i64 2836, %6
  %sub = sub nsw i64 %mul, %mul1
  store i64 %sub, i64* %test, align 8, !tbaa !2
  %7 = load i64, i64* %test, align 8, !tbaa !2
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %test, align 8, !tbaa !2
  store i64 %8, i64* @seedi, align 8, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %test, align 8, !tbaa !2
  %add = add nsw i64 %9, 2147483647
  store i64 %add, i64* @seedi, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* @seedi, align 8, !tbaa !2
  %conv = sitofp i64 %10 to float
  %div2 = fdiv float %conv, 0x41E0000000000000
  %conv3 = fpext float %div2 to double
  %11 = bitcast i64* %test to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #7
  %12 = bitcast i64* %hi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #7
  %13 = bitcast i64* %lo to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #7
  ret double %conv3
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %limit = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #7
  %2 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 3, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %3, 3
  br i1 %cmp1, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %limit2 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %limit2, align 8, !tbaa !8
  store i32 %6, i32* %limit, align 4, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom3
  %8 = bitcast %struct.spec_fd_t* %arrayidx4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* %limit, align 4, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %limit7 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 0
  store i32 %9, i32* %limit7, align 8, !tbaa !8
  %11 = load i32, i32* %limit, align 4, !tbaa !6
  %add = add nsw i32 %11, 1048576
  %conv = sext i32 %add to i64
  %call8 = call noalias i8* @malloc(i64 %conv) #7
  %12 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom9
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx10, i32 0, i32 3
  store i8* %call8, i8** %buf, align 8, !tbaa !11
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom11
  %buf13 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 3
  %14 = load i8*, i8** %buf13, align 8, !tbaa !11
  %cmp14 = icmp eq i8* %14, null
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.body
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

if.end18:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %15 = load i32, i32* %j, align 4, !tbaa !6
  %16 = load i32, i32* %limit, align 4, !tbaa !6
  %cmp20 = icmp slt i32 %15, %16
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom23
  %buf25 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx24, i32 0, i32 3
  %18 = load i8*, i8** %buf25, align 8, !tbaa !11
  %19 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 %idxprom26
  store i8 0, i8* %arrayidx27, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %20 = load i32, i32* %j, align 4, !tbaa !6
  %add28 = add nsw i32 %20, 1024
  store i32 %add28, i32* %j, align 4, !tbaa !6
  br label %for.cond19, !llvm.loop !13

for.end:                                          ; preds = %for.cond19
  %21 = bitcast i32* %limit to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #7
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !15

for.end30:                                        ; preds = %for.cond
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #7
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #7
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_random_load(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %random_text = alloca [32 x [131072 x i8]], align 16
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #7
  %2 = bitcast [32 x [131072 x i8]]* %random_text to i8*
  call void @llvm.lifetime.start.p0i8(i64 4194304, i8* %2) #7
  %3 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %4, 32
  br i1 %cmp1, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp2 = icmp slt i32 5, %5
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %7 = load i32, i32* %j, align 4, !tbaa !6
  %cmp7 = icmp slt i32 %7, 131072
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %call9 = call double @ran()
  %mul = fmul double %call9, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv10 = trunc i32 %conv to i8
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom
  %9 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [131072 x i8], [131072 x i8]* %arrayidx, i64 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %10 = load i32, i32* %j, align 4, !tbaa !6
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4, !tbaa !6
  br label %for.cond6, !llvm.loop !16

for.end:                                          ; preds = %for.cond6
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4, !tbaa !6
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !17

for.end15:                                        ; preds = %for.cond
  %12 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp16 = icmp slt i32 4, %12
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.end15
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.end15
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc34, %if.end20
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %14 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %limit = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 0
  %15 = load i32, i32* %limit, align 8, !tbaa !8
  %cmp24 = icmp slt i32 %13, %15
  br i1 %cmp24, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond21
  %16 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom27
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx28, i32 0, i32 3
  %17 = load i8*, i8** %buf, align 8, !tbaa !11
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %call29 = call double @ran()
  %mul30 = fmul double %call29, 3.200000e+01
  %conv31 = fptosi double %mul30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom32
  %arraydecay = getelementptr inbounds [131072 x i8], [131072 x i8]* %arrayidx33, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 16 %arraydecay, i64 131072, i1 false)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body26
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 %19, 131072
  store i32 %add, i32* %i, align 4, !tbaa !6
  br label %for.cond21, !llvm.loop !18

for.end35:                                        ; preds = %for.cond21
  %20 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom36
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx37, i32 0, i32 1
  store i32 1048576, i32* %len, align 4, !tbaa !19
  %21 = bitcast [32 x [131072 x i8]]* %random_text to i8*
  call void @llvm.lifetime.end.p0i8(i64 4194304, i8* %21) #7
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #7
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #7
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
entry:
  %num.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !6
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !20
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #7
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7
  %3 = load i8*, i8** %filename.addr, align 8, !tbaa !20
  %call = call i32 (i8*, i32, ...) @open(i8* %3, i32 0)
  store i32 %call, i32* %fd, align 4, !tbaa !6
  %4 = load i32, i32* %fd, align 4, !tbaa !6
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !20
  %call1 = call i32* @__errno_location() #9
  %7 = load i32, i32* %call1, align 4, !tbaa !6
  %call2 = call i8* @strerror(i32 %7) #7
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %6, i8* %call2)
  call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 1
  store i32 0, i32* %len, align 4, !tbaa !19
  %9 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom4
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %11 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %fd, align 4, !tbaa !6
  %13 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom7
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 3
  %14 = load i8*, i8** %buf, align 8, !tbaa !11
  %15 = load i32, i32* %i, align 4, !tbaa !6
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call9 = call i64 @read(i32 %12, i8* %add.ptr, i64 131072)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %rc, align 4, !tbaa !6
  %16 = load i32, i32* %rc, align 4, !tbaa !6
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end13:                                         ; preds = %for.body
  %17 = load i32, i32* %rc, align 4, !tbaa !6
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %19 = load i8*, i8** %filename.addr, align 8, !tbaa !20
  %call17 = call i32* @__errno_location() #9
  %20 = load i32, i32* %call17, align 4, !tbaa !6
  %call18 = call i8* @strerror(i32 %20) #7
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %19, i8* %call18)
  call void @exit(i32 0) #8
  unreachable

if.end20:                                         ; preds = %if.end13
  %21 = load i32, i32* %rc, align 4, !tbaa !6
  %22 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom21
  %len23 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx22, i32 0, i32 1
  %23 = load i32, i32* %len23, align 4, !tbaa !19
  %add = add nsw i32 %23, %21
  store i32 %add, i32* %len23, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %24 = load i32, i32* %rc, align 4, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %add24 = add nsw i32 %25, %24
  store i32 %add24, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then12, %for.cond
  %26 = load i32, i32* %fd, align 4, !tbaa !6
  %call25 = call i32 @close(i32 %26)
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %for.end
  %27 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom26
  %len28 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx27, i32 0, i32 1
  %28 = load i32, i32* %len28, align 4, !tbaa !19
  %29 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp29 = icmp slt i32 %28, %29
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #7
  %31 = load i32, i32* %size.addr, align 4, !tbaa !6
  %32 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom31
  %len33 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx32, i32 0, i32 1
  %33 = load i32, i32* %len33, align 4, !tbaa !19
  %sub = sub nsw i32 %31, %33
  store i32 %sub, i32* %tmp, align 4, !tbaa !6
  %34 = load i32, i32* %tmp, align 4, !tbaa !6
  %35 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom34
  %len36 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx35, i32 0, i32 1
  %36 = load i32, i32* %len36, align 4, !tbaa !19
  %cmp37 = icmp sgt i32 %34, %36
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %while.body
  %37 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom40
  %len42 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx41, i32 0, i32 1
  %38 = load i32, i32* %len42, align 4, !tbaa !19
  store i32 %38, i32* %tmp, align 4, !tbaa !6
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %while.body
  %39 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp44 = icmp slt i32 3, %39
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %40 = load i32, i32* %tmp, align 4, !tbaa !6
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %41 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom49
  %buf51 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx50, i32 0, i32 3
  %42 = load i8*, i8** %buf51, align 8, !tbaa !11
  %43 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom52
  %len54 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx53, i32 0, i32 1
  %44 = load i32, i32* %len54, align 4, !tbaa !19
  %idx.ext55 = sext i32 %44 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %42, i64 %idx.ext55
  %45 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom57
  %buf59 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx58, i32 0, i32 3
  %46 = load i8*, i8** %buf59, align 8, !tbaa !11
  %47 = load i32, i32* %tmp, align 4, !tbaa !6
  %conv60 = sext i32 %47 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr56, i8* align 1 %46, i64 %conv60, i1 false)
  %48 = load i32, i32* %tmp, align 4, !tbaa !6
  %49 = load i32, i32* %num.addr, align 4, !tbaa !6
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom61
  %len63 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx62, i32 0, i32 1
  %50 = load i32, i32* %len63, align 4, !tbaa !19
  %add64 = add nsw i32 %50, %48
  store i32 %add64, i32* %len63, align 4, !tbaa !19
  %51 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #7
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #7
  %53 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #7
  %54 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #7
  ret i32 0
}

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

declare dso_local i64 @read(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !20
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  store i32 0, i32* %rc, align 4, !tbaa !6
  %1 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %4 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %2, i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %7 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %7)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %pos, align 8, !tbaa !21
  %10 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %11 = load i32, i32* %len, align 4, !tbaa !19
  %cmp7 = icmp sge i32 %9, %11
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %12 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp9 = icmp slt i32 4, %12
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %13 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %14 = load i32, i32* %pos16, align 8, !tbaa !21
  %15 = load i32, i32* %size.addr, align 4, !tbaa !6
  %add = add nsw i32 %14, %15
  %16 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %17 = load i32, i32* %len19, align 4, !tbaa !19
  %cmp20 = icmp sge i32 %add, %17
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end13
  %18 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %19 = load i32, i32* %len24, align 4, !tbaa !19
  %20 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %21 = load i32, i32* %pos27, align 8, !tbaa !21
  %sub = sub nsw i32 %19, %21
  store i32 %sub, i32* %rc, align 4, !tbaa !6
  br label %if.end28

if.else:                                          ; preds = %if.end13
  %22 = load i32, i32* %size.addr, align 4, !tbaa !6
  store i32 %22, i32* %rc, align 4, !tbaa !6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %24 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom29
  %buf31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 3
  %25 = load i8*, i8** %buf31, align 8, !tbaa !11
  %26 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom32
  %pos34 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx33, i32 0, i32 2
  %27 = load i32, i32* %pos34, align 8, !tbaa !21
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 %idxprom35
  %28 = load i32, i32* %rc, align 4, !tbaa !6
  %conv = sext i32 %28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %arrayidx36, i64 %conv, i1 false)
  %29 = load i32, i32* %rc, align 4, !tbaa !6
  %30 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom37
  %pos39 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx38, i32 0, i32 2
  %31 = load i32, i32* %pos39, align 8, !tbaa !21
  %add40 = add nsw i32 %31, %29
  store i32 %add40, i32* %pos39, align 8, !tbaa !21
  %32 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp41 = icmp slt i32 4, %32
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end28
  %33 = load i32, i32* %rc, align 4, !tbaa !6
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end28
  %34 = load i32, i32* %rc, align 4, !tbaa !6
  store i32 %34, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end12
  %35 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #7
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !20
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  store i32 %num, i32* %num.addr, align 4, !tbaa !6
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  store i32 0, i32* %rc, align 4, !tbaa !6
  %1 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %3 = load i32, i32* %size.addr, align 4, !tbaa !6
  %4 = load i32, i32* %num.addr, align 4, !tbaa !6
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %2, i32 %3, i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %6, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %8 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %8)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %pos, align 8, !tbaa !21
  %11 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %12 = load i32, i32* %len, align 4, !tbaa !19
  %cmp7 = icmp sge i32 %10, %12
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %13 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp9 = icmp slt i32 4, %13
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %14 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %15 = load i32, i32* %pos16, align 8, !tbaa !21
  %16 = load i32, i32* %size.addr, align 4, !tbaa !6
  %17 = load i32, i32* %num.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %16, %17
  %add = add nsw i32 %15, %mul
  %18 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %19 = load i32, i32* %len19, align 4, !tbaa !19
  %cmp20 = icmp sge i32 %add, %19
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end13
  %20 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %21 = load i32, i32* %len24, align 4, !tbaa !19
  %22 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %23 = load i32, i32* %pos27, align 8, !tbaa !21
  %sub = sub nsw i32 %21, %23
  %24 = load i32, i32* %size.addr, align 4, !tbaa !6
  %div = sdiv i32 %sub, %24
  store i32 %div, i32* %rc, align 4, !tbaa !6
  br label %if.end28

if.else:                                          ; preds = %if.end13
  %25 = load i32, i32* %num.addr, align 4, !tbaa !6
  store i32 %25, i32* %rc, align 4, !tbaa !6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %26 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %27 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom29
  %buf31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 3
  %28 = load i8*, i8** %buf31, align 8, !tbaa !11
  %29 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom32
  %pos34 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx33, i32 0, i32 2
  %30 = load i32, i32* %pos34, align 8, !tbaa !21
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom35
  %31 = load i32, i32* %rc, align 4, !tbaa !6
  %conv = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %arrayidx36, i64 %conv, i1 false)
  %32 = load i32, i32* %rc, align 4, !tbaa !6
  %33 = load i32, i32* %size.addr, align 4, !tbaa !6
  %mul37 = mul nsw i32 %32, %33
  %34 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom38 = sext i32 %34 to i64
  %arrayidx39 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom38
  %pos40 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx39, i32 0, i32 2
  %35 = load i32, i32* %pos40, align 8, !tbaa !21
  %add41 = add nsw i32 %35, %mul37
  store i32 %add41, i32* %pos40, align 8, !tbaa !21
  %36 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp42 = icmp slt i32 4, %36
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end28
  %37 = load i32, i32* %rc, align 4, !tbaa !6
  %38 = load i32, i32* %size.addr, align 4, !tbaa !6
  %mul45 = mul nsw i32 %37, %38
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %mul45)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end28
  %39 = load i32, i32* %rc, align 4, !tbaa !6
  store i32 %39, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end12
  %40 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #7
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_getc(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  store i32 0, i32* %rc, align 4, !tbaa !6
  %1 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %5)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %7 = load i32, i32* %pos, align 8, !tbaa !21
  %8 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %9 = load i32, i32* %len, align 4, !tbaa !19
  %cmp7 = icmp sge i32 %7, %9
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %10 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp9 = icmp slt i32 4, %10
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %11 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 3
  %12 = load i8*, i8** %buf, align 8, !tbaa !11
  %13 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom16
  %pos18 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx17, i32 0, i32 2
  %14 = load i32, i32* %pos18, align 8, !tbaa !21
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %pos18, align 8, !tbaa !21
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %12, i64 %idxprom19
  %15 = load i8, i8* %arrayidx20, align 1, !tbaa !12
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %rc, align 4, !tbaa !6
  %16 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp21 = icmp slt i32 4, %16
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end13
  %17 = load i32, i32* %rc, align 4, !tbaa !6
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %17)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  %18 = load i32, i32* %rc, align 4, !tbaa !6
  store i32 %18, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end12
  %19 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #7
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !12
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7
  store i32 0, i32* %rc, align 4, !tbaa !6
  %1 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %5)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %7 = load i32, i32* %pos, align 8, !tbaa !21
  %cmp5 = icmp sle i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom7
  %pos9 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 2
  %10 = load i32, i32* %pos9, align 8, !tbaa !21
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %10)
  call void @exit(i32 0) #8
  unreachable

if.end11:                                         ; preds = %if.end4
  %11 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom12
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 3
  %12 = load i8*, i8** %buf, align 8, !tbaa !11
  %13 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %14 = load i32, i32* %pos16, align 8, !tbaa !21
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %pos16, align 8, !tbaa !21
  %idxprom17 = sext i32 %dec to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 %idxprom17
  %15 = load i8, i8* %arrayidx18, align 1, !tbaa !12
  %conv = zext i8 %15 to i32
  %16 = load i8, i8* %ch.addr, align 1, !tbaa !12
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp ne i32 %conv, %conv19
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

if.end24:                                         ; preds = %if.end11
  %18 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp25 = icmp slt i32 4, %18
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %19 = load i32, i32* %rc, align 4, !tbaa !6
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %19)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %20 = load i8, i8* %ch.addr, align 1, !tbaa !12
  %conv30 = zext i8 %20 to i32
  %21 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #7
  ret i32 %conv30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_rewind(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_reset(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8, !tbaa !11
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4, !tbaa !19
  %conv = sext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 %conv, i1 false)
  %4 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom3
  %len5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx4, i32 0, i32 1
  store i32 0, i32* %len5, align 4, !tbaa !19
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !20
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %3 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %6 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %6)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %8 = load i8*, i8** %buf5, align 8, !tbaa !11
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %pos, align 8, !tbaa !21
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %12 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx9, i8* align 1 %11, i64 %conv, i1 false)
  %13 = load i32, i32* %size.addr, align 4, !tbaa !6
  %14 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %15 = load i32, i32* %len, align 4, !tbaa !19
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %len, align 4, !tbaa !19
  %16 = load i32, i32* %size.addr, align 4, !tbaa !6
  %17 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom12
  %pos14 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 2
  %18 = load i32, i32* %pos14, align 8, !tbaa !21
  %add15 = add nsw i32 %18, %16
  store i32 %add15, i32* %pos14, align 8, !tbaa !21
  %19 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp16 = icmp slt i32 4, %19
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end4
  %20 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %20)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end4
  %21 = load i32, i32* %size.addr, align 4, !tbaa !6
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !20
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  store i32 %num, i32* %num.addr, align 4, !tbaa !6
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %2 = load i32, i32* %size.addr, align 4, !tbaa !6
  %3 = load i32, i32* %num.addr, align 4, !tbaa !6
  %4 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %1, i32 %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %7 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %7)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %9 = load i8*, i8** %buf5, align 8, !tbaa !11
  %10 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %11 = load i32, i32* %pos, align 8, !tbaa !21
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !20
  %13 = load i32, i32* %size.addr, align 4, !tbaa !6
  %14 = load i32, i32* %num.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %13, %14
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx9, i8* align 1 %12, i64 %conv, i1 false)
  %15 = load i32, i32* %size.addr, align 4, !tbaa !6
  %16 = load i32, i32* %num.addr, align 4, !tbaa !6
  %mul10 = mul nsw i32 %15, %16
  %17 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom11
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 1
  %18 = load i32, i32* %len, align 4, !tbaa !19
  %add = add nsw i32 %18, %mul10
  store i32 %add, i32* %len, align 4, !tbaa !19
  %19 = load i32, i32* %size.addr, align 4, !tbaa !6
  %20 = load i32, i32* %num.addr, align 4, !tbaa !6
  %mul13 = mul nsw i32 %19, %20
  %21 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %22 = load i32, i32* %pos16, align 8, !tbaa !21
  %add17 = add nsw i32 %22, %mul13
  store i32 %add17, i32* %pos16, align 8, !tbaa !21
  %23 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp18 = icmp slt i32 4, %23
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end4
  %24 = load i32, i32* %num.addr, align 4, !tbaa !6
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %24)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end4
  %25 = load i32, i32* %num.addr, align 4, !tbaa !6
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !12
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !6
  %0 = load i32, i32* @dbglvl, align 4, !tbaa !6
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %ch.addr, align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %conv, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %5 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %5)
  call void @exit(i32 0) #8
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i8, i8* %ch.addr, align 1, !tbaa !12
  %7 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %8 = load i8*, i8** %buf, align 8, !tbaa !11
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %pos, align 8, !tbaa !21
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %pos, align 8, !tbaa !21
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  store i8 %6, i8* %arrayidx9, align 1, !tbaa !12
  %11 = load i32, i32* %fd.addr, align 4, !tbaa !6
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %12 = load i32, i32* %len, align 4, !tbaa !19
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %len, align 4, !tbaa !19
  %13 = load i8, i8* %ch.addr, align 1, !tbaa !12
  %conv13 = zext i8 %13 to i32
  ret i32 %conv13
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn writeonly }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"spec_fd_t", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!4, !4, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!9, !7, i64 4}
!20 = !{!10, !10, i64 0}
!21 = !{!9, !7, i64 8}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
