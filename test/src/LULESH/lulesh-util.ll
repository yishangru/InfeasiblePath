; ModuleID = 'lulesh-util.cc'
source_filename = "lulesh-util.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.cmdLineOpts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.Domain = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", i32, i32, i32*, i32*, i32**, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", double*, double*, double*, double*, double*, double*, double*, double*, double*, %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { double*, double*, double* }
%"struct.std::_Setprecision" = type { i32 }
%"struct.std::_Setw" = type { i32 }

$_Z8StrToIntIiEiPKcPT_ = comdat any

$_ZN6Domain5cycleEv = comdat any

$_ZSt10scientificRSt8ios_base = comdat any

$_ZSt12setprecisioni = comdat any

$_ZSt4setwi = comdat any

$_ZN6Domain1eEi = comdat any

$_Z4FABSd = comdat any

$_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt8ios_base9precisionEl = comdat any

$_ZNSt8ios_base5widthEl = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Missing integer argument to -i\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Parse Error on option -i integer value required after argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -s\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Parse Error on option -s integer value required after argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -r\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Parse Error on option -r integer value required after argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -f\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"Parse Error on option -f integer value required after argument\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -b\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Parse Error on option -b integer value required after argument\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -c\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Parse Error on option -c integer value required after argument\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Use of -v requires compiling with -DVIZ_MESH\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"ERROR: Unknown command line argument: %s\0A\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"Run completed:\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"   Problem size        =  \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"   MPI tasks           =  \00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"   Iteration count     =  \00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"   Final Origin Energy =  \00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"   Testing Plane 0 of Energy Array on rank 0:\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"        MaxAbsDiff   = \00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"        TotalAbsDiff = \00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"        MaxRelDiff   = \00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"\0AElapsed time         = \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" (s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Grind time (us/z/c)  = \00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c" (per dom)  (\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" overall)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"FOM                  = \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c" (z/s)\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Usage: %s [opts]\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c" where [opts] is one or more of:\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c" -q              : quiet mode - suppress all stdout\0A\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c" -i <iterations> : number of cycles to run\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c" -s <size>       : length of cube mesh along side\0A\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c" -r <numregions> : Number of distinct regions (def: 11)\0A\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c" -b <balance>    : Load balance between regions of a domain (def: 1)\0A\00", align 1
@.str.49 = private unnamed_addr constant [66 x i8] c" -c <cost>       : Extra cost of more expensive regions (def: 1)\0A\00", align 1
@.str.50 = private unnamed_addr constant [76 x i8] c" -f <numfiles>   : Number of files to split viz dump into (def: (np+10)/9)\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c" -p              : Print out progress\0A\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c" -v              : Output viz file (requires compiling with -DVIZ_MESH\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c" -h              : This message\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lulesh_util.cc, i8* null }]

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: uwtable
define dso_local void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** %argv, i32 %myRank, %struct.cmdLineOpts* %opts) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %myRank.addr = alloca i32, align 4
  %opts.addr = alloca %struct.cmdLineOpts*, align 8
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  %msg = alloca [80 x i8], align 16
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  store i32 %myRank, i32* %myRank.addr, align 4, !tbaa !2
  store %struct.cmdLineOpts* %opts, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %0 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end145

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  store i32 1, i32* %i, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.end144, %if.then
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %8, 1
  %9 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp4 = icmp sge i32 %add, %9
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %10 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %11 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %add6 = add nsw i32 %12, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx8, align 8, !tbaa !6
  %14 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %its = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %14, i32 0, i32 0
  %call9 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %13, i32* %its)
  store i32 %call9, i32* %ok, align 4, !tbaa !2
  %15 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  %16 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %add12 = add nsw i32 %17, 2
  store i32 %add12, i32* %i, align 4, !tbaa !2
  br label %if.end144

if.else:                                          ; preds = %while.body
  %18 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %18, i64 %idxprom13
  %20 = load i8*, i8** %arrayidx14, align 8, !tbaa !6
  %call15 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #11
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.else
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %add18 = add nsw i32 %21, 1
  %22 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp19 = icmp sge i32 %add18, %22
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %23 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %24 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %add22 = add nsw i32 %25, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %24, i64 %idxprom23
  %26 = load i8*, i8** %arrayidx24, align 8, !tbaa !6
  %27 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %nx = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %27, i32 0, i32 1
  %call25 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %26, i32* %nx)
  store i32 %call25, i32* %ok, align 4, !tbaa !2
  %28 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end21
  %29 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %add29 = add nsw i32 %30, 2
  store i32 %add29, i32* %i, align 4, !tbaa !2
  br label %if.end143

if.else30:                                        ; preds = %if.else
  %31 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds i8*, i8** %31, i64 %idxprom31
  %33 = load i8*, i8** %arrayidx32, align 8, !tbaa !6
  %call33 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #11
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else48

if.then35:                                        ; preds = %if.else30
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %add36 = add nsw i32 %34, 1
  %35 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp37 = icmp sge i32 %add36, %35
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then35
  %36 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then35
  %37 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %38 = load i32, i32* %i, align 4, !tbaa !2
  %add40 = add nsw i32 %38, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i8*, i8** %37, i64 %idxprom41
  %39 = load i8*, i8** %arrayidx42, align 8, !tbaa !6
  %40 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %numReg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %40, i32 0, i32 2
  %call43 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %39, i32* %numReg)
  store i32 %call43, i32* %ok, align 4, !tbaa !2
  %41 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool44 = icmp ne i32 %41, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end39
  %42 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end39
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %add47 = add nsw i32 %43, 2
  store i32 %add47, i32* %i, align 4, !tbaa !2
  br label %if.end142

if.else48:                                        ; preds = %if.else30
  %44 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom49 = sext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds i8*, i8** %44, i64 %idxprom49
  %46 = load i8*, i8** %arrayidx50, align 8, !tbaa !6
  %call51 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #11
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.else66

if.then53:                                        ; preds = %if.else48
  %47 = load i32, i32* %i, align 4, !tbaa !2
  %add54 = add nsw i32 %47, 1
  %48 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp55 = icmp sge i32 %add54, %48
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then53
  %49 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %49)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  %50 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %51 = load i32, i32* %i, align 4, !tbaa !2
  %add58 = add nsw i32 %51, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8*, i8** %50, i64 %idxprom59
  %52 = load i8*, i8** %arrayidx60, align 8, !tbaa !6
  %53 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %numFiles = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %53, i32 0, i32 3
  %call61 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %52, i32* %numFiles)
  store i32 %call61, i32* %ok, align 4, !tbaa !2
  %54 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool62 = icmp ne i32 %54, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end57
  %55 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end57
  %56 = load i32, i32* %i, align 4, !tbaa !2
  %add65 = add nsw i32 %56, 2
  store i32 %add65, i32* %i, align 4, !tbaa !2
  br label %if.end141

if.else66:                                        ; preds = %if.else48
  %57 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %58 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom67 = sext i32 %58 to i64
  %arrayidx68 = getelementptr inbounds i8*, i8** %57, i64 %idxprom67
  %59 = load i8*, i8** %arrayidx68, align 8, !tbaa !6
  %call69 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #11
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else66
  %60 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %showProg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %60, i32 0, i32 4
  store i32 1, i32* %showProg, align 4, !tbaa !8
  %61 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %if.end140

if.else72:                                        ; preds = %if.else66
  %62 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %63 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom73 = sext i32 %63 to i64
  %arrayidx74 = getelementptr inbounds i8*, i8** %62, i64 %idxprom73
  %64 = load i8*, i8** %arrayidx74, align 8, !tbaa !6
  %call75 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #11
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.else72
  %65 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %quiet = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %65, i32 0, i32 5
  store i32 1, i32* %quiet, align 4, !tbaa !10
  %66 = load i32, i32* %i, align 4, !tbaa !2
  %inc78 = add nsw i32 %66, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !2
  br label %if.end139

if.else79:                                        ; preds = %if.else72
  %67 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %68 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom80 = sext i32 %68 to i64
  %arrayidx81 = getelementptr inbounds i8*, i8** %67, i64 %idxprom80
  %69 = load i8*, i8** %arrayidx81, align 8, !tbaa !6
  %call82 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #11
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.else97

if.then84:                                        ; preds = %if.else79
  %70 = load i32, i32* %i, align 4, !tbaa !2
  %add85 = add nsw i32 %70, 1
  %71 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp86 = icmp sge i32 %add85, %71
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  %72 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %72)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %73 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %74 = load i32, i32* %i, align 4, !tbaa !2
  %add89 = add nsw i32 %74, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i8*, i8** %73, i64 %idxprom90
  %75 = load i8*, i8** %arrayidx91, align 8, !tbaa !6
  %76 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %balance = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %76, i32 0, i32 8
  %call92 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %75, i32* %balance)
  store i32 %call92, i32* %ok, align 4, !tbaa !2
  %77 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool93 = icmp ne i32 %77, 0
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end88
  %78 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i32 %78)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end88
  %79 = load i32, i32* %i, align 4, !tbaa !2
  %add96 = add nsw i32 %79, 2
  store i32 %add96, i32* %i, align 4, !tbaa !2
  br label %if.end138

if.else97:                                        ; preds = %if.else79
  %80 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %81 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom98 = sext i32 %81 to i64
  %arrayidx99 = getelementptr inbounds i8*, i8** %80, i64 %idxprom98
  %82 = load i8*, i8** %arrayidx99, align 8, !tbaa !6
  %call100 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #11
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.else115

if.then102:                                       ; preds = %if.else97
  %83 = load i32, i32* %i, align 4, !tbaa !2
  %add103 = add nsw i32 %83, 1
  %84 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp104 = icmp sge i32 %add103, %84
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then102
  %85 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %85)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then102
  %86 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %87 = load i32, i32* %i, align 4, !tbaa !2
  %add107 = add nsw i32 %87, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8*, i8** %86, i64 %idxprom108
  %88 = load i8*, i8** %arrayidx109, align 8, !tbaa !6
  %89 = load %struct.cmdLineOpts*, %struct.cmdLineOpts** %opts.addr, align 8, !tbaa !6
  %cost = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %89, i32 0, i32 7
  %call110 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %88, i32* %cost)
  store i32 %call110, i32* %ok, align 4, !tbaa !2
  %90 = load i32, i32* %ok, align 4, !tbaa !2
  %tobool111 = icmp ne i32 %90, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end106
  %91 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 %91)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end106
  %92 = load i32, i32* %i, align 4, !tbaa !2
  %add114 = add nsw i32 %92, 2
  store i32 %add114, i32* %i, align 4, !tbaa !2
  br label %if.end137

if.else115:                                       ; preds = %if.else97
  %93 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %94 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom116 = sext i32 %94 to i64
  %arrayidx117 = getelementptr inbounds i8*, i8** %93, i64 %idxprom116
  %95 = load i8*, i8** %arrayidx117, align 8, !tbaa !6
  %call118 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #11
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.else115
  %96 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %96)
  %97 = load i32, i32* %i, align 4, !tbaa !2
  %inc121 = add nsw i32 %97, 1
  store i32 %inc121, i32* %i, align 4, !tbaa !2
  br label %if.end136

if.else122:                                       ; preds = %if.else115
  %98 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %99 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom123 = sext i32 %99 to i64
  %arrayidx124 = getelementptr inbounds i8*, i8** %98, i64 %idxprom123
  %100 = load i8*, i8** %arrayidx124, align 8, !tbaa !6
  %call125 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #11
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.else122
  %101 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx128 = getelementptr inbounds i8*, i8** %101, i64 0
  %102 = load i8*, i8** %arrayidx128, align 8, !tbaa !6
  %103 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL23PrintCommandLineOptionsPci(i8* %102, i32 %103)
  call void @exit(i32 0) #12
  unreachable

if.else129:                                       ; preds = %if.else122
  %104 = bitcast [80 x i8]* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %104) #3
  %105 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx130 = getelementptr inbounds i8*, i8** %105, i64 0
  %106 = load i8*, i8** %arrayidx130, align 8, !tbaa !6
  %107 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL23PrintCommandLineOptionsPci(i8* %106, i32 %107)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  %108 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %109 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom131 = sext i32 %109 to i64
  %arrayidx132 = getelementptr inbounds i8*, i8** %108, i64 %idxprom131
  %110 = load i8*, i8** %arrayidx132, align 8, !tbaa !6
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* %110) #3
  %arraydecay134 = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  %111 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  call void @_ZL10ParseErrorPKci(i8* %arraydecay134, i32 %111)
  %112 = bitcast [80 x i8]* %msg to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %112) #3
  br label %if.end135

if.end135:                                        ; preds = %if.else129
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then120
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end113
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end95
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then77
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then71
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end64
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end46
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end28
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end11
  %113 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #3
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #3
  br label %if.end145

if.end145:                                        ; preds = %while.end, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: uwtable
define internal void @_ZL10ParseErrorPKci(i8* %message, i32 %myRank) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %myRank.addr = alloca i32, align 4
  store i8* %message, i8** %message.addr, align 8, !tbaa !6
  store i32 %myRank, i32* %myRank.addr, align 4, !tbaa !2
  %0 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %message.addr, align 8, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* %1)
  call void @exit(i32 -1) #12
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_Z8StrToIntIiEiPKcPT_(i8* %token, i32* %retVal) #6 comdat {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca i8*, align 8
  %retVal.addr = alloca i32*, align 8
  %c = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %decimal_base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %token, i8** %token.addr, align 8, !tbaa !6
  store i32* %retVal, i32** %retVal.addr, align 8, !tbaa !6
  %0 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #3
  %2 = bitcast i32* %decimal_base to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 10, i32* %decimal_base, align 4, !tbaa !2
  %3 = load i8*, i8** %token.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %token.addr, align 8, !tbaa !6
  store i8* %4, i8** %c, align 8, !tbaa !6
  %5 = load i8*, i8** %c, align 8, !tbaa !6
  %call = call i64 @strtol(i8* %5, i8** %endptr, i32 10) #3
  %conv = trunc i64 %call to i32
  %6 = load i32*, i32** %retVal.addr, align 8, !tbaa !6
  store i32 %conv, i32* %6, align 4, !tbaa !2
  %7 = load i8*, i8** %endptr, align 8, !tbaa !6
  %8 = load i8*, i8** %c, align 8, !tbaa !6
  %cmp1 = icmp ne i8* %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %endptr, align 8, !tbaa !6
  %10 = load i8, i8* %9, align 1, !tbaa !13
  %conv2 = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i8*, i8** %endptr, align 8, !tbaa !6
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %conv4 = sext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then
  %13 = bitcast i32* %decimal_base to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
  %15 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #3
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: uwtable
define internal void @_ZL23PrintCommandLineOptionsPci(i8* %execname, i32 %myRank) #0 {
entry:
  %execname.addr = alloca i8*, align 8
  %myRank.addr = alloca i32, align 4
  store i8* %execname, i8** %execname.addr, align 8, !tbaa !6
  store i32 %myRank, i32* %myRank.addr, align 4, !tbaa !2
  %0 = load i32, i32* %myRank.addr, align 4, !tbaa !2
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %execname.addr, align 8, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.49, i64 0, i64 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.50, i64 0, i64 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.52, i64 0, i64 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define dso_local void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %elapsed_time, %class.Domain* nonnull align 8 dereferenceable(1312) %locDom, i32 %nx, i32 %numRanks) #0 {
entry:
  %elapsed_time.addr = alloca double, align 8
  %locDom.addr = alloca %class.Domain*, align 8
  %nx.addr = alloca i32, align 4
  %numRanks.addr = alloca i32, align 4
  %nx8 = alloca i64, align 8
  %grindTime1 = alloca double, align 8
  %grindTime2 = alloca double, align 8
  %ElemId = alloca i32, align 4
  %agg.tmp = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp32 = alloca %"struct.std::_Setw", align 4
  %MaxAbsDiff = alloca double, align 8
  %TotalAbsDiff = alloca double, align 8
  %MaxRelDiff = alloca double, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %AbsDiff = alloca double, align 8
  %RelDiff = alloca double, align 8
  %agg.tmp65 = alloca %"struct.std::_Setw", align 4
  %agg.tmp73 = alloca %"struct.std::_Setw", align 4
  %agg.tmp81 = alloca %"struct.std::_Setw", align 4
  %agg.tmp88 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp94 = alloca %"struct.std::_Setw", align 4
  %agg.tmp101 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp107 = alloca %"struct.std::_Setw", align 4
  %agg.tmp114 = alloca %"struct.std::_Setw", align 4
  %agg.tmp122 = alloca %"struct.std::_Setw", align 4
  store double %elapsed_time, double* %elapsed_time.addr, align 8, !tbaa !14
  store %class.Domain* %locDom, %class.Domain** %locDom.addr, align 8, !tbaa !6
  store i32 %nx, i32* %nx.addr, align 4, !tbaa !2
  store i32 %numRanks, i32* %numRanks.addr, align 4, !tbaa !2
  %0 = bitcast i64* %nx8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %nx8, align 8, !tbaa !16
  %2 = bitcast double* %grindTime1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = load double, double* %elapsed_time.addr, align 8, !tbaa !14
  %mul = fmul double %3, 1.000000e+06
  %4 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %4)
  %5 = load i32, i32* %call, align 4, !tbaa !2
  %conv1 = sitofp i32 %5 to double
  %div = fdiv double %mul, %conv1
  %6 = load i64, i64* %nx8, align 8, !tbaa !16
  %7 = load i64, i64* %nx8, align 8, !tbaa !16
  %mul2 = mul nsw i64 %6, %7
  %8 = load i64, i64* %nx8, align 8, !tbaa !16
  %mul3 = mul nsw i64 %mul2, %8
  %conv4 = sitofp i64 %mul3 to double
  %div5 = fdiv double %div, %conv4
  store double %div5, double* %grindTime1, align 8, !tbaa !14
  %9 = bitcast double* %grindTime2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load double, double* %elapsed_time.addr, align 8, !tbaa !14
  %mul6 = fmul double %10, 1.000000e+06
  %11 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %11)
  %12 = load i32, i32* %call7, align 4, !tbaa !2
  %conv8 = sitofp i32 %12 to double
  %div9 = fdiv double %mul6, %conv8
  %13 = load i64, i64* %nx8, align 8, !tbaa !16
  %14 = load i64, i64* %nx8, align 8, !tbaa !16
  %mul10 = mul nsw i64 %13, %14
  %15 = load i64, i64* %nx8, align 8, !tbaa !16
  %mul11 = mul nsw i64 %mul10, %15
  %16 = load i32, i32* %numRanks.addr, align 4, !tbaa !2
  %conv12 = sext i32 %16 to i64
  %mul13 = mul nsw i64 %mul11, %conv12
  %conv14 = sitofp i64 %mul13 to double
  %div15 = fdiv double %div9, %conv14
  store double %div15, double* %grindTime2, align 8, !tbaa !14
  %17 = bitcast i32* %ElemId to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %ElemId, align 4, !tbaa !2
  %call16 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %call17 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %18 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %call18 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call17, i32 %18)
  %call19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %19 = load i32, i32* %numRanks.addr, align 4, !tbaa !2
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call20, i32 %19)
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %20 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %call24 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %20)
  %21 = load i32, i32* %call24, align 4, !tbaa !2
  %call25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call23, i32 %21)
  %call26 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  %call28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt10scientificRSt8ios_base)
  %call29 = call i32 @_ZSt12setprecisioni(i32 6)
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp, i32 0, i32 0
  store i32 %call29, i32* %coerce.dive, align 4
  %coerce.dive30 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp, i32 0, i32 0
  %22 = load i32, i32* %coerce.dive30, align 4
  %call31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call28, i32 %22)
  %call33 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive34 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp32, i32 0, i32 0
  store i32 %call33, i32* %coerce.dive34, align 4
  %coerce.dive35 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp32, i32 0, i32 0
  %23 = load i32, i32* %coerce.dive35, align 4
  %call36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %23)
  %24 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %25 = load i32, i32* %ElemId, align 4, !tbaa !2
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %24, i32 %25)
  %26 = load double, double* %call37, align 8, !tbaa !14
  %call38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call36, double %26)
  %call39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %27 = bitcast double* %MaxAbsDiff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #3
  store double 0.000000e+00, double* %MaxAbsDiff, align 8, !tbaa !14
  %28 = bitcast double* %TotalAbsDiff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  store double 0.000000e+00, double* %TotalAbsDiff, align 8, !tbaa !14
  %29 = bitcast double* %MaxRelDiff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #3
  store double 0.000000e+00, double* %MaxRelDiff, align 8, !tbaa !14
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #3
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %31 = load i32, i32* %j, align 4, !tbaa !2
  %32 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  br label %for.end62

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #3
  %35 = load i32, i32* %j, align 4, !tbaa !2
  %add = add nsw i32 %35, 1
  store i32 %add, i32* %k, align 4, !tbaa !2
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %for.body
  %36 = load i32, i32* %k, align 4, !tbaa !2
  %37 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %cmp41 = icmp slt i32 %36, %37
  br i1 %cmp41, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond40
  store i32 5, i32* %cleanup.dest.slot, align 4
  %38 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  br label %for.end

for.body43:                                       ; preds = %for.cond40
  %39 = bitcast double* %AbsDiff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %39) #3
  %40 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %41 = load i32, i32* %j, align 4, !tbaa !2
  %42 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %mul44 = mul nsw i32 %41, %42
  %43 = load i32, i32* %k, align 4, !tbaa !2
  %add45 = add nsw i32 %mul44, %43
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %40, i32 %add45)
  %44 = load double, double* %call46, align 8, !tbaa !14
  %45 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %46 = load i32, i32* %k, align 4, !tbaa !2
  %47 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %mul47 = mul nsw i32 %46, %47
  %48 = load i32, i32* %j, align 4, !tbaa !2
  %add48 = add nsw i32 %mul47, %48
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %45, i32 %add48)
  %49 = load double, double* %call49, align 8, !tbaa !14
  %sub = fsub double %44, %49
  %call50 = call double @_Z4FABSd(double %sub)
  store double %call50, double* %AbsDiff, align 8, !tbaa !14
  %50 = load double, double* %AbsDiff, align 8, !tbaa !14
  %51 = load double, double* %TotalAbsDiff, align 8, !tbaa !14
  %add51 = fadd double %51, %50
  store double %add51, double* %TotalAbsDiff, align 8, !tbaa !14
  %52 = load double, double* %MaxAbsDiff, align 8, !tbaa !14
  %53 = load double, double* %AbsDiff, align 8, !tbaa !14
  %cmp52 = fcmp olt double %52, %53
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %for.body43
  %54 = load double, double* %AbsDiff, align 8, !tbaa !14
  store double %54, double* %MaxAbsDiff, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body43
  %55 = bitcast double* %RelDiff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %55) #3
  %56 = load double, double* %AbsDiff, align 8, !tbaa !14
  %57 = load %class.Domain*, %class.Domain** %locDom.addr, align 8, !tbaa !6
  %58 = load i32, i32* %k, align 4, !tbaa !2
  %59 = load i32, i32* %nx.addr, align 4, !tbaa !2
  %mul53 = mul nsw i32 %58, %59
  %60 = load i32, i32* %j, align 4, !tbaa !2
  %add54 = add nsw i32 %mul53, %60
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %57, i32 %add54)
  %61 = load double, double* %call55, align 8, !tbaa !14
  %div56 = fdiv double %56, %61
  store double %div56, double* %RelDiff, align 8, !tbaa !14
  %62 = load double, double* %MaxRelDiff, align 8, !tbaa !14
  %63 = load double, double* %RelDiff, align 8, !tbaa !14
  %cmp57 = fcmp olt double %62, %63
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end
  %64 = load double, double* %RelDiff, align 8, !tbaa !14
  store double %64, double* %MaxRelDiff, align 8, !tbaa !14
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end
  %65 = bitcast double* %RelDiff to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #3
  %66 = bitcast double* %AbsDiff to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %67 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond40, !llvm.loop !18

for.end:                                          ; preds = %for.cond.cleanup42
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %68 = load i32, i32* %j, align 4, !tbaa !2
  %inc61 = add nsw i32 %68, 1
  store i32 %inc61, i32* %j, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !19

for.end62:                                        ; preds = %for.cond.cleanup
  %call63 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0))
  %call64 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  %call66 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive67 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp65, i32 0, i32 0
  store i32 %call66, i32* %coerce.dive67, align 4
  %coerce.dive68 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp65, i32 0, i32 0
  %69 = load i32, i32* %coerce.dive68, align 4
  %call69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call64, i32 %69)
  %70 = load double, double* %MaxAbsDiff, align 8, !tbaa !14
  %call70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call69, double %70)
  %call71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call72 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  %call74 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive75 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp73, i32 0, i32 0
  store i32 %call74, i32* %coerce.dive75, align 4
  %coerce.dive76 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp73, i32 0, i32 0
  %71 = load i32, i32* %coerce.dive76, align 4
  %call77 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call72, i32 %71)
  %72 = load double, double* %TotalAbsDiff, align 8, !tbaa !14
  %call78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call77, double %72)
  %call79 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call80 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0))
  %call82 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive83 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp81, i32 0, i32 0
  store i32 %call82, i32* %coerce.dive83, align 4
  %coerce.dive84 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp81, i32 0, i32 0
  %73 = load i32, i32* %coerce.dive84, align 4
  %call85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call80, i32 %73)
  %74 = load double, double* %MaxRelDiff, align 8, !tbaa !14
  %call86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call85, double %74)
  %call87 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %vtable = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %75 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %75, align 8
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset
  %76 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  call void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %76, i32 260)
  %call89 = call i32 @_ZSt12setprecisioni(i32 2)
  %coerce.dive90 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp88, i32 0, i32 0
  store i32 %call89, i32* %coerce.dive90, align 4
  %coerce.dive91 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp88, i32 0, i32 0
  %77 = load i32, i32* %coerce.dive91, align 4
  %call92 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %77)
  %call93 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0))
  %call95 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive96 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp94, i32 0, i32 0
  store i32 %call95, i32* %coerce.dive96, align 4
  %coerce.dive97 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp94, i32 0, i32 0
  %78 = load i32, i32* %coerce.dive97, align 4
  %call98 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call93, i32 %78)
  %79 = load double, double* %elapsed_time.addr, align 8, !tbaa !14
  %call99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call98, double %79)
  %call100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %call102 = call i32 @_ZSt12setprecisioni(i32 8)
  %coerce.dive103 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp101, i32 0, i32 0
  store i32 %call102, i32* %coerce.dive103, align 4
  %coerce.dive104 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp101, i32 0, i32 0
  %80 = load i32, i32* %coerce.dive104, align 4
  %call105 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %80)
  %call106 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0))
  %call108 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive109 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp107, i32 0, i32 0
  store i32 %call108, i32* %coerce.dive109, align 4
  %coerce.dive110 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp107, i32 0, i32 0
  %81 = load i32, i32* %coerce.dive110, align 4
  %call111 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call106, i32 %81)
  %82 = load double, double* %grindTime1, align 8, !tbaa !14
  %call112 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call111, double %82)
  %call113 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  %call115 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive116 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp114, i32 0, i32 0
  store i32 %call115, i32* %coerce.dive116, align 4
  %coerce.dive117 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp114, i32 0, i32 0
  %83 = load i32, i32* %coerce.dive117, align 4
  %call118 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call113, i32 %83)
  %84 = load double, double* %elapsed_time.addr, align 8, !tbaa !14
  %call119 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call118, double %84)
  %call120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %call121 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0))
  %call123 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive124 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp122, i32 0, i32 0
  store i32 %call123, i32* %coerce.dive124, align 4
  %coerce.dive125 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp122, i32 0, i32 0
  %85 = load i32, i32* %coerce.dive125, align 4
  %call126 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call121, i32 %85)
  %86 = load double, double* %grindTime2, align 8, !tbaa !14
  %div127 = fdiv double 1.000000e+03, %86
  %call128 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call126, double %div127)
  %call129 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  store i32 1, i32* %cleanup.dest.slot, align 4
  %87 = bitcast double* %MaxRelDiff to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #3
  %88 = bitcast double* %TotalAbsDiff to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %88) #3
  %89 = bitcast double* %MaxAbsDiff to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #3
  %90 = bitcast i32* %ElemId to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = bitcast double* %grindTime2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %91) #3
  %92 = bitcast double* %grindTime1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #3
  %93 = bitcast i64* %nx8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %93) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_cycle = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 72
  ret i32* %m_cycle
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* %__s) #8 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !6
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !6
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**
  %vtable = load i8*, i8** %2, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !6
  %7 = load i8*, i8** %__s.addr, align 8, !tbaa !6
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !6
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8)
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %6, i8* %7, i64 %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !6
  ret %"class.std::basic_ostream"* %9
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i32 %__f.coerce) #8 {
entry:
  %__f = alloca %"struct.std::_Setprecision", align 4
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  store i32 %__f.coerce, i32* %coerce.dive, align 4
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  %1 = bitcast %"class.std::basic_ostream"* %0 to i8**
  %vtable = load i8*, i8** %1, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %2 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %2, align 8
  %3 = bitcast %"class.std::basic_ostream"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %vbase.offset
  %4 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  %5 = load i32, i32* %_M_n, align 4, !tbaa !22
  %conv = sext i32 %5 to i64
  %call = call i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %4, i64 %conv)
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  ret %"class.std::basic_ostream"* %6
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %this, %"class.std::ios_base"* (%"class.std::ios_base"*)* %__pf) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::ios_base"* (%"class.std::ios_base"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !6
  store %"class.std::ios_base"* (%"class.std::ios_base"*)* %__pf, %"class.std::ios_base"* (%"class.std::ios_base"*)** %__pf.addr, align 8, !tbaa !6
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::ios_base"* (%"class.std::ios_base"*)*, %"class.std::ios_base"* (%"class.std::ios_base"*)** %__pf.addr, align 8, !tbaa !6
  %1 = bitcast %"class.std::basic_ostream"* %this1 to i8**
  %vtable = load i8*, i8** %1, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %2 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %2, align 8
  %3 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %vbase.offset
  %4 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call = call nonnull align 8 dereferenceable(216) %"class.std::ios_base"* %0(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %4)
  ret %"class.std::basic_ostream"* %this1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(216) %"class.std::ios_base"* @_ZSt10scientificRSt8ios_base(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %__base) #8 comdat {
entry:
  %__base.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %__base, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !6
  %0 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !6
  %call = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %0, i32 256, i32 260)
  %1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !6
  ret %"class.std::ios_base"* %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZSt12setprecisioni(i32 %__n) #9 comdat {
entry:
  %retval = alloca %"struct.std::_Setprecision", align 4
  %__n.addr = alloca i32, align 4
  store i32 %__n, i32* %__n.addr, align 4, !tbaa !2
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  %0 = load i32, i32* %__n.addr, align 4, !tbaa !2
  store i32 %0, i32* %_M_n, align 4, !tbaa !22
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  %1 = load i32, i32* %coerce.dive, align 4
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i32 %__f.coerce) #8 {
entry:
  %__f = alloca %"struct.std::_Setw", align 4
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %__f, i32 0, i32 0
  store i32 %__f.coerce, i32* %coerce.dive, align 4
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  %1 = bitcast %"class.std::basic_ostream"* %0 to i8**
  %vtable = load i8*, i8** %1, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %2 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %2, align 8
  %3 = bitcast %"class.std::basic_ostream"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %vbase.offset
  %4 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %_M_n = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %__f, i32 0, i32 0
  %5 = load i32, i32* %_M_n, align 4, !tbaa !24
  %conv = sext i32 %5 to i64
  %call = call i64 @_ZNSt8ios_base5widthEl(%"class.std::ios_base"* %4, i64 %conv)
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !6
  ret %"class.std::basic_ostream"* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZSt4setwi(i32 %__n) #9 comdat {
entry:
  %retval = alloca %"struct.std::_Setw", align 4
  %__n.addr = alloca i32, align 4
  store i32 %__n, i32* %__n.addr, align 4, !tbaa !2
  %_M_n = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %retval, i32 0, i32 0
  %0 = load i32, i32* %__n.addr, align 4, !tbaa !2
  store i32 %0, i32* %_M_n, align 4, !tbaa !24
  %coerce.dive = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %retval, i32 0, i32 0
  %1 = load i32, i32* %coerce.dive, align 4
  ret i32 %1
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %this, double %__f) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__f.addr = alloca double, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !6
  store double %__f, double* %__f.addr, align 8, !tbaa !14
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load double, double* %__f.addr, align 8, !tbaa !14
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %this1, double %0)
  ret %"class.std::basic_ostream"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !6
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !2
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_e, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4FABSd(double %arg) #9 comdat {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8, !tbaa !14
  %0 = load double, double* %arg.addr, align 8, !tbaa !14
  %1 = call double @llvm.fabs.f64(double %0)
  ret double %1
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %this, i32 %__mask) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__mask.addr = alloca i32, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !6
  store i32 %__mask, i32* %__mask.addr, align 4, !tbaa !26
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = load i32, i32* %__mask.addr, align 4, !tbaa !26
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %0)
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags, i32 %call)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %this, i32 %__fmtfl, i32 %__mask) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__fmtfl.addr = alloca i32, align 4
  %__mask.addr = alloca i32, align 4
  %__old = alloca i32, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !6
  store i32 %__fmtfl, i32* %__fmtfl.addr, align 4, !tbaa !26
  store i32 %__mask, i32* %__mask.addr, align 4, !tbaa !26
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = bitcast i32* %__old to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %1 = load i32, i32* %_M_flags, align 8, !tbaa !28
  store i32 %1, i32* %__old, align 4, !tbaa !26
  %2 = load i32, i32* %__mask.addr, align 4, !tbaa !26
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %2)
  %_M_flags2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags2, i32 %call)
  %3 = load i32, i32* %__fmtfl.addr, align 4, !tbaa !26
  %4 = load i32, i32* %__mask.addr, align 4, !tbaa !26
  %call4 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %3, i32 %4)
  %_M_flags5 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags5, i32 %call4)
  %5 = load i32, i32* %__old, align 4, !tbaa !26
  %6 = bitcast i32* %__old to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  ret i32 %5
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #8 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8, !tbaa !6
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !26
  %0 = load i32*, i32** %__a.addr, align 8, !tbaa !6
  %1 = load i32, i32* %0, align 4, !tbaa !26
  %2 = load i32, i32* %__b.addr, align 4, !tbaa !26
  %call = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8, !tbaa !6
  store i32 %call, i32* %3, align 4, !tbaa !26
  ret i32* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__a) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !26
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !26
  %neg = xor i32 %0, -1
  ret i32 %neg
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #8 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8, !tbaa !6
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !26
  %0 = load i32*, i32** %__a.addr, align 8, !tbaa !6
  %1 = load i32, i32* %0, align 4, !tbaa !26
  %2 = load i32, i32* %__b.addr, align 4, !tbaa !26
  %call = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8, !tbaa !6
  store i32 %call, i32* %3, align 4, !tbaa !26
  ret i32* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !26
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !26
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !26
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !26
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !26
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !26
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !26
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !26
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !6
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !16
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !33
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds double, double* %1, i64 %2
  ret double* %add.ptr
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !6
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !36
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1)
  %0 = load i32, i32* %__state.addr, align 4, !tbaa !36
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !6
  %call = call i64 @strlen(i8* %0) #3
  ret i64 %call
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !36
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !36
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !36
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !36
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !6
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5
  %1 = load i32, i32* %_M_streambuf_state, align 8, !tbaa !37
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %this, i64 %__prec) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__prec.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !6
  store i64 %__prec, i64* %__prec.addr, align 8, !tbaa !16
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = bitcast i64* %__old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %_M_precision = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 1
  %1 = load i64, i64* %_M_precision, align 8, !tbaa !38
  store i64 %1, i64* %__old, align 8, !tbaa !16
  %2 = load i64, i64* %__prec.addr, align 8, !tbaa !16
  %_M_precision2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 1
  store i64 %2, i64* %_M_precision2, align 8, !tbaa !38
  %3 = load i64, i64* %__old, align 8, !tbaa !16
  %4 = bitcast i64* %__old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #3
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt8ios_base5widthEl(%"class.std::ios_base"* %this, i64 %__wide) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__wide.addr = alloca i64, align 8
  %__old = alloca i64, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !6
  store i64 %__wide, i64* %__wide.addr, align 8, !tbaa !16
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = bitcast i64* %__old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %_M_width = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 2
  %1 = load i64, i64* %_M_width, align 8, !tbaa !39
  store i64 %1, i64* %__old, align 8, !tbaa !16
  %2 = load i64, i64* %__wide.addr, align 8, !tbaa !16
  %_M_width2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 2
  store i64 %2, i64* %_M_width2, align 8, !tbaa !39
  %3 = load i64, i64* %__old, align 8, !tbaa !16
  %4 = bitcast i64* %__old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #3
  ret i64 %3
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lulesh_util.cc() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !3, i64 16}
!9 = !{!"_ZTS11cmdLineOpts", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32}
!10 = !{!9, !3, i64 20}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!4, !4, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!23, !3, i64 0}
!23 = !{!"_ZTSSt13_Setprecision", !3, i64 0}
!24 = !{!25, !3, i64 0}
!25 = !{!"_ZTSSt5_Setw", !3, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!28 = !{!29, !27, i64 24}
!29 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !27, i64 24, !30, i64 28, !30, i64 32, !7, i64 40, !31, i64 48, !4, i64 64, !3, i64 192, !7, i64 200, !32, i64 208}
!30 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !17, i64 8}
!32 = !{!"_ZTSSt6locale", !7, i64 0}
!33 = !{!34, !7, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !7, i64 0, !7, i64 8, !7, i64 16}
!36 = !{!30, !30, i64 0}
!37 = !{!29, !30, i64 32}
!38 = !{!29, !17, i64 8}
!39 = !{!29, !17, i64 16}
