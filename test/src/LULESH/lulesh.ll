; ModuleID = 'lulesh.cc'
source_filename = "lulesh.cc"
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.Domain = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", i32, i32, i32*, i32*, i32**, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", double*, double*, double*, double*, double*, double*, double*, double*, double*, %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { double*, double*, double* }
%struct.cmdLineOpts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }

$_ZN6Domain8nodelistEi = comdat any

$_ZN6Domain4voloEi = comdat any

$_ZN6Domain4vnewEi = comdat any

$_ZN6Domain1vEi = comdat any

$_ZN6Domain4delvEi = comdat any

$_ZN6Domain6arealgEi = comdat any

$_ZN6Domain2xdEi = comdat any

$_ZN6Domain2ydEi = comdat any

$_ZN6Domain2zdEi = comdat any

$_ZN6Domain3dxxEi = comdat any

$_ZN6Domain3dyyEi = comdat any

$_ZN6Domain3dzzEi = comdat any

$_ZN6Domain4timeEv = comdat any

$_ZN6Domain8stoptimeEv = comdat any

$_ZN6Domain5cycleEv = comdat any

$_ZSt10scientificRSt8ios_base = comdat any

$_ZN6Domain9deltatimeEv = comdat any

$_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZN6Domain1xEi = comdat any

$_ZN6Domain1yEi = comdat any

$_ZN6Domain1zEi = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_Z4SQRTd = comdat any

$_ZN6Domain7dtfixedEv = comdat any

$_ZN6Domain9dtcourantEv = comdat any

$_ZN6Domain7dthydroEv = comdat any

$_ZN6Domain15deltatimemultlbEv = comdat any

$_ZN6Domain15deltatimemultubEv = comdat any

$_ZN6Domain5dtmaxEv = comdat any

$_ZN6Domain7numElemEv = comdat any

$_ZNK6Domain5u_cutEv = comdat any

$_ZN6Domain7numNodeEv = comdat any

$_ZN6Domain2fxEi = comdat any

$_ZN6Domain2fyEi = comdat any

$_ZN6Domain2fzEi = comdat any

$_ZNK6Domain6hgcoefEv = comdat any

$_Z8AllocateIdEPT_m = comdat any

$_Z7ReleaseIdEvPPT_ = comdat any

$_ZN6Domain1pEi = comdat any

$_ZN6Domain1qEi = comdat any

$_ZN6Domain13nodeElemCountEi = comdat any

$_ZN6Domain18nodeElemCornerListEi = comdat any

$_ZN6Domain2ssEi = comdat any

$_ZN6Domain8elemMassEi = comdat any

$_Z4CBRTd = comdat any

$_ZN6Domain9nodalMassEi = comdat any

$_ZN6Domain3xddEi = comdat any

$_ZN6Domain3yddEi = comdat any

$_ZN6Domain3zddEi = comdat any

$_ZN6Domain5sizeXEv = comdat any

$_ZN6Domain10symmXemptyEv = comdat any

$_ZN6Domain5symmXEi = comdat any

$_ZN6Domain10symmYemptyEv = comdat any

$_ZN6Domain5symmYEi = comdat any

$_ZN6Domain10symmZemptyEv = comdat any

$_ZN6Domain5symmZEi = comdat any

$_ZNKSt6vectorIiSaIiEE5emptyEv = comdat any

$_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_Z4FABSd = comdat any

$_ZNK6Domain5v_cutEv = comdat any

$_ZN6Domain15AllocateStrainsEi = comdat any

$_ZN6Domain4vdovEi = comdat any

$_ZN6Domain17DeallocateStrainsEv = comdat any

$_ZN6Domain5sizeYEv = comdat any

$_ZN6Domain5sizeZEv = comdat any

$_ZN6Domain17AllocateGradientsEii = comdat any

$_ZN6Domain19DeallocateGradientsEv = comdat any

$_ZNK6Domain5qstopEv = comdat any

$_ZN6Domain9delx_zetaEi = comdat any

$_ZN6Domain9delv_zetaEi = comdat any

$_ZN6Domain7delx_xiEi = comdat any

$_ZN6Domain7delv_xiEi = comdat any

$_ZN6Domain8delx_etaEi = comdat any

$_ZN6Domain8delv_etaEi = comdat any

$_ZN6Domain6numRegEv = comdat any

$_ZN6Domain11regElemSizeEi = comdat any

$_ZNK6Domain18monoq_limiter_multEv = comdat any

$_ZNK6Domain15monoq_max_slopeEv = comdat any

$_ZNK6Domain9qlc_monoqEv = comdat any

$_ZNK6Domain9qqc_monoqEv = comdat any

$_ZN6Domain11regElemlistEii = comdat any

$_ZN6Domain6elemBCEi = comdat any

$_ZN6Domain4lximEi = comdat any

$_ZN6Domain4lxipEi = comdat any

$_ZN6Domain5letamEi = comdat any

$_ZN6Domain5letapEi = comdat any

$_ZN6Domain6lzetamEi = comdat any

$_ZN6Domain6lzetapEi = comdat any

$_ZN6Domain2qqEi = comdat any

$_ZN6Domain2qlEi = comdat any

$_ZNK6Domain7eosvminEv = comdat any

$_ZNK6Domain7eosvmaxEv = comdat any

$_ZN6Domain11regElemlistEi = comdat any

$_ZN6Domain4costEv = comdat any

$_ZNK6Domain5e_cutEv = comdat any

$_ZNK6Domain5p_cutEv = comdat any

$_ZNK6Domain5ss4o3Ev = comdat any

$_ZNK6Domain5q_cutEv = comdat any

$_ZNK6Domain4pminEv = comdat any

$_ZNK6Domain4eminEv = comdat any

$_ZNK6Domain7refdensEv = comdat any

$_ZN6Domain1eEi = comdat any

$_ZNK6Domain3qqcEv = comdat any

$_ZNK6Domain7dvovmaxEv = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [22 x i8] c"Running problem size \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"^3 per domain until completion\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Num processors: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Total number of elements: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"To run other sizes, use -s <integer>.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"To run a fixed number of iterations, use -i <integer>.\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"To run a more or less balanced region set, use -b <integer>.\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"To change the relative costs of regions, use -c <integer>.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"To print out progress, use -p\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"To write an output file for VisIt, use -v\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"See help (-h) for more options\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"cycle = \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"time = \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dt=\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"Error in switch at %s line %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"lulesh.cc\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lulesh.cc, i8* null }]

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
define dso_local double @_Z14CalcElemVolumePKdS0_S0_(double* %x, double* %y, double* %z) #0 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  store double* %x, double** %x.addr, align 8, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !2
  store double* %z, double** %z.addr, align 8, !tbaa !2
  %0 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8, !tbaa !6
  %2 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx1, align 8, !tbaa !6
  %4 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 2
  %5 = load double, double* %arrayidx2, align 8, !tbaa !6
  %6 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 3
  %7 = load double, double* %arrayidx3, align 8, !tbaa !6
  %8 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 4
  %9 = load double, double* %arrayidx4, align 8, !tbaa !6
  %10 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 5
  %11 = load double, double* %arrayidx5, align 8, !tbaa !6
  %12 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 6
  %13 = load double, double* %arrayidx6, align 8, !tbaa !6
  %14 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 7
  %15 = load double, double* %arrayidx7, align 8, !tbaa !6
  %16 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 0
  %17 = load double, double* %arrayidx8, align 8, !tbaa !6
  %18 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 1
  %19 = load double, double* %arrayidx9, align 8, !tbaa !6
  %20 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 2
  %21 = load double, double* %arrayidx10, align 8, !tbaa !6
  %22 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 3
  %23 = load double, double* %arrayidx11, align 8, !tbaa !6
  %24 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 4
  %25 = load double, double* %arrayidx12, align 8, !tbaa !6
  %26 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 5
  %27 = load double, double* %arrayidx13, align 8, !tbaa !6
  %28 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %28, i64 6
  %29 = load double, double* %arrayidx14, align 8, !tbaa !6
  %30 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %30, i64 7
  %31 = load double, double* %arrayidx15, align 8, !tbaa !6
  %32 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %32, i64 0
  %33 = load double, double* %arrayidx16, align 8, !tbaa !6
  %34 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %34, i64 1
  %35 = load double, double* %arrayidx17, align 8, !tbaa !6
  %36 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %36, i64 2
  %37 = load double, double* %arrayidx18, align 8, !tbaa !6
  %38 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %38, i64 3
  %39 = load double, double* %arrayidx19, align 8, !tbaa !6
  %40 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %40, i64 4
  %41 = load double, double* %arrayidx20, align 8, !tbaa !6
  %42 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %42, i64 5
  %43 = load double, double* %arrayidx21, align 8, !tbaa !6
  %44 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %44, i64 6
  %45 = load double, double* %arrayidx22, align 8, !tbaa !6
  %46 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %46, i64 7
  %47 = load double, double* %arrayidx23, align 8, !tbaa !6
  %call = call double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %1, double %3, double %5, double %7, double %9, double %11, double %13, double %15, double %17, double %19, double %21, double %23, double %25, double %27, double %29, double %31, double %33, double %35, double %37, double %39, double %41, double %43, double %45, double %47)
  ret double %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %x6, double %x7, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %y6, double %y7, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double %z6, double %z7) #4 {
entry:
  %x0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %x4.addr = alloca double, align 8
  %x5.addr = alloca double, align 8
  %x6.addr = alloca double, align 8
  %x7.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %y4.addr = alloca double, align 8
  %y5.addr = alloca double, align 8
  %y6.addr = alloca double, align 8
  %y7.addr = alloca double, align 8
  %z0.addr = alloca double, align 8
  %z1.addr = alloca double, align 8
  %z2.addr = alloca double, align 8
  %z3.addr = alloca double, align 8
  %z4.addr = alloca double, align 8
  %z5.addr = alloca double, align 8
  %z6.addr = alloca double, align 8
  %z7.addr = alloca double, align 8
  %twelveth = alloca double, align 8
  %dx61 = alloca double, align 8
  %dy61 = alloca double, align 8
  %dz61 = alloca double, align 8
  %dx70 = alloca double, align 8
  %dy70 = alloca double, align 8
  %dz70 = alloca double, align 8
  %dx63 = alloca double, align 8
  %dy63 = alloca double, align 8
  %dz63 = alloca double, align 8
  %dx20 = alloca double, align 8
  %dy20 = alloca double, align 8
  %dz20 = alloca double, align 8
  %dx50 = alloca double, align 8
  %dy50 = alloca double, align 8
  %dz50 = alloca double, align 8
  %dx64 = alloca double, align 8
  %dy64 = alloca double, align 8
  %dz64 = alloca double, align 8
  %dx31 = alloca double, align 8
  %dy31 = alloca double, align 8
  %dz31 = alloca double, align 8
  %dx72 = alloca double, align 8
  %dy72 = alloca double, align 8
  %dz72 = alloca double, align 8
  %dx43 = alloca double, align 8
  %dy43 = alloca double, align 8
  %dz43 = alloca double, align 8
  %dx57 = alloca double, align 8
  %dy57 = alloca double, align 8
  %dz57 = alloca double, align 8
  %dx14 = alloca double, align 8
  %dy14 = alloca double, align 8
  %dz14 = alloca double, align 8
  %dx25 = alloca double, align 8
  %dy25 = alloca double, align 8
  %dz25 = alloca double, align 8
  %volume = alloca double, align 8
  store double %x0, double* %x0.addr, align 8, !tbaa !6
  store double %x1, double* %x1.addr, align 8, !tbaa !6
  store double %x2, double* %x2.addr, align 8, !tbaa !6
  store double %x3, double* %x3.addr, align 8, !tbaa !6
  store double %x4, double* %x4.addr, align 8, !tbaa !6
  store double %x5, double* %x5.addr, align 8, !tbaa !6
  store double %x6, double* %x6.addr, align 8, !tbaa !6
  store double %x7, double* %x7.addr, align 8, !tbaa !6
  store double %y0, double* %y0.addr, align 8, !tbaa !6
  store double %y1, double* %y1.addr, align 8, !tbaa !6
  store double %y2, double* %y2.addr, align 8, !tbaa !6
  store double %y3, double* %y3.addr, align 8, !tbaa !6
  store double %y4, double* %y4.addr, align 8, !tbaa !6
  store double %y5, double* %y5.addr, align 8, !tbaa !6
  store double %y6, double* %y6.addr, align 8, !tbaa !6
  store double %y7, double* %y7.addr, align 8, !tbaa !6
  store double %z0, double* %z0.addr, align 8, !tbaa !6
  store double %z1, double* %z1.addr, align 8, !tbaa !6
  store double %z2, double* %z2.addr, align 8, !tbaa !6
  store double %z3, double* %z3.addr, align 8, !tbaa !6
  store double %z4, double* %z4.addr, align 8, !tbaa !6
  store double %z5, double* %z5.addr, align 8, !tbaa !6
  store double %z6, double* %z6.addr, align 8, !tbaa !6
  store double %z7, double* %z7.addr, align 8, !tbaa !6
  %0 = bitcast double* %twelveth to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  store double 0x3FB5555555555555, double* %twelveth, align 8, !tbaa !6
  %1 = bitcast double* %dx61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #3
  %2 = load double, double* %x6.addr, align 8, !tbaa !6
  %3 = load double, double* %x1.addr, align 8, !tbaa !6
  %sub = fsub double %2, %3
  store double %sub, double* %dx61, align 8, !tbaa !6
  %4 = bitcast double* %dy61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load double, double* %y6.addr, align 8, !tbaa !6
  %6 = load double, double* %y1.addr, align 8, !tbaa !6
  %sub1 = fsub double %5, %6
  store double %sub1, double* %dy61, align 8, !tbaa !6
  %7 = bitcast double* %dz61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = load double, double* %z6.addr, align 8, !tbaa !6
  %9 = load double, double* %z1.addr, align 8, !tbaa !6
  %sub2 = fsub double %8, %9
  store double %sub2, double* %dz61, align 8, !tbaa !6
  %10 = bitcast double* %dx70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load double, double* %x7.addr, align 8, !tbaa !6
  %12 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub3 = fsub double %11, %12
  store double %sub3, double* %dx70, align 8, !tbaa !6
  %13 = bitcast double* %dy70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = load double, double* %y7.addr, align 8, !tbaa !6
  %15 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub4 = fsub double %14, %15
  store double %sub4, double* %dy70, align 8, !tbaa !6
  %16 = bitcast double* %dz70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  %17 = load double, double* %z7.addr, align 8, !tbaa !6
  %18 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub5 = fsub double %17, %18
  store double %sub5, double* %dz70, align 8, !tbaa !6
  %19 = bitcast double* %dx63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #3
  %20 = load double, double* %x6.addr, align 8, !tbaa !6
  %21 = load double, double* %x3.addr, align 8, !tbaa !6
  %sub6 = fsub double %20, %21
  store double %sub6, double* %dx63, align 8, !tbaa !6
  %22 = bitcast double* %dy63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #3
  %23 = load double, double* %y6.addr, align 8, !tbaa !6
  %24 = load double, double* %y3.addr, align 8, !tbaa !6
  %sub7 = fsub double %23, %24
  store double %sub7, double* %dy63, align 8, !tbaa !6
  %25 = bitcast double* %dz63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #3
  %26 = load double, double* %z6.addr, align 8, !tbaa !6
  %27 = load double, double* %z3.addr, align 8, !tbaa !6
  %sub8 = fsub double %26, %27
  store double %sub8, double* %dz63, align 8, !tbaa !6
  %28 = bitcast double* %dx20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  %29 = load double, double* %x2.addr, align 8, !tbaa !6
  %30 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub9 = fsub double %29, %30
  store double %sub9, double* %dx20, align 8, !tbaa !6
  %31 = bitcast double* %dy20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #3
  %32 = load double, double* %y2.addr, align 8, !tbaa !6
  %33 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub10 = fsub double %32, %33
  store double %sub10, double* %dy20, align 8, !tbaa !6
  %34 = bitcast double* %dz20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #3
  %35 = load double, double* %z2.addr, align 8, !tbaa !6
  %36 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub11 = fsub double %35, %36
  store double %sub11, double* %dz20, align 8, !tbaa !6
  %37 = bitcast double* %dx50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37) #3
  %38 = load double, double* %x5.addr, align 8, !tbaa !6
  %39 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub12 = fsub double %38, %39
  store double %sub12, double* %dx50, align 8, !tbaa !6
  %40 = bitcast double* %dy50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %40) #3
  %41 = load double, double* %y5.addr, align 8, !tbaa !6
  %42 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub13 = fsub double %41, %42
  store double %sub13, double* %dy50, align 8, !tbaa !6
  %43 = bitcast double* %dz50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43) #3
  %44 = load double, double* %z5.addr, align 8, !tbaa !6
  %45 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub14 = fsub double %44, %45
  store double %sub14, double* %dz50, align 8, !tbaa !6
  %46 = bitcast double* %dx64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %46) #3
  %47 = load double, double* %x6.addr, align 8, !tbaa !6
  %48 = load double, double* %x4.addr, align 8, !tbaa !6
  %sub15 = fsub double %47, %48
  store double %sub15, double* %dx64, align 8, !tbaa !6
  %49 = bitcast double* %dy64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %49) #3
  %50 = load double, double* %y6.addr, align 8, !tbaa !6
  %51 = load double, double* %y4.addr, align 8, !tbaa !6
  %sub16 = fsub double %50, %51
  store double %sub16, double* %dy64, align 8, !tbaa !6
  %52 = bitcast double* %dz64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %52) #3
  %53 = load double, double* %z6.addr, align 8, !tbaa !6
  %54 = load double, double* %z4.addr, align 8, !tbaa !6
  %sub17 = fsub double %53, %54
  store double %sub17, double* %dz64, align 8, !tbaa !6
  %55 = bitcast double* %dx31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %55) #3
  %56 = load double, double* %x3.addr, align 8, !tbaa !6
  %57 = load double, double* %x1.addr, align 8, !tbaa !6
  %sub18 = fsub double %56, %57
  store double %sub18, double* %dx31, align 8, !tbaa !6
  %58 = bitcast double* %dy31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %58) #3
  %59 = load double, double* %y3.addr, align 8, !tbaa !6
  %60 = load double, double* %y1.addr, align 8, !tbaa !6
  %sub19 = fsub double %59, %60
  store double %sub19, double* %dy31, align 8, !tbaa !6
  %61 = bitcast double* %dz31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61) #3
  %62 = load double, double* %z3.addr, align 8, !tbaa !6
  %63 = load double, double* %z1.addr, align 8, !tbaa !6
  %sub20 = fsub double %62, %63
  store double %sub20, double* %dz31, align 8, !tbaa !6
  %64 = bitcast double* %dx72 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %64) #3
  %65 = load double, double* %x7.addr, align 8, !tbaa !6
  %66 = load double, double* %x2.addr, align 8, !tbaa !6
  %sub21 = fsub double %65, %66
  store double %sub21, double* %dx72, align 8, !tbaa !6
  %67 = bitcast double* %dy72 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %67) #3
  %68 = load double, double* %y7.addr, align 8, !tbaa !6
  %69 = load double, double* %y2.addr, align 8, !tbaa !6
  %sub22 = fsub double %68, %69
  store double %sub22, double* %dy72, align 8, !tbaa !6
  %70 = bitcast double* %dz72 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %70) #3
  %71 = load double, double* %z7.addr, align 8, !tbaa !6
  %72 = load double, double* %z2.addr, align 8, !tbaa !6
  %sub23 = fsub double %71, %72
  store double %sub23, double* %dz72, align 8, !tbaa !6
  %73 = bitcast double* %dx43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #3
  %74 = load double, double* %x4.addr, align 8, !tbaa !6
  %75 = load double, double* %x3.addr, align 8, !tbaa !6
  %sub24 = fsub double %74, %75
  store double %sub24, double* %dx43, align 8, !tbaa !6
  %76 = bitcast double* %dy43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %76) #3
  %77 = load double, double* %y4.addr, align 8, !tbaa !6
  %78 = load double, double* %y3.addr, align 8, !tbaa !6
  %sub25 = fsub double %77, %78
  store double %sub25, double* %dy43, align 8, !tbaa !6
  %79 = bitcast double* %dz43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %79) #3
  %80 = load double, double* %z4.addr, align 8, !tbaa !6
  %81 = load double, double* %z3.addr, align 8, !tbaa !6
  %sub26 = fsub double %80, %81
  store double %sub26, double* %dz43, align 8, !tbaa !6
  %82 = bitcast double* %dx57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #3
  %83 = load double, double* %x5.addr, align 8, !tbaa !6
  %84 = load double, double* %x7.addr, align 8, !tbaa !6
  %sub27 = fsub double %83, %84
  store double %sub27, double* %dx57, align 8, !tbaa !6
  %85 = bitcast double* %dy57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #3
  %86 = load double, double* %y5.addr, align 8, !tbaa !6
  %87 = load double, double* %y7.addr, align 8, !tbaa !6
  %sub28 = fsub double %86, %87
  store double %sub28, double* %dy57, align 8, !tbaa !6
  %88 = bitcast double* %dz57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %88) #3
  %89 = load double, double* %z5.addr, align 8, !tbaa !6
  %90 = load double, double* %z7.addr, align 8, !tbaa !6
  %sub29 = fsub double %89, %90
  store double %sub29, double* %dz57, align 8, !tbaa !6
  %91 = bitcast double* %dx14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %91) #3
  %92 = load double, double* %x1.addr, align 8, !tbaa !6
  %93 = load double, double* %x4.addr, align 8, !tbaa !6
  %sub30 = fsub double %92, %93
  store double %sub30, double* %dx14, align 8, !tbaa !6
  %94 = bitcast double* %dy14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %94) #3
  %95 = load double, double* %y1.addr, align 8, !tbaa !6
  %96 = load double, double* %y4.addr, align 8, !tbaa !6
  %sub31 = fsub double %95, %96
  store double %sub31, double* %dy14, align 8, !tbaa !6
  %97 = bitcast double* %dz14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %97) #3
  %98 = load double, double* %z1.addr, align 8, !tbaa !6
  %99 = load double, double* %z4.addr, align 8, !tbaa !6
  %sub32 = fsub double %98, %99
  store double %sub32, double* %dz14, align 8, !tbaa !6
  %100 = bitcast double* %dx25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %100) #3
  %101 = load double, double* %x2.addr, align 8, !tbaa !6
  %102 = load double, double* %x5.addr, align 8, !tbaa !6
  %sub33 = fsub double %101, %102
  store double %sub33, double* %dx25, align 8, !tbaa !6
  %103 = bitcast double* %dy25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %103) #3
  %104 = load double, double* %y2.addr, align 8, !tbaa !6
  %105 = load double, double* %y5.addr, align 8, !tbaa !6
  %sub34 = fsub double %104, %105
  store double %sub34, double* %dy25, align 8, !tbaa !6
  %106 = bitcast double* %dz25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %106) #3
  %107 = load double, double* %z2.addr, align 8, !tbaa !6
  %108 = load double, double* %z5.addr, align 8, !tbaa !6
  %sub35 = fsub double %107, %108
  store double %sub35, double* %dz25, align 8, !tbaa !6
  %109 = bitcast double* %volume to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %109) #3
  %110 = load double, double* %dx31, align 8, !tbaa !6
  %111 = load double, double* %dx72, align 8, !tbaa !6
  %add = fadd double %110, %111
  %112 = load double, double* %dy63, align 8, !tbaa !6
  %113 = load double, double* %dz20, align 8, !tbaa !6
  %mul = fmul double %112, %113
  %114 = load double, double* %dy20, align 8, !tbaa !6
  %115 = load double, double* %dz63, align 8, !tbaa !6
  %mul36 = fmul double %114, %115
  %sub37 = fsub double %mul, %mul36
  %mul38 = fmul double %add, %sub37
  %116 = load double, double* %dy31, align 8, !tbaa !6
  %117 = load double, double* %dy72, align 8, !tbaa !6
  %add39 = fadd double %116, %117
  %118 = load double, double* %dx20, align 8, !tbaa !6
  %119 = load double, double* %dz63, align 8, !tbaa !6
  %mul40 = fmul double %118, %119
  %120 = load double, double* %dx63, align 8, !tbaa !6
  %121 = load double, double* %dz20, align 8, !tbaa !6
  %mul41 = fmul double %120, %121
  %sub42 = fsub double %mul40, %mul41
  %mul43 = fmul double %add39, %sub42
  %add44 = fadd double %mul38, %mul43
  %122 = load double, double* %dz31, align 8, !tbaa !6
  %123 = load double, double* %dz72, align 8, !tbaa !6
  %add45 = fadd double %122, %123
  %124 = load double, double* %dx63, align 8, !tbaa !6
  %125 = load double, double* %dy20, align 8, !tbaa !6
  %mul46 = fmul double %124, %125
  %126 = load double, double* %dx20, align 8, !tbaa !6
  %127 = load double, double* %dy63, align 8, !tbaa !6
  %mul47 = fmul double %126, %127
  %sub48 = fsub double %mul46, %mul47
  %mul49 = fmul double %add45, %sub48
  %add50 = fadd double %add44, %mul49
  %128 = load double, double* %dx43, align 8, !tbaa !6
  %129 = load double, double* %dx57, align 8, !tbaa !6
  %add51 = fadd double %128, %129
  %130 = load double, double* %dy64, align 8, !tbaa !6
  %131 = load double, double* %dz70, align 8, !tbaa !6
  %mul52 = fmul double %130, %131
  %132 = load double, double* %dy70, align 8, !tbaa !6
  %133 = load double, double* %dz64, align 8, !tbaa !6
  %mul53 = fmul double %132, %133
  %sub54 = fsub double %mul52, %mul53
  %mul55 = fmul double %add51, %sub54
  %134 = load double, double* %dy43, align 8, !tbaa !6
  %135 = load double, double* %dy57, align 8, !tbaa !6
  %add56 = fadd double %134, %135
  %136 = load double, double* %dx70, align 8, !tbaa !6
  %137 = load double, double* %dz64, align 8, !tbaa !6
  %mul57 = fmul double %136, %137
  %138 = load double, double* %dx64, align 8, !tbaa !6
  %139 = load double, double* %dz70, align 8, !tbaa !6
  %mul58 = fmul double %138, %139
  %sub59 = fsub double %mul57, %mul58
  %mul60 = fmul double %add56, %sub59
  %add61 = fadd double %mul55, %mul60
  %140 = load double, double* %dz43, align 8, !tbaa !6
  %141 = load double, double* %dz57, align 8, !tbaa !6
  %add62 = fadd double %140, %141
  %142 = load double, double* %dx64, align 8, !tbaa !6
  %143 = load double, double* %dy70, align 8, !tbaa !6
  %mul63 = fmul double %142, %143
  %144 = load double, double* %dx70, align 8, !tbaa !6
  %145 = load double, double* %dy64, align 8, !tbaa !6
  %mul64 = fmul double %144, %145
  %sub65 = fsub double %mul63, %mul64
  %mul66 = fmul double %add62, %sub65
  %add67 = fadd double %add61, %mul66
  %add68 = fadd double %add50, %add67
  %146 = load double, double* %dx14, align 8, !tbaa !6
  %147 = load double, double* %dx25, align 8, !tbaa !6
  %add69 = fadd double %146, %147
  %148 = load double, double* %dy61, align 8, !tbaa !6
  %149 = load double, double* %dz50, align 8, !tbaa !6
  %mul70 = fmul double %148, %149
  %150 = load double, double* %dy50, align 8, !tbaa !6
  %151 = load double, double* %dz61, align 8, !tbaa !6
  %mul71 = fmul double %150, %151
  %sub72 = fsub double %mul70, %mul71
  %mul73 = fmul double %add69, %sub72
  %152 = load double, double* %dy14, align 8, !tbaa !6
  %153 = load double, double* %dy25, align 8, !tbaa !6
  %add74 = fadd double %152, %153
  %154 = load double, double* %dx50, align 8, !tbaa !6
  %155 = load double, double* %dz61, align 8, !tbaa !6
  %mul75 = fmul double %154, %155
  %156 = load double, double* %dx61, align 8, !tbaa !6
  %157 = load double, double* %dz50, align 8, !tbaa !6
  %mul76 = fmul double %156, %157
  %sub77 = fsub double %mul75, %mul76
  %mul78 = fmul double %add74, %sub77
  %add79 = fadd double %mul73, %mul78
  %158 = load double, double* %dz14, align 8, !tbaa !6
  %159 = load double, double* %dz25, align 8, !tbaa !6
  %add80 = fadd double %158, %159
  %160 = load double, double* %dx61, align 8, !tbaa !6
  %161 = load double, double* %dy50, align 8, !tbaa !6
  %mul81 = fmul double %160, %161
  %162 = load double, double* %dx50, align 8, !tbaa !6
  %163 = load double, double* %dy61, align 8, !tbaa !6
  %mul82 = fmul double %162, %163
  %sub83 = fsub double %mul81, %mul82
  %mul84 = fmul double %add80, %sub83
  %add85 = fadd double %add79, %mul84
  %add86 = fadd double %add68, %add85
  store double %add86, double* %volume, align 8, !tbaa !6
  %164 = load double, double* %twelveth, align 8, !tbaa !6
  %165 = load double, double* %volume, align 8, !tbaa !6
  %mul87 = fmul double %165, %164
  store double %mul87, double* %volume, align 8, !tbaa !6
  %166 = load double, double* %volume, align 8, !tbaa !6
  %167 = bitcast double* %volume to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %167) #3
  %168 = bitcast double* %dz25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %168) #3
  %169 = bitcast double* %dy25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %169) #3
  %170 = bitcast double* %dx25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #3
  %171 = bitcast double* %dz14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %171) #3
  %172 = bitcast double* %dy14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %172) #3
  %173 = bitcast double* %dx14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %173) #3
  %174 = bitcast double* %dz57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %174) #3
  %175 = bitcast double* %dy57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %175) #3
  %176 = bitcast double* %dx57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %176) #3
  %177 = bitcast double* %dz43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %177) #3
  %178 = bitcast double* %dy43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #3
  %179 = bitcast double* %dx43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179) #3
  %180 = bitcast double* %dz72 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %180) #3
  %181 = bitcast double* %dy72 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %181) #3
  %182 = bitcast double* %dx72 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %182) #3
  %183 = bitcast double* %dz31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %183) #3
  %184 = bitcast double* %dy31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %184) #3
  %185 = bitcast double* %dx31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %185) #3
  %186 = bitcast double* %dz64 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %186) #3
  %187 = bitcast double* %dy64 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %187) #3
  %188 = bitcast double* %dx64 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %188) #3
  %189 = bitcast double* %dz50 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %189) #3
  %190 = bitcast double* %dy50 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %190) #3
  %191 = bitcast double* %dx50 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %191) #3
  %192 = bitcast double* %dz20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %192) #3
  %193 = bitcast double* %dy20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %193) #3
  %194 = bitcast double* %dx20 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %194) #3
  %195 = bitcast double* %dz63 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %195) #3
  %196 = bitcast double* %dy63 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %196) #3
  %197 = bitcast double* %dx63 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %197) #3
  %198 = bitcast double* %dz70 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %198) #3
  %199 = bitcast double* %dy70 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %199) #3
  %200 = bitcast double* %dx70 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %200) #3
  %201 = bitcast double* %dz61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %201) #3
  %202 = bitcast double* %dy61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %202) #3
  %203 = bitcast double* %dx61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %203) #3
  %204 = bitcast double* %twelveth to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %204) #3
  ret double %166
}

; Function Attrs: uwtable
define dso_local void @_Z22CalcKinematicsForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %deltaTime, i32 %numElem) #0 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %deltaTime.addr = alloca double, align 8
  %numElem.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %B = alloca [3 x [8 x double]], align 16
  %D = alloca [6 x double], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %xd_local = alloca [8 x double], align 16
  %yd_local = alloca [8 x double], align 16
  %zd_local = alloca [8 x double], align 16
  %detJ = alloca double, align 8
  %volume = alloca double, align 8
  %relativeVolume = alloca double, align 8
  %elemToNode = alloca i32*, align 8
  %lnode = alloca i32, align 4
  %gnode = alloca i32, align 4
  %dt2 = alloca double, align 8
  %j = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double %deltaTime, double* %deltaTime.addr, align 8, !tbaa !6
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !8
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end71

for.body:                                         ; preds = %for.cond
  %4 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %4) #3
  %5 = bitcast [6 x double]* %D to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %5) #3
  %6 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #3
  %7 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #3
  %8 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #3
  %9 = bitcast [8 x double]* %xd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %9) #3
  %10 = bitcast [8 x double]* %yd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %10) #3
  %11 = bitcast [8 x double]* %zd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %11) #3
  %12 = bitcast double* %detJ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store double 0.000000e+00, double* %detJ, align 8, !tbaa !6
  %13 = bitcast double* %volume to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = bitcast double* %relativeVolume to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  %15 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %17 = load i32, i32* %k, align 4, !tbaa !8
  %call = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %16, i32 %17)
  store i32* %call, i32** %elemToNode, align 8, !tbaa !2
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %19 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %18, i32* %19, double* %arraydecay, double* %arraydecay1, double* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %call6 = call double @_Z14CalcElemVolumePKdS0_S0_(double* %arraydecay3, double* %arraydecay4, double* %arraydecay5)
  store double %call6, double* %volume, align 8, !tbaa !6
  %20 = load double, double* %volume, align 8, !tbaa !6
  %21 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %22 = load i32, i32* %k, align 4, !tbaa !8
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %21, i32 %22)
  %23 = load double, double* %call7, align 8, !tbaa !6
  %div = fdiv double %20, %23
  store double %div, double* %relativeVolume, align 8, !tbaa !6
  %24 = load double, double* %relativeVolume, align 8, !tbaa !6
  %25 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %26 = load i32, i32* %k, align 4, !tbaa !8
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %25, i32 %26)
  store double %24, double* %call8, align 8, !tbaa !6
  %27 = load double, double* %relativeVolume, align 8, !tbaa !6
  %28 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %29 = load i32, i32* %k, align 4, !tbaa !8
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %28, i32 %29)
  %30 = load double, double* %call9, align 8, !tbaa !6
  %sub = fsub double %27, %30
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %32 = load i32, i32* %k, align 4, !tbaa !8
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %31, i32 %32)
  store double %sub, double* %call10, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %33 = load double, double* %volume, align 8, !tbaa !6
  %call14 = call double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double %33)
  %34 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %35 = load i32, i32* %k, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %34, i32 %35)
  store double %call14, double* %call15, align 8, !tbaa !6
  %36 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #3
  store i32 0, i32* %lnode, align 4, !tbaa !8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body
  %37 = load i32, i32* %lnode, align 4, !tbaa !8
  %cmp17 = icmp slt i32 %37, 8
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.cond.cleanup18:                               ; preds = %for.cond16
  store i32 5, i32* %cleanup.dest.slot, align 4
  %38 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  br label %for.end

for.body19:                                       ; preds = %for.cond16
  %39 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3
  %40 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %41 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds i32, i32* %40, i64 %idxprom
  %42 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %42, i32* %gnode, align 4, !tbaa !8
  %43 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %44 = load i32, i32* %gnode, align 4, !tbaa !8
  %call20 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %43, i32 %44)
  %45 = load double, double* %call20, align 8, !tbaa !6
  %46 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom21 = sext i32 %46 to i64
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %idxprom21
  store double %45, double* %arrayidx22, align 8, !tbaa !6
  %47 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %48 = load i32, i32* %gnode, align 4, !tbaa !8
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %47, i32 %48)
  %49 = load double, double* %call23, align 8, !tbaa !6
  %50 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom24 = sext i32 %50 to i64
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %idxprom24
  store double %49, double* %arrayidx25, align 8, !tbaa !6
  %51 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %52 = load i32, i32* %gnode, align 4, !tbaa !8
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %51, i32 %52)
  %53 = load double, double* %call26, align 8, !tbaa !6
  %54 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom27 = sext i32 %54 to i64
  %arrayidx28 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %idxprom27
  store double %53, double* %arrayidx28, align 8, !tbaa !6
  %55 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %56 = load i32, i32* %lnode, align 4, !tbaa !8
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %lnode, align 4, !tbaa !8
  br label %for.cond16, !llvm.loop !10

for.end:                                          ; preds = %for.cond.cleanup18
  %57 = bitcast double* %dt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %57) #3
  %58 = load double, double* %deltaTime.addr, align 8, !tbaa !6
  %mul = fmul double 5.000000e-01, %58
  store double %mul, double* %dt2, align 8, !tbaa !6
  %59 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %59) #3
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc51, %for.end
  %60 = load i32, i32* %j, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %60, 8
  br i1 %cmp30, label %for.body32, label %for.cond.cleanup31

for.cond.cleanup31:                               ; preds = %for.cond29
  store i32 8, i32* %cleanup.dest.slot, align 4
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  br label %for.end53

for.body32:                                       ; preds = %for.cond29
  %62 = load double, double* %dt2, align 8, !tbaa !6
  %63 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom33 = sext i32 %63 to i64
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %idxprom33
  %64 = load double, double* %arrayidx34, align 8, !tbaa !6
  %mul35 = fmul double %62, %64
  %65 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom36 = sext i32 %65 to i64
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %idxprom36
  %66 = load double, double* %arrayidx37, align 8, !tbaa !6
  %sub38 = fsub double %66, %mul35
  store double %sub38, double* %arrayidx37, align 8, !tbaa !6
  %67 = load double, double* %dt2, align 8, !tbaa !6
  %68 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom39 = sext i32 %68 to i64
  %arrayidx40 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %idxprom39
  %69 = load double, double* %arrayidx40, align 8, !tbaa !6
  %mul41 = fmul double %67, %69
  %70 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom42 = sext i32 %70 to i64
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %idxprom42
  %71 = load double, double* %arrayidx43, align 8, !tbaa !6
  %sub44 = fsub double %71, %mul41
  store double %sub44, double* %arrayidx43, align 8, !tbaa !6
  %72 = load double, double* %dt2, align 8, !tbaa !6
  %73 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom45 = sext i32 %73 to i64
  %arrayidx46 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %idxprom45
  %74 = load double, double* %arrayidx46, align 8, !tbaa !6
  %mul47 = fmul double %72, %74
  %75 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom48 = sext i32 %75 to i64
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %idxprom48
  %76 = load double, double* %arrayidx49, align 8, !tbaa !6
  %sub50 = fsub double %76, %mul47
  store double %sub50, double* %arrayidx49, align 8, !tbaa !6
  br label %for.inc51

for.inc51:                                        ; preds = %for.body32
  %77 = load i32, i32* %j, align 4, !tbaa !8
  %inc52 = add nsw i32 %77, 1
  store i32 %inc52, i32* %j, align 4, !tbaa !8
  br label %for.cond29, !llvm.loop !12

for.end53:                                        ; preds = %for.cond.cleanup31
  %arraydecay54 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  call void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %arraydecay54, double* %arraydecay55, double* %arraydecay56, [8 x double]* %arraydecay57, double* %detJ)
  %arraydecay58 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 0
  %arraydecay59 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 0
  %arraydecay60 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %78 = load double, double* %detJ, align 8, !tbaa !6
  %arraydecay62 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 0
  call void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* %arraydecay58, double* %arraydecay59, double* %arraydecay60, [8 x double]* %arraydecay61, double %78, double* %arraydecay62)
  %arrayidx63 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 0
  %79 = load double, double* %arrayidx63, align 16, !tbaa !6
  %80 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %81 = load i32, i32* %k, align 4, !tbaa !8
  %call64 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %80, i32 %81)
  store double %79, double* %call64, align 8, !tbaa !6
  %arrayidx65 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 1
  %82 = load double, double* %arrayidx65, align 8, !tbaa !6
  %83 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %84 = load i32, i32* %k, align 4, !tbaa !8
  %call66 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %83, i32 %84)
  store double %82, double* %call66, align 8, !tbaa !6
  %arrayidx67 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 2
  %85 = load double, double* %arrayidx67, align 16, !tbaa !6
  %86 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %87 = load i32, i32* %k, align 4, !tbaa !8
  %call68 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %86, i32 %87)
  store double %85, double* %call68, align 8, !tbaa !6
  %88 = bitcast double* %dt2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %88) #3
  %89 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #3
  %90 = bitcast double* %relativeVolume to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %90) #3
  %91 = bitcast double* %volume to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %91) #3
  %92 = bitcast double* %detJ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %92) #3
  %93 = bitcast [8 x double]* %zd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %93) #3
  %94 = bitcast [8 x double]* %yd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %94) #3
  %95 = bitcast [8 x double]* %xd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %95) #3
  %96 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %96) #3
  %97 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %97) #3
  %98 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %98) #3
  %99 = bitcast [6 x double]* %D to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %99) #3
  %100 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %100) #3
  br label %for.inc69

for.inc69:                                        ; preds = %for.end53
  %101 = load i32, i32* %k, align 4, !tbaa !8
  %inc70 = add nsw i32 %101, 1
  store i32 %inc70, i32* %k, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !13

for.end71:                                        ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %mul = mul nsw i32 8, %0
  %conv = sext i32 %mul to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_nodelist, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32* %elemToNode, double* %elemX, double* %elemY, double* %elemZ) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %elemToNode.addr = alloca i32*, align 8
  %elemX.addr = alloca double*, align 8
  %elemY.addr = alloca double*, align 8
  %elemZ.addr = alloca double*, align 8
  %nd0i = alloca i32, align 4
  %nd1i = alloca i32, align 4
  %nd2i = alloca i32, align 4
  %nd3i = alloca i32, align 4
  %nd4i = alloca i32, align 4
  %nd5i = alloca i32, align 4
  %nd6i = alloca i32, align 4
  %nd7i = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32* %elemToNode, i32** %elemToNode.addr, align 8, !tbaa !2
  store double* %elemX, double** %elemX.addr, align 8, !tbaa !2
  store double* %elemY, double** %elemY.addr, align 8, !tbaa !2
  store double* %elemZ, double** %elemZ.addr, align 8, !tbaa !2
  %0 = bitcast i32* %nd0i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %2, i32* %nd0i, align 4, !tbaa !8
  %3 = bitcast i32* %nd1i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx1, align 4, !tbaa !8
  store i32 %5, i32* %nd1i, align 4, !tbaa !8
  %6 = bitcast i32* %nd2i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 2
  %8 = load i32, i32* %arrayidx2, align 4, !tbaa !8
  store i32 %8, i32* %nd2i, align 4, !tbaa !8
  %9 = bitcast i32* %nd3i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 3
  %11 = load i32, i32* %arrayidx3, align 4, !tbaa !8
  store i32 %11, i32* %nd3i, align 4, !tbaa !8
  %12 = bitcast i32* %nd4i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 4
  %14 = load i32, i32* %arrayidx4, align 4, !tbaa !8
  store i32 %14, i32* %nd4i, align 4, !tbaa !8
  %15 = bitcast i32* %nd5i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 5
  %17 = load i32, i32* %arrayidx5, align 4, !tbaa !8
  store i32 %17, i32* %nd5i, align 4, !tbaa !8
  %18 = bitcast i32* %nd6i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i32, i32* %19, i64 6
  %20 = load i32, i32* %arrayidx6, align 4, !tbaa !8
  store i32 %20, i32* %nd6i, align 4, !tbaa !8
  %21 = bitcast i32* %nd7i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = load i32*, i32** %elemToNode.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 7
  %23 = load i32, i32* %arrayidx7, align 4, !tbaa !8
  store i32 %23, i32* %nd7i, align 4, !tbaa !8
  %24 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %25 = load i32, i32* %nd0i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %24, i32 %25)
  %26 = load double, double* %call, align 8, !tbaa !6
  %27 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %27, i64 0
  store double %26, double* %arrayidx8, align 8, !tbaa !6
  %28 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %29 = load i32, i32* %nd1i, align 4, !tbaa !8
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %28, i32 %29)
  %30 = load double, double* %call9, align 8, !tbaa !6
  %31 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %31, i64 1
  store double %30, double* %arrayidx10, align 8, !tbaa !6
  %32 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %33 = load i32, i32* %nd2i, align 4, !tbaa !8
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %32, i32 %33)
  %34 = load double, double* %call11, align 8, !tbaa !6
  %35 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds double, double* %35, i64 2
  store double %34, double* %arrayidx12, align 8, !tbaa !6
  %36 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %37 = load i32, i32* %nd3i, align 4, !tbaa !8
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %36, i32 %37)
  %38 = load double, double* %call13, align 8, !tbaa !6
  %39 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %39, i64 3
  store double %38, double* %arrayidx14, align 8, !tbaa !6
  %40 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %41 = load i32, i32* %nd4i, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %40, i32 %41)
  %42 = load double, double* %call15, align 8, !tbaa !6
  %43 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %43, i64 4
  store double %42, double* %arrayidx16, align 8, !tbaa !6
  %44 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %45 = load i32, i32* %nd5i, align 4, !tbaa !8
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %44, i32 %45)
  %46 = load double, double* %call17, align 8, !tbaa !6
  %47 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %47, i64 5
  store double %46, double* %arrayidx18, align 8, !tbaa !6
  %48 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %49 = load i32, i32* %nd6i, align 4, !tbaa !8
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %48, i32 %49)
  %50 = load double, double* %call19, align 8, !tbaa !6
  %51 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %51, i64 6
  store double %50, double* %arrayidx20, align 8, !tbaa !6
  %52 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %53 = load i32, i32* %nd7i, align 4, !tbaa !8
  %call21 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %52, i32 %53)
  %54 = load double, double* %call21, align 8, !tbaa !6
  %55 = load double*, double** %elemX.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %55, i64 7
  store double %54, double* %arrayidx22, align 8, !tbaa !6
  %56 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %57 = load i32, i32* %nd0i, align 4, !tbaa !8
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %56, i32 %57)
  %58 = load double, double* %call23, align 8, !tbaa !6
  %59 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds double, double* %59, i64 0
  store double %58, double* %arrayidx24, align 8, !tbaa !6
  %60 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %61 = load i32, i32* %nd1i, align 4, !tbaa !8
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %60, i32 %61)
  %62 = load double, double* %call25, align 8, !tbaa !6
  %63 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds double, double* %63, i64 1
  store double %62, double* %arrayidx26, align 8, !tbaa !6
  %64 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %65 = load i32, i32* %nd2i, align 4, !tbaa !8
  %call27 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %64, i32 %65)
  %66 = load double, double* %call27, align 8, !tbaa !6
  %67 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds double, double* %67, i64 2
  store double %66, double* %arrayidx28, align 8, !tbaa !6
  %68 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %69 = load i32, i32* %nd3i, align 4, !tbaa !8
  %call29 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %68, i32 %69)
  %70 = load double, double* %call29, align 8, !tbaa !6
  %71 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds double, double* %71, i64 3
  store double %70, double* %arrayidx30, align 8, !tbaa !6
  %72 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %73 = load i32, i32* %nd4i, align 4, !tbaa !8
  %call31 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %72, i32 %73)
  %74 = load double, double* %call31, align 8, !tbaa !6
  %75 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds double, double* %75, i64 4
  store double %74, double* %arrayidx32, align 8, !tbaa !6
  %76 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %77 = load i32, i32* %nd5i, align 4, !tbaa !8
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %76, i32 %77)
  %78 = load double, double* %call33, align 8, !tbaa !6
  %79 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds double, double* %79, i64 5
  store double %78, double* %arrayidx34, align 8, !tbaa !6
  %80 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %81 = load i32, i32* %nd6i, align 4, !tbaa !8
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %80, i32 %81)
  %82 = load double, double* %call35, align 8, !tbaa !6
  %83 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds double, double* %83, i64 6
  store double %82, double* %arrayidx36, align 8, !tbaa !6
  %84 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %85 = load i32, i32* %nd7i, align 4, !tbaa !8
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %84, i32 %85)
  %86 = load double, double* %call37, align 8, !tbaa !6
  %87 = load double*, double** %elemY.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds double, double* %87, i64 7
  store double %86, double* %arrayidx38, align 8, !tbaa !6
  %88 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %89 = load i32, i32* %nd0i, align 4, !tbaa !8
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %88, i32 %89)
  %90 = load double, double* %call39, align 8, !tbaa !6
  %91 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds double, double* %91, i64 0
  store double %90, double* %arrayidx40, align 8, !tbaa !6
  %92 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %93 = load i32, i32* %nd1i, align 4, !tbaa !8
  %call41 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %92, i32 %93)
  %94 = load double, double* %call41, align 8, !tbaa !6
  %95 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds double, double* %95, i64 1
  store double %94, double* %arrayidx42, align 8, !tbaa !6
  %96 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %97 = load i32, i32* %nd2i, align 4, !tbaa !8
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %96, i32 %97)
  %98 = load double, double* %call43, align 8, !tbaa !6
  %99 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds double, double* %99, i64 2
  store double %98, double* %arrayidx44, align 8, !tbaa !6
  %100 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %101 = load i32, i32* %nd3i, align 4, !tbaa !8
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %100, i32 %101)
  %102 = load double, double* %call45, align 8, !tbaa !6
  %103 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds double, double* %103, i64 3
  store double %102, double* %arrayidx46, align 8, !tbaa !6
  %104 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %105 = load i32, i32* %nd4i, align 4, !tbaa !8
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %104, i32 %105)
  %106 = load double, double* %call47, align 8, !tbaa !6
  %107 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds double, double* %107, i64 4
  store double %106, double* %arrayidx48, align 8, !tbaa !6
  %108 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %109 = load i32, i32* %nd5i, align 4, !tbaa !8
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %108, i32 %109)
  %110 = load double, double* %call49, align 8, !tbaa !6
  %111 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds double, double* %111, i64 5
  store double %110, double* %arrayidx50, align 8, !tbaa !6
  %112 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %113 = load i32, i32* %nd6i, align 4, !tbaa !8
  %call51 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %112, i32 %113)
  %114 = load double, double* %call51, align 8, !tbaa !6
  %115 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds double, double* %115, i64 6
  store double %114, double* %arrayidx52, align 8, !tbaa !6
  %116 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %117 = load i32, i32* %nd7i, align 4, !tbaa !8
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %116, i32 %117)
  %118 = load double, double* %call53, align 8, !tbaa !6
  %119 = load double*, double** %elemZ.addr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds double, double* %119, i64 7
  store double %118, double* %arrayidx54, align 8, !tbaa !6
  %120 = bitcast i32* %nd7i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #3
  %121 = bitcast i32* %nd6i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %121) #3
  %122 = bitcast i32* %nd5i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %122) #3
  %123 = bitcast i32* %nd4i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #3
  %124 = bitcast i32* %nd3i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %124) #3
  %125 = bitcast i32* %nd2i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #3
  %126 = bitcast i32* %nd1i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126) #3
  %127 = bitcast i32* %nd0i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_volo, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 45
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_vnew, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_v, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 46
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_delv, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* %x, double* %y, double* %z, double %volume) #7 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %volume.addr = alloca double, align 8
  %a = alloca double, align 8
  %charLength = alloca double, align 8
  store double* %x, double** %x.addr, align 8, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !2
  store double* %z, double** %z.addr, align 8, !tbaa !2
  store double %volume, double* %volume.addr, align 8, !tbaa !6
  %0 = bitcast double* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = bitcast double* %charLength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #3
  store double 0.000000e+00, double* %charLength, align 8, !tbaa !6
  %2 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8, !tbaa !6
  %4 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx1, align 8, !tbaa !6
  %6 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 2
  %7 = load double, double* %arrayidx2, align 8, !tbaa !6
  %8 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 3
  %9 = load double, double* %arrayidx3, align 8, !tbaa !6
  %10 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double, double* %arrayidx4, align 8, !tbaa !6
  %12 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx5, align 8, !tbaa !6
  %14 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %14, i64 2
  %15 = load double, double* %arrayidx6, align 8, !tbaa !6
  %16 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %16, i64 3
  %17 = load double, double* %arrayidx7, align 8, !tbaa !6
  %18 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %18, i64 0
  %19 = load double, double* %arrayidx8, align 8, !tbaa !6
  %20 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx9, align 8, !tbaa !6
  %22 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %22, i64 2
  %23 = load double, double* %arrayidx10, align 8, !tbaa !6
  %24 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %24, i64 3
  %25 = load double, double* %arrayidx11, align 8, !tbaa !6
  %call = call double @_ZL8AreaFacedddddddddddd(double %3, double %5, double %7, double %9, double %11, double %13, double %15, double %17, double %19, double %21, double %23, double %25)
  store double %call, double* %a, align 8, !tbaa !6
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %26 = load double, double* %call12, align 8, !tbaa !6
  store double %26, double* %charLength, align 8, !tbaa !6
  %27 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %27, i64 4
  %28 = load double, double* %arrayidx13, align 8, !tbaa !6
  %29 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 5
  %30 = load double, double* %arrayidx14, align 8, !tbaa !6
  %31 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %31, i64 6
  %32 = load double, double* %arrayidx15, align 8, !tbaa !6
  %33 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %33, i64 7
  %34 = load double, double* %arrayidx16, align 8, !tbaa !6
  %35 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %35, i64 4
  %36 = load double, double* %arrayidx17, align 8, !tbaa !6
  %37 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %37, i64 5
  %38 = load double, double* %arrayidx18, align 8, !tbaa !6
  %39 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %39, i64 6
  %40 = load double, double* %arrayidx19, align 8, !tbaa !6
  %41 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %41, i64 7
  %42 = load double, double* %arrayidx20, align 8, !tbaa !6
  %43 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %43, i64 4
  %44 = load double, double* %arrayidx21, align 8, !tbaa !6
  %45 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %45, i64 5
  %46 = load double, double* %arrayidx22, align 8, !tbaa !6
  %47 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %47, i64 6
  %48 = load double, double* %arrayidx23, align 8, !tbaa !6
  %49 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds double, double* %49, i64 7
  %50 = load double, double* %arrayidx24, align 8, !tbaa !6
  %call25 = call double @_ZL8AreaFacedddddddddddd(double %28, double %30, double %32, double %34, double %36, double %38, double %40, double %42, double %44, double %46, double %48, double %50)
  store double %call25, double* %a, align 8, !tbaa !6
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %51 = load double, double* %call26, align 8, !tbaa !6
  store double %51, double* %charLength, align 8, !tbaa !6
  %52 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds double, double* %52, i64 0
  %53 = load double, double* %arrayidx27, align 8, !tbaa !6
  %54 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds double, double* %54, i64 1
  %55 = load double, double* %arrayidx28, align 8, !tbaa !6
  %56 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds double, double* %56, i64 5
  %57 = load double, double* %arrayidx29, align 8, !tbaa !6
  %58 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds double, double* %58, i64 4
  %59 = load double, double* %arrayidx30, align 8, !tbaa !6
  %60 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds double, double* %60, i64 0
  %61 = load double, double* %arrayidx31, align 8, !tbaa !6
  %62 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds double, double* %62, i64 1
  %63 = load double, double* %arrayidx32, align 8, !tbaa !6
  %64 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds double, double* %64, i64 5
  %65 = load double, double* %arrayidx33, align 8, !tbaa !6
  %66 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds double, double* %66, i64 4
  %67 = load double, double* %arrayidx34, align 8, !tbaa !6
  %68 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds double, double* %68, i64 0
  %69 = load double, double* %arrayidx35, align 8, !tbaa !6
  %70 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds double, double* %70, i64 1
  %71 = load double, double* %arrayidx36, align 8, !tbaa !6
  %72 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds double, double* %72, i64 5
  %73 = load double, double* %arrayidx37, align 8, !tbaa !6
  %74 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds double, double* %74, i64 4
  %75 = load double, double* %arrayidx38, align 8, !tbaa !6
  %call39 = call double @_ZL8AreaFacedddddddddddd(double %53, double %55, double %57, double %59, double %61, double %63, double %65, double %67, double %69, double %71, double %73, double %75)
  store double %call39, double* %a, align 8, !tbaa !6
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %76 = load double, double* %call40, align 8, !tbaa !6
  store double %76, double* %charLength, align 8, !tbaa !6
  %77 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds double, double* %77, i64 1
  %78 = load double, double* %arrayidx41, align 8, !tbaa !6
  %79 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds double, double* %79, i64 2
  %80 = load double, double* %arrayidx42, align 8, !tbaa !6
  %81 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds double, double* %81, i64 6
  %82 = load double, double* %arrayidx43, align 8, !tbaa !6
  %83 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds double, double* %83, i64 5
  %84 = load double, double* %arrayidx44, align 8, !tbaa !6
  %85 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds double, double* %85, i64 1
  %86 = load double, double* %arrayidx45, align 8, !tbaa !6
  %87 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds double, double* %87, i64 2
  %88 = load double, double* %arrayidx46, align 8, !tbaa !6
  %89 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds double, double* %89, i64 6
  %90 = load double, double* %arrayidx47, align 8, !tbaa !6
  %91 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds double, double* %91, i64 5
  %92 = load double, double* %arrayidx48, align 8, !tbaa !6
  %93 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds double, double* %93, i64 1
  %94 = load double, double* %arrayidx49, align 8, !tbaa !6
  %95 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds double, double* %95, i64 2
  %96 = load double, double* %arrayidx50, align 8, !tbaa !6
  %97 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds double, double* %97, i64 6
  %98 = load double, double* %arrayidx51, align 8, !tbaa !6
  %99 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds double, double* %99, i64 5
  %100 = load double, double* %arrayidx52, align 8, !tbaa !6
  %call53 = call double @_ZL8AreaFacedddddddddddd(double %78, double %80, double %82, double %84, double %86, double %88, double %90, double %92, double %94, double %96, double %98, double %100)
  store double %call53, double* %a, align 8, !tbaa !6
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %101 = load double, double* %call54, align 8, !tbaa !6
  store double %101, double* %charLength, align 8, !tbaa !6
  %102 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds double, double* %102, i64 2
  %103 = load double, double* %arrayidx55, align 8, !tbaa !6
  %104 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds double, double* %104, i64 3
  %105 = load double, double* %arrayidx56, align 8, !tbaa !6
  %106 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds double, double* %106, i64 7
  %107 = load double, double* %arrayidx57, align 8, !tbaa !6
  %108 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds double, double* %108, i64 6
  %109 = load double, double* %arrayidx58, align 8, !tbaa !6
  %110 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds double, double* %110, i64 2
  %111 = load double, double* %arrayidx59, align 8, !tbaa !6
  %112 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds double, double* %112, i64 3
  %113 = load double, double* %arrayidx60, align 8, !tbaa !6
  %114 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds double, double* %114, i64 7
  %115 = load double, double* %arrayidx61, align 8, !tbaa !6
  %116 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds double, double* %116, i64 6
  %117 = load double, double* %arrayidx62, align 8, !tbaa !6
  %118 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds double, double* %118, i64 2
  %119 = load double, double* %arrayidx63, align 8, !tbaa !6
  %120 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds double, double* %120, i64 3
  %121 = load double, double* %arrayidx64, align 8, !tbaa !6
  %122 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds double, double* %122, i64 7
  %123 = load double, double* %arrayidx65, align 8, !tbaa !6
  %124 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds double, double* %124, i64 6
  %125 = load double, double* %arrayidx66, align 8, !tbaa !6
  %call67 = call double @_ZL8AreaFacedddddddddddd(double %103, double %105, double %107, double %109, double %111, double %113, double %115, double %117, double %119, double %121, double %123, double %125)
  store double %call67, double* %a, align 8, !tbaa !6
  %call68 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %126 = load double, double* %call68, align 8, !tbaa !6
  store double %126, double* %charLength, align 8, !tbaa !6
  %127 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds double, double* %127, i64 3
  %128 = load double, double* %arrayidx69, align 8, !tbaa !6
  %129 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds double, double* %129, i64 0
  %130 = load double, double* %arrayidx70, align 8, !tbaa !6
  %131 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds double, double* %131, i64 4
  %132 = load double, double* %arrayidx71, align 8, !tbaa !6
  %133 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds double, double* %133, i64 7
  %134 = load double, double* %arrayidx72, align 8, !tbaa !6
  %135 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds double, double* %135, i64 3
  %136 = load double, double* %arrayidx73, align 8, !tbaa !6
  %137 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds double, double* %137, i64 0
  %138 = load double, double* %arrayidx74, align 8, !tbaa !6
  %139 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds double, double* %139, i64 4
  %140 = load double, double* %arrayidx75, align 8, !tbaa !6
  %141 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds double, double* %141, i64 7
  %142 = load double, double* %arrayidx76, align 8, !tbaa !6
  %143 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds double, double* %143, i64 3
  %144 = load double, double* %arrayidx77, align 8, !tbaa !6
  %145 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds double, double* %145, i64 0
  %146 = load double, double* %arrayidx78, align 8, !tbaa !6
  %147 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds double, double* %147, i64 4
  %148 = load double, double* %arrayidx79, align 8, !tbaa !6
  %149 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds double, double* %149, i64 7
  %150 = load double, double* %arrayidx80, align 8, !tbaa !6
  %call81 = call double @_ZL8AreaFacedddddddddddd(double %128, double %130, double %132, double %134, double %136, double %138, double %140, double %142, double %144, double %146, double %148, double %150)
  store double %call81, double* %a, align 8, !tbaa !6
  %call82 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %151 = load double, double* %call82, align 8, !tbaa !6
  store double %151, double* %charLength, align 8, !tbaa !6
  %152 = load double, double* %volume.addr, align 8, !tbaa !6
  %mul = fmul double 4.000000e+00, %152
  %153 = load double, double* %charLength, align 8, !tbaa !6
  %call83 = call double @_Z4SQRTd(double %153)
  %div = fdiv double %mul, %call83
  store double %div, double* %charLength, align 8, !tbaa !6
  %154 = load double, double* %charLength, align 8, !tbaa !6
  %155 = bitcast double* %charLength to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %155) #3
  %156 = bitcast double* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %156) #3
  ret double %154
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 48
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_arealg, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_yd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %x, double* %y, double* %z, [8 x double]* %b, double* %volume) #4 {
entry:
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %b.addr = alloca [8 x double]*, align 8
  %volume.addr = alloca double*, align 8
  %x0 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %x5 = alloca double, align 8
  %x6 = alloca double, align 8
  %x7 = alloca double, align 8
  %y0 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  %y5 = alloca double, align 8
  %y6 = alloca double, align 8
  %y7 = alloca double, align 8
  %z0 = alloca double, align 8
  %z1 = alloca double, align 8
  %z2 = alloca double, align 8
  %z3 = alloca double, align 8
  %z4 = alloca double, align 8
  %z5 = alloca double, align 8
  %z6 = alloca double, align 8
  %z7 = alloca double, align 8
  %fjxxi = alloca double, align 8
  %fjxet = alloca double, align 8
  %fjxze = alloca double, align 8
  %fjyxi = alloca double, align 8
  %fjyet = alloca double, align 8
  %fjyze = alloca double, align 8
  %fjzxi = alloca double, align 8
  %fjzet = alloca double, align 8
  %fjzze = alloca double, align 8
  %cjxxi = alloca double, align 8
  %cjxet = alloca double, align 8
  %cjxze = alloca double, align 8
  %cjyxi = alloca double, align 8
  %cjyet = alloca double, align 8
  %cjyze = alloca double, align 8
  %cjzxi = alloca double, align 8
  %cjzet = alloca double, align 8
  %cjzze = alloca double, align 8
  store double* %x, double** %x.addr, align 8, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !2
  store double* %z, double** %z.addr, align 8, !tbaa !2
  store [8 x double]* %b, [8 x double]** %b.addr, align 8, !tbaa !2
  store double* %volume, double** %volume.addr, align 8, !tbaa !2
  %0 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  %2 = load double, double* %arrayidx, align 8, !tbaa !6
  store double %2, double* %x0, align 8, !tbaa !6
  %3 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx1, align 8, !tbaa !6
  store double %5, double* %x1, align 8, !tbaa !6
  %6 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 2
  %8 = load double, double* %arrayidx2, align 8, !tbaa !6
  store double %8, double* %x2, align 8, !tbaa !6
  %9 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds double, double* %10, i64 3
  %11 = load double, double* %arrayidx3, align 8, !tbaa !6
  store double %11, double* %x3, align 8, !tbaa !6
  %12 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds double, double* %13, i64 4
  %14 = load double, double* %arrayidx4, align 8, !tbaa !6
  store double %14, double* %x4, align 8, !tbaa !6
  %15 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %16, i64 5
  %17 = load double, double* %arrayidx5, align 8, !tbaa !6
  store double %17, double* %x5, align 8, !tbaa !6
  %18 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #3
  %19 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %19, i64 6
  %20 = load double, double* %arrayidx6, align 8, !tbaa !6
  store double %20, double* %x6, align 8, !tbaa !6
  %21 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #3
  %22 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %22, i64 7
  %23 = load double, double* %arrayidx7, align 8, !tbaa !6
  store double %23, double* %x7, align 8, !tbaa !6
  %24 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #3
  %25 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %25, i64 0
  %26 = load double, double* %arrayidx8, align 8, !tbaa !6
  store double %26, double* %y0, align 8, !tbaa !6
  %27 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #3
  %28 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %28, i64 1
  %29 = load double, double* %arrayidx9, align 8, !tbaa !6
  store double %29, double* %y1, align 8, !tbaa !6
  %30 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %31, i64 2
  %32 = load double, double* %arrayidx10, align 8, !tbaa !6
  store double %32, double* %y2, align 8, !tbaa !6
  %33 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %33) #3
  %34 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %34, i64 3
  %35 = load double, double* %arrayidx11, align 8, !tbaa !6
  store double %35, double* %y3, align 8, !tbaa !6
  %36 = bitcast double* %y4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #3
  %37 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds double, double* %37, i64 4
  %38 = load double, double* %arrayidx12, align 8, !tbaa !6
  store double %38, double* %y4, align 8, !tbaa !6
  %39 = bitcast double* %y5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %39) #3
  %40 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %40, i64 5
  %41 = load double, double* %arrayidx13, align 8, !tbaa !6
  store double %41, double* %y5, align 8, !tbaa !6
  %42 = bitcast double* %y6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #3
  %43 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %43, i64 6
  %44 = load double, double* %arrayidx14, align 8, !tbaa !6
  store double %44, double* %y6, align 8, !tbaa !6
  %45 = bitcast double* %y7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %45) #3
  %46 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %46, i64 7
  %47 = load double, double* %arrayidx15, align 8, !tbaa !6
  store double %47, double* %y7, align 8, !tbaa !6
  %48 = bitcast double* %z0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %48) #3
  %49 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %49, i64 0
  %50 = load double, double* %arrayidx16, align 8, !tbaa !6
  store double %50, double* %z0, align 8, !tbaa !6
  %51 = bitcast double* %z1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %51) #3
  %52 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %52, i64 1
  %53 = load double, double* %arrayidx17, align 8, !tbaa !6
  store double %53, double* %z1, align 8, !tbaa !6
  %54 = bitcast double* %z2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %54) #3
  %55 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %55, i64 2
  %56 = load double, double* %arrayidx18, align 8, !tbaa !6
  store double %56, double* %z2, align 8, !tbaa !6
  %57 = bitcast double* %z3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %57) #3
  %58 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %58, i64 3
  %59 = load double, double* %arrayidx19, align 8, !tbaa !6
  store double %59, double* %z3, align 8, !tbaa !6
  %60 = bitcast double* %z4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %60) #3
  %61 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %61, i64 4
  %62 = load double, double* %arrayidx20, align 8, !tbaa !6
  store double %62, double* %z4, align 8, !tbaa !6
  %63 = bitcast double* %z5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %63) #3
  %64 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %64, i64 5
  %65 = load double, double* %arrayidx21, align 8, !tbaa !6
  store double %65, double* %z5, align 8, !tbaa !6
  %66 = bitcast double* %z6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %66) #3
  %67 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %67, i64 6
  %68 = load double, double* %arrayidx22, align 8, !tbaa !6
  store double %68, double* %z6, align 8, !tbaa !6
  %69 = bitcast double* %z7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69) #3
  %70 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %70, i64 7
  %71 = load double, double* %arrayidx23, align 8, !tbaa !6
  store double %71, double* %z7, align 8, !tbaa !6
  %72 = bitcast double* %fjxxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %72) #3
  %73 = bitcast double* %fjxet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #3
  %74 = bitcast double* %fjxze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %74) #3
  %75 = bitcast double* %fjyxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %75) #3
  %76 = bitcast double* %fjyet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %76) #3
  %77 = bitcast double* %fjyze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %77) #3
  %78 = bitcast double* %fjzxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %78) #3
  %79 = bitcast double* %fjzet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %79) #3
  %80 = bitcast double* %fjzze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %80) #3
  %81 = bitcast double* %cjxxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %81) #3
  %82 = bitcast double* %cjxet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #3
  %83 = bitcast double* %cjxze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %83) #3
  %84 = bitcast double* %cjyxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %84) #3
  %85 = bitcast double* %cjyet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #3
  %86 = bitcast double* %cjyze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %86) #3
  %87 = bitcast double* %cjzxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %87) #3
  %88 = bitcast double* %cjzet to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %88) #3
  %89 = bitcast double* %cjzze to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %89) #3
  %90 = load double, double* %x6, align 8, !tbaa !6
  %91 = load double, double* %x0, align 8, !tbaa !6
  %sub = fsub double %90, %91
  %92 = load double, double* %x5, align 8, !tbaa !6
  %93 = load double, double* %x3, align 8, !tbaa !6
  %sub24 = fsub double %92, %93
  %add = fadd double %sub, %sub24
  %94 = load double, double* %x7, align 8, !tbaa !6
  %95 = load double, double* %x1, align 8, !tbaa !6
  %sub25 = fsub double %94, %95
  %sub26 = fsub double %add, %sub25
  %96 = load double, double* %x4, align 8, !tbaa !6
  %97 = load double, double* %x2, align 8, !tbaa !6
  %sub27 = fsub double %96, %97
  %sub28 = fsub double %sub26, %sub27
  %mul = fmul double 1.250000e-01, %sub28
  store double %mul, double* %fjxxi, align 8, !tbaa !6
  %98 = load double, double* %x6, align 8, !tbaa !6
  %99 = load double, double* %x0, align 8, !tbaa !6
  %sub29 = fsub double %98, %99
  %100 = load double, double* %x5, align 8, !tbaa !6
  %101 = load double, double* %x3, align 8, !tbaa !6
  %sub30 = fsub double %100, %101
  %sub31 = fsub double %sub29, %sub30
  %102 = load double, double* %x7, align 8, !tbaa !6
  %103 = load double, double* %x1, align 8, !tbaa !6
  %sub32 = fsub double %102, %103
  %add33 = fadd double %sub31, %sub32
  %104 = load double, double* %x4, align 8, !tbaa !6
  %105 = load double, double* %x2, align 8, !tbaa !6
  %sub34 = fsub double %104, %105
  %sub35 = fsub double %add33, %sub34
  %mul36 = fmul double 1.250000e-01, %sub35
  store double %mul36, double* %fjxet, align 8, !tbaa !6
  %106 = load double, double* %x6, align 8, !tbaa !6
  %107 = load double, double* %x0, align 8, !tbaa !6
  %sub37 = fsub double %106, %107
  %108 = load double, double* %x5, align 8, !tbaa !6
  %109 = load double, double* %x3, align 8, !tbaa !6
  %sub38 = fsub double %108, %109
  %add39 = fadd double %sub37, %sub38
  %110 = load double, double* %x7, align 8, !tbaa !6
  %111 = load double, double* %x1, align 8, !tbaa !6
  %sub40 = fsub double %110, %111
  %add41 = fadd double %add39, %sub40
  %112 = load double, double* %x4, align 8, !tbaa !6
  %113 = load double, double* %x2, align 8, !tbaa !6
  %sub42 = fsub double %112, %113
  %add43 = fadd double %add41, %sub42
  %mul44 = fmul double 1.250000e-01, %add43
  store double %mul44, double* %fjxze, align 8, !tbaa !6
  %114 = load double, double* %y6, align 8, !tbaa !6
  %115 = load double, double* %y0, align 8, !tbaa !6
  %sub45 = fsub double %114, %115
  %116 = load double, double* %y5, align 8, !tbaa !6
  %117 = load double, double* %y3, align 8, !tbaa !6
  %sub46 = fsub double %116, %117
  %add47 = fadd double %sub45, %sub46
  %118 = load double, double* %y7, align 8, !tbaa !6
  %119 = load double, double* %y1, align 8, !tbaa !6
  %sub48 = fsub double %118, %119
  %sub49 = fsub double %add47, %sub48
  %120 = load double, double* %y4, align 8, !tbaa !6
  %121 = load double, double* %y2, align 8, !tbaa !6
  %sub50 = fsub double %120, %121
  %sub51 = fsub double %sub49, %sub50
  %mul52 = fmul double 1.250000e-01, %sub51
  store double %mul52, double* %fjyxi, align 8, !tbaa !6
  %122 = load double, double* %y6, align 8, !tbaa !6
  %123 = load double, double* %y0, align 8, !tbaa !6
  %sub53 = fsub double %122, %123
  %124 = load double, double* %y5, align 8, !tbaa !6
  %125 = load double, double* %y3, align 8, !tbaa !6
  %sub54 = fsub double %124, %125
  %sub55 = fsub double %sub53, %sub54
  %126 = load double, double* %y7, align 8, !tbaa !6
  %127 = load double, double* %y1, align 8, !tbaa !6
  %sub56 = fsub double %126, %127
  %add57 = fadd double %sub55, %sub56
  %128 = load double, double* %y4, align 8, !tbaa !6
  %129 = load double, double* %y2, align 8, !tbaa !6
  %sub58 = fsub double %128, %129
  %sub59 = fsub double %add57, %sub58
  %mul60 = fmul double 1.250000e-01, %sub59
  store double %mul60, double* %fjyet, align 8, !tbaa !6
  %130 = load double, double* %y6, align 8, !tbaa !6
  %131 = load double, double* %y0, align 8, !tbaa !6
  %sub61 = fsub double %130, %131
  %132 = load double, double* %y5, align 8, !tbaa !6
  %133 = load double, double* %y3, align 8, !tbaa !6
  %sub62 = fsub double %132, %133
  %add63 = fadd double %sub61, %sub62
  %134 = load double, double* %y7, align 8, !tbaa !6
  %135 = load double, double* %y1, align 8, !tbaa !6
  %sub64 = fsub double %134, %135
  %add65 = fadd double %add63, %sub64
  %136 = load double, double* %y4, align 8, !tbaa !6
  %137 = load double, double* %y2, align 8, !tbaa !6
  %sub66 = fsub double %136, %137
  %add67 = fadd double %add65, %sub66
  %mul68 = fmul double 1.250000e-01, %add67
  store double %mul68, double* %fjyze, align 8, !tbaa !6
  %138 = load double, double* %z6, align 8, !tbaa !6
  %139 = load double, double* %z0, align 8, !tbaa !6
  %sub69 = fsub double %138, %139
  %140 = load double, double* %z5, align 8, !tbaa !6
  %141 = load double, double* %z3, align 8, !tbaa !6
  %sub70 = fsub double %140, %141
  %add71 = fadd double %sub69, %sub70
  %142 = load double, double* %z7, align 8, !tbaa !6
  %143 = load double, double* %z1, align 8, !tbaa !6
  %sub72 = fsub double %142, %143
  %sub73 = fsub double %add71, %sub72
  %144 = load double, double* %z4, align 8, !tbaa !6
  %145 = load double, double* %z2, align 8, !tbaa !6
  %sub74 = fsub double %144, %145
  %sub75 = fsub double %sub73, %sub74
  %mul76 = fmul double 1.250000e-01, %sub75
  store double %mul76, double* %fjzxi, align 8, !tbaa !6
  %146 = load double, double* %z6, align 8, !tbaa !6
  %147 = load double, double* %z0, align 8, !tbaa !6
  %sub77 = fsub double %146, %147
  %148 = load double, double* %z5, align 8, !tbaa !6
  %149 = load double, double* %z3, align 8, !tbaa !6
  %sub78 = fsub double %148, %149
  %sub79 = fsub double %sub77, %sub78
  %150 = load double, double* %z7, align 8, !tbaa !6
  %151 = load double, double* %z1, align 8, !tbaa !6
  %sub80 = fsub double %150, %151
  %add81 = fadd double %sub79, %sub80
  %152 = load double, double* %z4, align 8, !tbaa !6
  %153 = load double, double* %z2, align 8, !tbaa !6
  %sub82 = fsub double %152, %153
  %sub83 = fsub double %add81, %sub82
  %mul84 = fmul double 1.250000e-01, %sub83
  store double %mul84, double* %fjzet, align 8, !tbaa !6
  %154 = load double, double* %z6, align 8, !tbaa !6
  %155 = load double, double* %z0, align 8, !tbaa !6
  %sub85 = fsub double %154, %155
  %156 = load double, double* %z5, align 8, !tbaa !6
  %157 = load double, double* %z3, align 8, !tbaa !6
  %sub86 = fsub double %156, %157
  %add87 = fadd double %sub85, %sub86
  %158 = load double, double* %z7, align 8, !tbaa !6
  %159 = load double, double* %z1, align 8, !tbaa !6
  %sub88 = fsub double %158, %159
  %add89 = fadd double %add87, %sub88
  %160 = load double, double* %z4, align 8, !tbaa !6
  %161 = load double, double* %z2, align 8, !tbaa !6
  %sub90 = fsub double %160, %161
  %add91 = fadd double %add89, %sub90
  %mul92 = fmul double 1.250000e-01, %add91
  store double %mul92, double* %fjzze, align 8, !tbaa !6
  %162 = load double, double* %fjyet, align 8, !tbaa !6
  %163 = load double, double* %fjzze, align 8, !tbaa !6
  %mul93 = fmul double %162, %163
  %164 = load double, double* %fjzet, align 8, !tbaa !6
  %165 = load double, double* %fjyze, align 8, !tbaa !6
  %mul94 = fmul double %164, %165
  %sub95 = fsub double %mul93, %mul94
  store double %sub95, double* %cjxxi, align 8, !tbaa !6
  %166 = load double, double* %fjyxi, align 8, !tbaa !6
  %167 = load double, double* %fjzze, align 8, !tbaa !6
  %mul96 = fmul double %166, %167
  %fneg = fneg double %mul96
  %168 = load double, double* %fjzxi, align 8, !tbaa !6
  %169 = load double, double* %fjyze, align 8, !tbaa !6
  %mul97 = fmul double %168, %169
  %add98 = fadd double %fneg, %mul97
  store double %add98, double* %cjxet, align 8, !tbaa !6
  %170 = load double, double* %fjyxi, align 8, !tbaa !6
  %171 = load double, double* %fjzet, align 8, !tbaa !6
  %mul99 = fmul double %170, %171
  %172 = load double, double* %fjzxi, align 8, !tbaa !6
  %173 = load double, double* %fjyet, align 8, !tbaa !6
  %mul100 = fmul double %172, %173
  %sub101 = fsub double %mul99, %mul100
  store double %sub101, double* %cjxze, align 8, !tbaa !6
  %174 = load double, double* %fjxet, align 8, !tbaa !6
  %175 = load double, double* %fjzze, align 8, !tbaa !6
  %mul102 = fmul double %174, %175
  %fneg103 = fneg double %mul102
  %176 = load double, double* %fjzet, align 8, !tbaa !6
  %177 = load double, double* %fjxze, align 8, !tbaa !6
  %mul104 = fmul double %176, %177
  %add105 = fadd double %fneg103, %mul104
  store double %add105, double* %cjyxi, align 8, !tbaa !6
  %178 = load double, double* %fjxxi, align 8, !tbaa !6
  %179 = load double, double* %fjzze, align 8, !tbaa !6
  %mul106 = fmul double %178, %179
  %180 = load double, double* %fjzxi, align 8, !tbaa !6
  %181 = load double, double* %fjxze, align 8, !tbaa !6
  %mul107 = fmul double %180, %181
  %sub108 = fsub double %mul106, %mul107
  store double %sub108, double* %cjyet, align 8, !tbaa !6
  %182 = load double, double* %fjxxi, align 8, !tbaa !6
  %183 = load double, double* %fjzet, align 8, !tbaa !6
  %mul109 = fmul double %182, %183
  %fneg110 = fneg double %mul109
  %184 = load double, double* %fjzxi, align 8, !tbaa !6
  %185 = load double, double* %fjxet, align 8, !tbaa !6
  %mul111 = fmul double %184, %185
  %add112 = fadd double %fneg110, %mul111
  store double %add112, double* %cjyze, align 8, !tbaa !6
  %186 = load double, double* %fjxet, align 8, !tbaa !6
  %187 = load double, double* %fjyze, align 8, !tbaa !6
  %mul113 = fmul double %186, %187
  %188 = load double, double* %fjyet, align 8, !tbaa !6
  %189 = load double, double* %fjxze, align 8, !tbaa !6
  %mul114 = fmul double %188, %189
  %sub115 = fsub double %mul113, %mul114
  store double %sub115, double* %cjzxi, align 8, !tbaa !6
  %190 = load double, double* %fjxxi, align 8, !tbaa !6
  %191 = load double, double* %fjyze, align 8, !tbaa !6
  %mul116 = fmul double %190, %191
  %fneg117 = fneg double %mul116
  %192 = load double, double* %fjyxi, align 8, !tbaa !6
  %193 = load double, double* %fjxze, align 8, !tbaa !6
  %mul118 = fmul double %192, %193
  %add119 = fadd double %fneg117, %mul118
  store double %add119, double* %cjzet, align 8, !tbaa !6
  %194 = load double, double* %fjxxi, align 8, !tbaa !6
  %195 = load double, double* %fjyet, align 8, !tbaa !6
  %mul120 = fmul double %194, %195
  %196 = load double, double* %fjyxi, align 8, !tbaa !6
  %197 = load double, double* %fjxet, align 8, !tbaa !6
  %mul121 = fmul double %196, %197
  %sub122 = fsub double %mul120, %mul121
  store double %sub122, double* %cjzze, align 8, !tbaa !6
  %198 = load double, double* %cjxxi, align 8, !tbaa !6
  %fneg123 = fneg double %198
  %199 = load double, double* %cjxet, align 8, !tbaa !6
  %sub124 = fsub double %fneg123, %199
  %200 = load double, double* %cjxze, align 8, !tbaa !6
  %sub125 = fsub double %sub124, %200
  %201 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds [8 x double], [8 x double]* %201, i64 0
  %arrayidx127 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx126, i64 0, i64 0
  store double %sub125, double* %arrayidx127, align 8, !tbaa !6
  %202 = load double, double* %cjxxi, align 8, !tbaa !6
  %203 = load double, double* %cjxet, align 8, !tbaa !6
  %sub128 = fsub double %202, %203
  %204 = load double, double* %cjxze, align 8, !tbaa !6
  %sub129 = fsub double %sub128, %204
  %205 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds [8 x double], [8 x double]* %205, i64 0
  %arrayidx131 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx130, i64 0, i64 1
  store double %sub129, double* %arrayidx131, align 8, !tbaa !6
  %206 = load double, double* %cjxxi, align 8, !tbaa !6
  %207 = load double, double* %cjxet, align 8, !tbaa !6
  %add132 = fadd double %206, %207
  %208 = load double, double* %cjxze, align 8, !tbaa !6
  %sub133 = fsub double %add132, %208
  %209 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %209, i64 0
  %arrayidx135 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx134, i64 0, i64 2
  store double %sub133, double* %arrayidx135, align 8, !tbaa !6
  %210 = load double, double* %cjxxi, align 8, !tbaa !6
  %fneg136 = fneg double %210
  %211 = load double, double* %cjxet, align 8, !tbaa !6
  %add137 = fadd double %fneg136, %211
  %212 = load double, double* %cjxze, align 8, !tbaa !6
  %sub138 = fsub double %add137, %212
  %213 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx139 = getelementptr inbounds [8 x double], [8 x double]* %213, i64 0
  %arrayidx140 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx139, i64 0, i64 3
  store double %sub138, double* %arrayidx140, align 8, !tbaa !6
  %214 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx141 = getelementptr inbounds [8 x double], [8 x double]* %214, i64 0
  %arrayidx142 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx141, i64 0, i64 2
  %215 = load double, double* %arrayidx142, align 8, !tbaa !6
  %fneg143 = fneg double %215
  %216 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds [8 x double], [8 x double]* %216, i64 0
  %arrayidx145 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx144, i64 0, i64 4
  store double %fneg143, double* %arrayidx145, align 8, !tbaa !6
  %217 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx146 = getelementptr inbounds [8 x double], [8 x double]* %217, i64 0
  %arrayidx147 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx146, i64 0, i64 3
  %218 = load double, double* %arrayidx147, align 8, !tbaa !6
  %fneg148 = fneg double %218
  %219 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx149 = getelementptr inbounds [8 x double], [8 x double]* %219, i64 0
  %arrayidx150 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx149, i64 0, i64 5
  store double %fneg148, double* %arrayidx150, align 8, !tbaa !6
  %220 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx151 = getelementptr inbounds [8 x double], [8 x double]* %220, i64 0
  %arrayidx152 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx151, i64 0, i64 0
  %221 = load double, double* %arrayidx152, align 8, !tbaa !6
  %fneg153 = fneg double %221
  %222 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds [8 x double], [8 x double]* %222, i64 0
  %arrayidx155 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx154, i64 0, i64 6
  store double %fneg153, double* %arrayidx155, align 8, !tbaa !6
  %223 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds [8 x double], [8 x double]* %223, i64 0
  %arrayidx157 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx156, i64 0, i64 1
  %224 = load double, double* %arrayidx157, align 8, !tbaa !6
  %fneg158 = fneg double %224
  %225 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds [8 x double], [8 x double]* %225, i64 0
  %arrayidx160 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx159, i64 0, i64 7
  store double %fneg158, double* %arrayidx160, align 8, !tbaa !6
  %226 = load double, double* %cjyxi, align 8, !tbaa !6
  %fneg161 = fneg double %226
  %227 = load double, double* %cjyet, align 8, !tbaa !6
  %sub162 = fsub double %fneg161, %227
  %228 = load double, double* %cjyze, align 8, !tbaa !6
  %sub163 = fsub double %sub162, %228
  %229 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx164 = getelementptr inbounds [8 x double], [8 x double]* %229, i64 1
  %arrayidx165 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx164, i64 0, i64 0
  store double %sub163, double* %arrayidx165, align 8, !tbaa !6
  %230 = load double, double* %cjyxi, align 8, !tbaa !6
  %231 = load double, double* %cjyet, align 8, !tbaa !6
  %sub166 = fsub double %230, %231
  %232 = load double, double* %cjyze, align 8, !tbaa !6
  %sub167 = fsub double %sub166, %232
  %233 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx168 = getelementptr inbounds [8 x double], [8 x double]* %233, i64 1
  %arrayidx169 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx168, i64 0, i64 1
  store double %sub167, double* %arrayidx169, align 8, !tbaa !6
  %234 = load double, double* %cjyxi, align 8, !tbaa !6
  %235 = load double, double* %cjyet, align 8, !tbaa !6
  %add170 = fadd double %234, %235
  %236 = load double, double* %cjyze, align 8, !tbaa !6
  %sub171 = fsub double %add170, %236
  %237 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds [8 x double], [8 x double]* %237, i64 1
  %arrayidx173 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx172, i64 0, i64 2
  store double %sub171, double* %arrayidx173, align 8, !tbaa !6
  %238 = load double, double* %cjyxi, align 8, !tbaa !6
  %fneg174 = fneg double %238
  %239 = load double, double* %cjyet, align 8, !tbaa !6
  %add175 = fadd double %fneg174, %239
  %240 = load double, double* %cjyze, align 8, !tbaa !6
  %sub176 = fsub double %add175, %240
  %241 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx177 = getelementptr inbounds [8 x double], [8 x double]* %241, i64 1
  %arrayidx178 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx177, i64 0, i64 3
  store double %sub176, double* %arrayidx178, align 8, !tbaa !6
  %242 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx179 = getelementptr inbounds [8 x double], [8 x double]* %242, i64 1
  %arrayidx180 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx179, i64 0, i64 2
  %243 = load double, double* %arrayidx180, align 8, !tbaa !6
  %fneg181 = fneg double %243
  %244 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx182 = getelementptr inbounds [8 x double], [8 x double]* %244, i64 1
  %arrayidx183 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx182, i64 0, i64 4
  store double %fneg181, double* %arrayidx183, align 8, !tbaa !6
  %245 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds [8 x double], [8 x double]* %245, i64 1
  %arrayidx185 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx184, i64 0, i64 3
  %246 = load double, double* %arrayidx185, align 8, !tbaa !6
  %fneg186 = fneg double %246
  %247 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx187 = getelementptr inbounds [8 x double], [8 x double]* %247, i64 1
  %arrayidx188 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx187, i64 0, i64 5
  store double %fneg186, double* %arrayidx188, align 8, !tbaa !6
  %248 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx189 = getelementptr inbounds [8 x double], [8 x double]* %248, i64 1
  %arrayidx190 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx189, i64 0, i64 0
  %249 = load double, double* %arrayidx190, align 8, !tbaa !6
  %fneg191 = fneg double %249
  %250 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx192 = getelementptr inbounds [8 x double], [8 x double]* %250, i64 1
  %arrayidx193 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx192, i64 0, i64 6
  store double %fneg191, double* %arrayidx193, align 8, !tbaa !6
  %251 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx194 = getelementptr inbounds [8 x double], [8 x double]* %251, i64 1
  %arrayidx195 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx194, i64 0, i64 1
  %252 = load double, double* %arrayidx195, align 8, !tbaa !6
  %fneg196 = fneg double %252
  %253 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx197 = getelementptr inbounds [8 x double], [8 x double]* %253, i64 1
  %arrayidx198 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx197, i64 0, i64 7
  store double %fneg196, double* %arrayidx198, align 8, !tbaa !6
  %254 = load double, double* %cjzxi, align 8, !tbaa !6
  %fneg199 = fneg double %254
  %255 = load double, double* %cjzet, align 8, !tbaa !6
  %sub200 = fsub double %fneg199, %255
  %256 = load double, double* %cjzze, align 8, !tbaa !6
  %sub201 = fsub double %sub200, %256
  %257 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds [8 x double], [8 x double]* %257, i64 2
  %arrayidx203 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx202, i64 0, i64 0
  store double %sub201, double* %arrayidx203, align 8, !tbaa !6
  %258 = load double, double* %cjzxi, align 8, !tbaa !6
  %259 = load double, double* %cjzet, align 8, !tbaa !6
  %sub204 = fsub double %258, %259
  %260 = load double, double* %cjzze, align 8, !tbaa !6
  %sub205 = fsub double %sub204, %260
  %261 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx206 = getelementptr inbounds [8 x double], [8 x double]* %261, i64 2
  %arrayidx207 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx206, i64 0, i64 1
  store double %sub205, double* %arrayidx207, align 8, !tbaa !6
  %262 = load double, double* %cjzxi, align 8, !tbaa !6
  %263 = load double, double* %cjzet, align 8, !tbaa !6
  %add208 = fadd double %262, %263
  %264 = load double, double* %cjzze, align 8, !tbaa !6
  %sub209 = fsub double %add208, %264
  %265 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx210 = getelementptr inbounds [8 x double], [8 x double]* %265, i64 2
  %arrayidx211 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx210, i64 0, i64 2
  store double %sub209, double* %arrayidx211, align 8, !tbaa !6
  %266 = load double, double* %cjzxi, align 8, !tbaa !6
  %fneg212 = fneg double %266
  %267 = load double, double* %cjzet, align 8, !tbaa !6
  %add213 = fadd double %fneg212, %267
  %268 = load double, double* %cjzze, align 8, !tbaa !6
  %sub214 = fsub double %add213, %268
  %269 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx215 = getelementptr inbounds [8 x double], [8 x double]* %269, i64 2
  %arrayidx216 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx215, i64 0, i64 3
  store double %sub214, double* %arrayidx216, align 8, !tbaa !6
  %270 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx217 = getelementptr inbounds [8 x double], [8 x double]* %270, i64 2
  %arrayidx218 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx217, i64 0, i64 2
  %271 = load double, double* %arrayidx218, align 8, !tbaa !6
  %fneg219 = fneg double %271
  %272 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx220 = getelementptr inbounds [8 x double], [8 x double]* %272, i64 2
  %arrayidx221 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx220, i64 0, i64 4
  store double %fneg219, double* %arrayidx221, align 8, !tbaa !6
  %273 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx222 = getelementptr inbounds [8 x double], [8 x double]* %273, i64 2
  %arrayidx223 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx222, i64 0, i64 3
  %274 = load double, double* %arrayidx223, align 8, !tbaa !6
  %fneg224 = fneg double %274
  %275 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx225 = getelementptr inbounds [8 x double], [8 x double]* %275, i64 2
  %arrayidx226 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx225, i64 0, i64 5
  store double %fneg224, double* %arrayidx226, align 8, !tbaa !6
  %276 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx227 = getelementptr inbounds [8 x double], [8 x double]* %276, i64 2
  %arrayidx228 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx227, i64 0, i64 0
  %277 = load double, double* %arrayidx228, align 8, !tbaa !6
  %fneg229 = fneg double %277
  %278 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx230 = getelementptr inbounds [8 x double], [8 x double]* %278, i64 2
  %arrayidx231 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx230, i64 0, i64 6
  store double %fneg229, double* %arrayidx231, align 8, !tbaa !6
  %279 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx232 = getelementptr inbounds [8 x double], [8 x double]* %279, i64 2
  %arrayidx233 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx232, i64 0, i64 1
  %280 = load double, double* %arrayidx233, align 8, !tbaa !6
  %fneg234 = fneg double %280
  %281 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx235 = getelementptr inbounds [8 x double], [8 x double]* %281, i64 2
  %arrayidx236 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx235, i64 0, i64 7
  store double %fneg234, double* %arrayidx236, align 8, !tbaa !6
  %282 = load double, double* %fjxet, align 8, !tbaa !6
  %283 = load double, double* %cjxet, align 8, !tbaa !6
  %mul237 = fmul double %282, %283
  %284 = load double, double* %fjyet, align 8, !tbaa !6
  %285 = load double, double* %cjyet, align 8, !tbaa !6
  %mul238 = fmul double %284, %285
  %add239 = fadd double %mul237, %mul238
  %286 = load double, double* %fjzet, align 8, !tbaa !6
  %287 = load double, double* %cjzet, align 8, !tbaa !6
  %mul240 = fmul double %286, %287
  %add241 = fadd double %add239, %mul240
  %mul242 = fmul double 8.000000e+00, %add241
  %288 = load double*, double** %volume.addr, align 8, !tbaa !2
  store double %mul242, double* %288, align 8, !tbaa !6
  %289 = bitcast double* %cjzze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %289) #3
  %290 = bitcast double* %cjzet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %290) #3
  %291 = bitcast double* %cjzxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %291) #3
  %292 = bitcast double* %cjyze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %292) #3
  %293 = bitcast double* %cjyet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %293) #3
  %294 = bitcast double* %cjyxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %294) #3
  %295 = bitcast double* %cjxze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %295) #3
  %296 = bitcast double* %cjxet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %296) #3
  %297 = bitcast double* %cjxxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %297) #3
  %298 = bitcast double* %fjzze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %298) #3
  %299 = bitcast double* %fjzet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %299) #3
  %300 = bitcast double* %fjzxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %300) #3
  %301 = bitcast double* %fjyze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %301) #3
  %302 = bitcast double* %fjyet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %302) #3
  %303 = bitcast double* %fjyxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %303) #3
  %304 = bitcast double* %fjxze to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %304) #3
  %305 = bitcast double* %fjxet to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %305) #3
  %306 = bitcast double* %fjxxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %306) #3
  %307 = bitcast double* %z7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %307) #3
  %308 = bitcast double* %z6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %308) #3
  %309 = bitcast double* %z5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %309) #3
  %310 = bitcast double* %z4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %310) #3
  %311 = bitcast double* %z3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %311) #3
  %312 = bitcast double* %z2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %312) #3
  %313 = bitcast double* %z1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %313) #3
  %314 = bitcast double* %z0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %314) #3
  %315 = bitcast double* %y7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %315) #3
  %316 = bitcast double* %y6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %316) #3
  %317 = bitcast double* %y5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %317) #3
  %318 = bitcast double* %y4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %318) #3
  %319 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %319) #3
  %320 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %320) #3
  %321 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %321) #3
  %322 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %322) #3
  %323 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %323) #3
  %324 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %324) #3
  %325 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %325) #3
  %326 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %326) #3
  %327 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %327) #3
  %328 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %328) #3
  %329 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %329) #3
  %330 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %330) #3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* %xvel, double* %yvel, double* %zvel, [8 x double]* %b, double %detJ, double* %d) #4 {
entry:
  %xvel.addr = alloca double*, align 8
  %yvel.addr = alloca double*, align 8
  %zvel.addr = alloca double*, align 8
  %b.addr = alloca [8 x double]*, align 8
  %detJ.addr = alloca double, align 8
  %d.addr = alloca double*, align 8
  %inv_detJ = alloca double, align 8
  %dyddx = alloca double, align 8
  %dxddy = alloca double, align 8
  %dzddx = alloca double, align 8
  %dxddz = alloca double, align 8
  %dzddy = alloca double, align 8
  %dyddz = alloca double, align 8
  %pfx = alloca double*, align 8
  %pfy = alloca double*, align 8
  %pfz = alloca double*, align 8
  store double* %xvel, double** %xvel.addr, align 8, !tbaa !2
  store double* %yvel, double** %yvel.addr, align 8, !tbaa !2
  store double* %zvel, double** %zvel.addr, align 8, !tbaa !2
  store [8 x double]* %b, [8 x double]** %b.addr, align 8, !tbaa !2
  store double %detJ, double* %detJ.addr, align 8, !tbaa !6
  store double* %d, double** %d.addr, align 8, !tbaa !2
  %0 = bitcast double* %inv_detJ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load double, double* %detJ.addr, align 8, !tbaa !6
  %div = fdiv double 1.000000e+00, %1
  store double %div, double* %inv_detJ, align 8, !tbaa !6
  %2 = bitcast double* %dyddx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = bitcast double* %dxddy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = bitcast double* %dzddx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast double* %dxddz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = bitcast double* %dzddy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = bitcast double* %dyddz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = bitcast double** %pfx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %9, i64 0
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 0
  store double* %arraydecay, double** %pfx, align 8, !tbaa !2
  %10 = bitcast double** %pfy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 1
  %arraydecay2 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx1, i64 0, i64 0
  store double* %arraydecay2, double** %pfy, align 8, !tbaa !2
  %12 = bitcast double** %pfz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = load [8 x double]*, [8 x double]** %b.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 2
  %arraydecay4 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx3, i64 0, i64 0
  store double* %arraydecay4, double** %pfz, align 8, !tbaa !2
  %14 = load double, double* %inv_detJ, align 8, !tbaa !6
  %15 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %15, i64 0
  %16 = load double, double* %arrayidx5, align 8, !tbaa !6
  %17 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx6, align 8, !tbaa !6
  %19 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %19, i64 6
  %20 = load double, double* %arrayidx7, align 8, !tbaa !6
  %sub = fsub double %18, %20
  %mul = fmul double %16, %sub
  %21 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %21, i64 1
  %22 = load double, double* %arrayidx8, align 8, !tbaa !6
  %23 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %23, i64 1
  %24 = load double, double* %arrayidx9, align 8, !tbaa !6
  %25 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %25, i64 7
  %26 = load double, double* %arrayidx10, align 8, !tbaa !6
  %sub11 = fsub double %24, %26
  %mul12 = fmul double %22, %sub11
  %add = fadd double %mul, %mul12
  %27 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %27, i64 2
  %28 = load double, double* %arrayidx13, align 8, !tbaa !6
  %29 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 2
  %30 = load double, double* %arrayidx14, align 8, !tbaa !6
  %31 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %31, i64 4
  %32 = load double, double* %arrayidx15, align 8, !tbaa !6
  %sub16 = fsub double %30, %32
  %mul17 = fmul double %28, %sub16
  %add18 = fadd double %add, %mul17
  %33 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %33, i64 3
  %34 = load double, double* %arrayidx19, align 8, !tbaa !6
  %35 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %35, i64 3
  %36 = load double, double* %arrayidx20, align 8, !tbaa !6
  %37 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %37, i64 5
  %38 = load double, double* %arrayidx21, align 8, !tbaa !6
  %sub22 = fsub double %36, %38
  %mul23 = fmul double %34, %sub22
  %add24 = fadd double %add18, %mul23
  %mul25 = fmul double %14, %add24
  %39 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds double, double* %39, i64 0
  store double %mul25, double* %arrayidx26, align 8, !tbaa !6
  %40 = load double, double* %inv_detJ, align 8, !tbaa !6
  %41 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds double, double* %41, i64 0
  %42 = load double, double* %arrayidx27, align 8, !tbaa !6
  %43 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds double, double* %43, i64 0
  %44 = load double, double* %arrayidx28, align 8, !tbaa !6
  %45 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds double, double* %45, i64 6
  %46 = load double, double* %arrayidx29, align 8, !tbaa !6
  %sub30 = fsub double %44, %46
  %mul31 = fmul double %42, %sub30
  %47 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds double, double* %47, i64 1
  %48 = load double, double* %arrayidx32, align 8, !tbaa !6
  %49 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds double, double* %49, i64 1
  %50 = load double, double* %arrayidx33, align 8, !tbaa !6
  %51 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds double, double* %51, i64 7
  %52 = load double, double* %arrayidx34, align 8, !tbaa !6
  %sub35 = fsub double %50, %52
  %mul36 = fmul double %48, %sub35
  %add37 = fadd double %mul31, %mul36
  %53 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds double, double* %53, i64 2
  %54 = load double, double* %arrayidx38, align 8, !tbaa !6
  %55 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds double, double* %55, i64 2
  %56 = load double, double* %arrayidx39, align 8, !tbaa !6
  %57 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds double, double* %57, i64 4
  %58 = load double, double* %arrayidx40, align 8, !tbaa !6
  %sub41 = fsub double %56, %58
  %mul42 = fmul double %54, %sub41
  %add43 = fadd double %add37, %mul42
  %59 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds double, double* %59, i64 3
  %60 = load double, double* %arrayidx44, align 8, !tbaa !6
  %61 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds double, double* %61, i64 3
  %62 = load double, double* %arrayidx45, align 8, !tbaa !6
  %63 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds double, double* %63, i64 5
  %64 = load double, double* %arrayidx46, align 8, !tbaa !6
  %sub47 = fsub double %62, %64
  %mul48 = fmul double %60, %sub47
  %add49 = fadd double %add43, %mul48
  %mul50 = fmul double %40, %add49
  %65 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds double, double* %65, i64 1
  store double %mul50, double* %arrayidx51, align 8, !tbaa !6
  %66 = load double, double* %inv_detJ, align 8, !tbaa !6
  %67 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds double, double* %67, i64 0
  %68 = load double, double* %arrayidx52, align 8, !tbaa !6
  %69 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds double, double* %69, i64 0
  %70 = load double, double* %arrayidx53, align 8, !tbaa !6
  %71 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds double, double* %71, i64 6
  %72 = load double, double* %arrayidx54, align 8, !tbaa !6
  %sub55 = fsub double %70, %72
  %mul56 = fmul double %68, %sub55
  %73 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds double, double* %73, i64 1
  %74 = load double, double* %arrayidx57, align 8, !tbaa !6
  %75 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds double, double* %75, i64 1
  %76 = load double, double* %arrayidx58, align 8, !tbaa !6
  %77 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds double, double* %77, i64 7
  %78 = load double, double* %arrayidx59, align 8, !tbaa !6
  %sub60 = fsub double %76, %78
  %mul61 = fmul double %74, %sub60
  %add62 = fadd double %mul56, %mul61
  %79 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds double, double* %79, i64 2
  %80 = load double, double* %arrayidx63, align 8, !tbaa !6
  %81 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds double, double* %81, i64 2
  %82 = load double, double* %arrayidx64, align 8, !tbaa !6
  %83 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds double, double* %83, i64 4
  %84 = load double, double* %arrayidx65, align 8, !tbaa !6
  %sub66 = fsub double %82, %84
  %mul67 = fmul double %80, %sub66
  %add68 = fadd double %add62, %mul67
  %85 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds double, double* %85, i64 3
  %86 = load double, double* %arrayidx69, align 8, !tbaa !6
  %87 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds double, double* %87, i64 3
  %88 = load double, double* %arrayidx70, align 8, !tbaa !6
  %89 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds double, double* %89, i64 5
  %90 = load double, double* %arrayidx71, align 8, !tbaa !6
  %sub72 = fsub double %88, %90
  %mul73 = fmul double %86, %sub72
  %add74 = fadd double %add68, %mul73
  %mul75 = fmul double %66, %add74
  %91 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds double, double* %91, i64 2
  store double %mul75, double* %arrayidx76, align 8, !tbaa !6
  %92 = load double, double* %inv_detJ, align 8, !tbaa !6
  %93 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds double, double* %93, i64 0
  %94 = load double, double* %arrayidx77, align 8, !tbaa !6
  %95 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds double, double* %95, i64 0
  %96 = load double, double* %arrayidx78, align 8, !tbaa !6
  %97 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds double, double* %97, i64 6
  %98 = load double, double* %arrayidx79, align 8, !tbaa !6
  %sub80 = fsub double %96, %98
  %mul81 = fmul double %94, %sub80
  %99 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds double, double* %99, i64 1
  %100 = load double, double* %arrayidx82, align 8, !tbaa !6
  %101 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds double, double* %101, i64 1
  %102 = load double, double* %arrayidx83, align 8, !tbaa !6
  %103 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds double, double* %103, i64 7
  %104 = load double, double* %arrayidx84, align 8, !tbaa !6
  %sub85 = fsub double %102, %104
  %mul86 = fmul double %100, %sub85
  %add87 = fadd double %mul81, %mul86
  %105 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds double, double* %105, i64 2
  %106 = load double, double* %arrayidx88, align 8, !tbaa !6
  %107 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds double, double* %107, i64 2
  %108 = load double, double* %arrayidx89, align 8, !tbaa !6
  %109 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds double, double* %109, i64 4
  %110 = load double, double* %arrayidx90, align 8, !tbaa !6
  %sub91 = fsub double %108, %110
  %mul92 = fmul double %106, %sub91
  %add93 = fadd double %add87, %mul92
  %111 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds double, double* %111, i64 3
  %112 = load double, double* %arrayidx94, align 8, !tbaa !6
  %113 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds double, double* %113, i64 3
  %114 = load double, double* %arrayidx95, align 8, !tbaa !6
  %115 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds double, double* %115, i64 5
  %116 = load double, double* %arrayidx96, align 8, !tbaa !6
  %sub97 = fsub double %114, %116
  %mul98 = fmul double %112, %sub97
  %add99 = fadd double %add93, %mul98
  %mul100 = fmul double %92, %add99
  store double %mul100, double* %dyddx, align 8, !tbaa !6
  %117 = load double, double* %inv_detJ, align 8, !tbaa !6
  %118 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds double, double* %118, i64 0
  %119 = load double, double* %arrayidx101, align 8, !tbaa !6
  %120 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds double, double* %120, i64 0
  %121 = load double, double* %arrayidx102, align 8, !tbaa !6
  %122 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds double, double* %122, i64 6
  %123 = load double, double* %arrayidx103, align 8, !tbaa !6
  %sub104 = fsub double %121, %123
  %mul105 = fmul double %119, %sub104
  %124 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds double, double* %124, i64 1
  %125 = load double, double* %arrayidx106, align 8, !tbaa !6
  %126 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx107 = getelementptr inbounds double, double* %126, i64 1
  %127 = load double, double* %arrayidx107, align 8, !tbaa !6
  %128 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds double, double* %128, i64 7
  %129 = load double, double* %arrayidx108, align 8, !tbaa !6
  %sub109 = fsub double %127, %129
  %mul110 = fmul double %125, %sub109
  %add111 = fadd double %mul105, %mul110
  %130 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds double, double* %130, i64 2
  %131 = load double, double* %arrayidx112, align 8, !tbaa !6
  %132 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds double, double* %132, i64 2
  %133 = load double, double* %arrayidx113, align 8, !tbaa !6
  %134 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds double, double* %134, i64 4
  %135 = load double, double* %arrayidx114, align 8, !tbaa !6
  %sub115 = fsub double %133, %135
  %mul116 = fmul double %131, %sub115
  %add117 = fadd double %add111, %mul116
  %136 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds double, double* %136, i64 3
  %137 = load double, double* %arrayidx118, align 8, !tbaa !6
  %138 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx119 = getelementptr inbounds double, double* %138, i64 3
  %139 = load double, double* %arrayidx119, align 8, !tbaa !6
  %140 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds double, double* %140, i64 5
  %141 = load double, double* %arrayidx120, align 8, !tbaa !6
  %sub121 = fsub double %139, %141
  %mul122 = fmul double %137, %sub121
  %add123 = fadd double %add117, %mul122
  %mul124 = fmul double %117, %add123
  store double %mul124, double* %dxddy, align 8, !tbaa !6
  %142 = load double, double* %inv_detJ, align 8, !tbaa !6
  %143 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds double, double* %143, i64 0
  %144 = load double, double* %arrayidx125, align 8, !tbaa !6
  %145 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds double, double* %145, i64 0
  %146 = load double, double* %arrayidx126, align 8, !tbaa !6
  %147 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds double, double* %147, i64 6
  %148 = load double, double* %arrayidx127, align 8, !tbaa !6
  %sub128 = fsub double %146, %148
  %mul129 = fmul double %144, %sub128
  %149 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds double, double* %149, i64 1
  %150 = load double, double* %arrayidx130, align 8, !tbaa !6
  %151 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds double, double* %151, i64 1
  %152 = load double, double* %arrayidx131, align 8, !tbaa !6
  %153 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds double, double* %153, i64 7
  %154 = load double, double* %arrayidx132, align 8, !tbaa !6
  %sub133 = fsub double %152, %154
  %mul134 = fmul double %150, %sub133
  %add135 = fadd double %mul129, %mul134
  %155 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds double, double* %155, i64 2
  %156 = load double, double* %arrayidx136, align 8, !tbaa !6
  %157 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds double, double* %157, i64 2
  %158 = load double, double* %arrayidx137, align 8, !tbaa !6
  %159 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx138 = getelementptr inbounds double, double* %159, i64 4
  %160 = load double, double* %arrayidx138, align 8, !tbaa !6
  %sub139 = fsub double %158, %160
  %mul140 = fmul double %156, %sub139
  %add141 = fadd double %add135, %mul140
  %161 = load double*, double** %pfx, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds double, double* %161, i64 3
  %162 = load double, double* %arrayidx142, align 8, !tbaa !6
  %163 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx143 = getelementptr inbounds double, double* %163, i64 3
  %164 = load double, double* %arrayidx143, align 8, !tbaa !6
  %165 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds double, double* %165, i64 5
  %166 = load double, double* %arrayidx144, align 8, !tbaa !6
  %sub145 = fsub double %164, %166
  %mul146 = fmul double %162, %sub145
  %add147 = fadd double %add141, %mul146
  %mul148 = fmul double %142, %add147
  store double %mul148, double* %dzddx, align 8, !tbaa !6
  %167 = load double, double* %inv_detJ, align 8, !tbaa !6
  %168 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx149 = getelementptr inbounds double, double* %168, i64 0
  %169 = load double, double* %arrayidx149, align 8, !tbaa !6
  %170 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds double, double* %170, i64 0
  %171 = load double, double* %arrayidx150, align 8, !tbaa !6
  %172 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx151 = getelementptr inbounds double, double* %172, i64 6
  %173 = load double, double* %arrayidx151, align 8, !tbaa !6
  %sub152 = fsub double %171, %173
  %mul153 = fmul double %169, %sub152
  %174 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds double, double* %174, i64 1
  %175 = load double, double* %arrayidx154, align 8, !tbaa !6
  %176 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx155 = getelementptr inbounds double, double* %176, i64 1
  %177 = load double, double* %arrayidx155, align 8, !tbaa !6
  %178 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds double, double* %178, i64 7
  %179 = load double, double* %arrayidx156, align 8, !tbaa !6
  %sub157 = fsub double %177, %179
  %mul158 = fmul double %175, %sub157
  %add159 = fadd double %mul153, %mul158
  %180 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx160 = getelementptr inbounds double, double* %180, i64 2
  %181 = load double, double* %arrayidx160, align 8, !tbaa !6
  %182 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds double, double* %182, i64 2
  %183 = load double, double* %arrayidx161, align 8, !tbaa !6
  %184 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx162 = getelementptr inbounds double, double* %184, i64 4
  %185 = load double, double* %arrayidx162, align 8, !tbaa !6
  %sub163 = fsub double %183, %185
  %mul164 = fmul double %181, %sub163
  %add165 = fadd double %add159, %mul164
  %186 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx166 = getelementptr inbounds double, double* %186, i64 3
  %187 = load double, double* %arrayidx166, align 8, !tbaa !6
  %188 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx167 = getelementptr inbounds double, double* %188, i64 3
  %189 = load double, double* %arrayidx167, align 8, !tbaa !6
  %190 = load double*, double** %xvel.addr, align 8, !tbaa !2
  %arrayidx168 = getelementptr inbounds double, double* %190, i64 5
  %191 = load double, double* %arrayidx168, align 8, !tbaa !6
  %sub169 = fsub double %189, %191
  %mul170 = fmul double %187, %sub169
  %add171 = fadd double %add165, %mul170
  %mul172 = fmul double %167, %add171
  store double %mul172, double* %dxddz, align 8, !tbaa !6
  %192 = load double, double* %inv_detJ, align 8, !tbaa !6
  %193 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx173 = getelementptr inbounds double, double* %193, i64 0
  %194 = load double, double* %arrayidx173, align 8, !tbaa !6
  %195 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx174 = getelementptr inbounds double, double* %195, i64 0
  %196 = load double, double* %arrayidx174, align 8, !tbaa !6
  %197 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx175 = getelementptr inbounds double, double* %197, i64 6
  %198 = load double, double* %arrayidx175, align 8, !tbaa !6
  %sub176 = fsub double %196, %198
  %mul177 = fmul double %194, %sub176
  %199 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx178 = getelementptr inbounds double, double* %199, i64 1
  %200 = load double, double* %arrayidx178, align 8, !tbaa !6
  %201 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx179 = getelementptr inbounds double, double* %201, i64 1
  %202 = load double, double* %arrayidx179, align 8, !tbaa !6
  %203 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx180 = getelementptr inbounds double, double* %203, i64 7
  %204 = load double, double* %arrayidx180, align 8, !tbaa !6
  %sub181 = fsub double %202, %204
  %mul182 = fmul double %200, %sub181
  %add183 = fadd double %mul177, %mul182
  %205 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds double, double* %205, i64 2
  %206 = load double, double* %arrayidx184, align 8, !tbaa !6
  %207 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx185 = getelementptr inbounds double, double* %207, i64 2
  %208 = load double, double* %arrayidx185, align 8, !tbaa !6
  %209 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx186 = getelementptr inbounds double, double* %209, i64 4
  %210 = load double, double* %arrayidx186, align 8, !tbaa !6
  %sub187 = fsub double %208, %210
  %mul188 = fmul double %206, %sub187
  %add189 = fadd double %add183, %mul188
  %211 = load double*, double** %pfy, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds double, double* %211, i64 3
  %212 = load double, double* %arrayidx190, align 8, !tbaa !6
  %213 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx191 = getelementptr inbounds double, double* %213, i64 3
  %214 = load double, double* %arrayidx191, align 8, !tbaa !6
  %215 = load double*, double** %zvel.addr, align 8, !tbaa !2
  %arrayidx192 = getelementptr inbounds double, double* %215, i64 5
  %216 = load double, double* %arrayidx192, align 8, !tbaa !6
  %sub193 = fsub double %214, %216
  %mul194 = fmul double %212, %sub193
  %add195 = fadd double %add189, %mul194
  %mul196 = fmul double %192, %add195
  store double %mul196, double* %dzddy, align 8, !tbaa !6
  %217 = load double, double* %inv_detJ, align 8, !tbaa !6
  %218 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx197 = getelementptr inbounds double, double* %218, i64 0
  %219 = load double, double* %arrayidx197, align 8, !tbaa !6
  %220 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx198 = getelementptr inbounds double, double* %220, i64 0
  %221 = load double, double* %arrayidx198, align 8, !tbaa !6
  %222 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx199 = getelementptr inbounds double, double* %222, i64 6
  %223 = load double, double* %arrayidx199, align 8, !tbaa !6
  %sub200 = fsub double %221, %223
  %mul201 = fmul double %219, %sub200
  %224 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds double, double* %224, i64 1
  %225 = load double, double* %arrayidx202, align 8, !tbaa !6
  %226 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx203 = getelementptr inbounds double, double* %226, i64 1
  %227 = load double, double* %arrayidx203, align 8, !tbaa !6
  %228 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx204 = getelementptr inbounds double, double* %228, i64 7
  %229 = load double, double* %arrayidx204, align 8, !tbaa !6
  %sub205 = fsub double %227, %229
  %mul206 = fmul double %225, %sub205
  %add207 = fadd double %mul201, %mul206
  %230 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx208 = getelementptr inbounds double, double* %230, i64 2
  %231 = load double, double* %arrayidx208, align 8, !tbaa !6
  %232 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx209 = getelementptr inbounds double, double* %232, i64 2
  %233 = load double, double* %arrayidx209, align 8, !tbaa !6
  %234 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx210 = getelementptr inbounds double, double* %234, i64 4
  %235 = load double, double* %arrayidx210, align 8, !tbaa !6
  %sub211 = fsub double %233, %235
  %mul212 = fmul double %231, %sub211
  %add213 = fadd double %add207, %mul212
  %236 = load double*, double** %pfz, align 8, !tbaa !2
  %arrayidx214 = getelementptr inbounds double, double* %236, i64 3
  %237 = load double, double* %arrayidx214, align 8, !tbaa !6
  %238 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx215 = getelementptr inbounds double, double* %238, i64 3
  %239 = load double, double* %arrayidx215, align 8, !tbaa !6
  %240 = load double*, double** %yvel.addr, align 8, !tbaa !2
  %arrayidx216 = getelementptr inbounds double, double* %240, i64 5
  %241 = load double, double* %arrayidx216, align 8, !tbaa !6
  %sub217 = fsub double %239, %241
  %mul218 = fmul double %237, %sub217
  %add219 = fadd double %add213, %mul218
  %mul220 = fmul double %217, %add219
  store double %mul220, double* %dyddz, align 8, !tbaa !6
  %242 = load double, double* %dxddy, align 8, !tbaa !6
  %243 = load double, double* %dyddx, align 8, !tbaa !6
  %add221 = fadd double %242, %243
  %mul222 = fmul double 5.000000e-01, %add221
  %244 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx223 = getelementptr inbounds double, double* %244, i64 5
  store double %mul222, double* %arrayidx223, align 8, !tbaa !6
  %245 = load double, double* %dxddz, align 8, !tbaa !6
  %246 = load double, double* %dzddx, align 8, !tbaa !6
  %add224 = fadd double %245, %246
  %mul225 = fmul double 5.000000e-01, %add224
  %247 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx226 = getelementptr inbounds double, double* %247, i64 4
  store double %mul225, double* %arrayidx226, align 8, !tbaa !6
  %248 = load double, double* %dzddy, align 8, !tbaa !6
  %249 = load double, double* %dyddz, align 8, !tbaa !6
  %add227 = fadd double %248, %249
  %mul228 = fmul double 5.000000e-01, %add227
  %250 = load double*, double** %d.addr, align 8, !tbaa !2
  %arrayidx229 = getelementptr inbounds double, double* %250, i64 3
  store double %mul228, double* %arrayidx229, align 8, !tbaa !6
  %251 = bitcast double** %pfz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %251) #3
  %252 = bitcast double** %pfy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %252) #3
  %253 = bitcast double** %pfx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %253) #3
  %254 = bitcast double* %dyddz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %254) #3
  %255 = bitcast double* %dzddy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %255) #3
  %256 = bitcast double* %dxddz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %256) #3
  %257 = bitcast double* %dzddx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %257) #3
  %258 = bitcast double* %dxddy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %258) #3
  %259 = bitcast double* %dyddx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %259) #3
  %260 = bitcast double* %inv_detJ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %260) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 29
  %0 = load double*, double** %m_dxx, align 8, !tbaa !14
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 30
  %0 = load double*, double** %m_dyy, align 8, !tbaa !18
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 31
  %0 = load double*, double** %m_dzz, align 8, !tbaa !19
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %locDom = alloca %class.Domain*, align 8
  %numRanks = alloca i32, align 4
  %myRank = alloca i32, align 4
  %opts = alloca %struct.cmdLineOpts, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %plane = alloca i32, align 4
  %side = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %elapsed_time = alloca double, align 8
  %end = alloca %struct.timeval, align 8
  %elapsed_timeG = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !8
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !2
  %0 = bitcast %class.Domain** %locDom to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = bitcast i32* %numRanks to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast i32* %myRank to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %3) #3
  store i32 1, i32* %numRanks, align 4, !tbaa !8
  store i32 0, i32* %myRank, align 4, !tbaa !8
  %its = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 0
  store i32 9999999, i32* %its, align 4, !tbaa !20
  %nx = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  store i32 30, i32* %nx, align 4, !tbaa !22
  %numReg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 2
  store i32 11, i32* %numReg, align 4, !tbaa !23
  %4 = load i32, i32* %numRanks, align 4, !tbaa !8
  %add = add nsw i32 %4, 10
  %div = sdiv i32 %add, 9
  %numFiles = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 3
  store i32 %div, i32* %numFiles, align 4, !tbaa !24
  %showProg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 4
  store i32 0, i32* %showProg, align 4, !tbaa !25
  %quiet = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  store i32 0, i32* %quiet, align 4, !tbaa !26
  %viz = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 6
  store i32 0, i32* %viz, align 4, !tbaa !27
  %balance = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 8
  store i32 1, i32* %balance, align 4, !tbaa !28
  %cost = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 7
  store i32 1, i32* %cost, align 4, !tbaa !29
  %5 = load i32, i32* %argc.addr, align 4, !tbaa !8
  %6 = load i8**, i8*** %argv.addr, align 8, !tbaa !2
  %7 = load i32, i32* %myRank, align 4, !tbaa !8
  call void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %5, i8** %6, i32 %7, %struct.cmdLineOpts* %opts)
  %8 = load i32, i32* %myRank, align 4, !tbaa !8
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %quiet1 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %9 = load i32, i32* %quiet1, align 4, !tbaa !26
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %nx3 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %10 = load i32, i32* %nx3, align 4, !tbaa !22
  %call4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %10)
  %call5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* %numRanks, align 4, !tbaa !8
  %call7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call6, i32 %11)
  %call8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %call9 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* %numRanks, align 4, !tbaa !8
  %conv = sext i32 %12 to i64
  %nx10 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %13 = load i32, i32* %nx10, align 4, !tbaa !22
  %conv11 = sext i32 %13 to i64
  %mul = mul nsw i64 %conv, %conv11
  %nx12 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %14 = load i32, i32* %nx12, align 4, !tbaa !22
  %conv13 = sext i32 %14 to i64
  %mul14 = mul nsw i64 %mul, %conv13
  %nx15 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %15 = load i32, i32* %nx15, align 4, !tbaa !22
  %conv16 = sext i32 %15 to i64
  %mul17 = mul nsw i64 %mul14, %conv16
  %call18 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call9, i64 %mul17)
  %call19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %call24 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %call25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %call26 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %side to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = load i32, i32* %numRanks, align 4, !tbaa !8
  %21 = load i32, i32* %myRank, align 4, !tbaa !8
  call void @_Z14InitMeshDecompiiPiS_S_S_(i32 %20, i32 %21, i32* %col, i32* %row, i32* %plane, i32* %side)
  %call27 = call noalias nonnull i8* @_Znwm(i64 1312) #14
  %22 = bitcast i8* %call27 to %class.Domain*
  %23 = load i32, i32* %numRanks, align 4, !tbaa !8
  %24 = load i32, i32* %col, align 4, !tbaa !8
  %25 = load i32, i32* %row, align 4, !tbaa !8
  %26 = load i32, i32* %plane, align 4, !tbaa !8
  %nx28 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %27 = load i32, i32* %nx28, align 4, !tbaa !22
  %28 = load i32, i32* %side, align 4, !tbaa !8
  %numReg29 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 2
  %29 = load i32, i32* %numReg29, align 4, !tbaa !23
  %balance30 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 8
  %30 = load i32, i32* %balance30, align 4, !tbaa !28
  %cost31 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 7
  %31 = load i32, i32* %cost31, align 4, !tbaa !29
  invoke void @_ZN6DomainC1Eiiiiiiiii(%class.Domain* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  store %class.Domain* %22, %class.Domain** %locDom, align 8, !tbaa !2
  %32 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %32) #3
  %call32 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end60, %invoke.cont
  %33 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %33)
  %34 = load double, double* %call33, align 8, !tbaa !6
  %35 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call34 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %35)
  %36 = load double, double* %call34, align 8, !tbaa !6
  %cmp35 = fcmp olt double %34, %36
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call36 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %37)
  %38 = load i32, i32* %call36, align 4, !tbaa !8
  %its37 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 0
  %39 = load i32, i32* %its37, align 4, !tbaa !20
  %cmp38 = icmp slt i32 %38, %39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %41 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  call void @_ZL13TimeIncrementR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %41)
  %42 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  call void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %42)
  %showProg39 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 4
  %43 = load i32, i32* %showProg39, align 4, !tbaa !25
  %cmp40 = icmp ne i32 %43, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end60

land.lhs.true41:                                  ; preds = %while.body
  %quiet42 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %44 = load i32, i32* %quiet42, align 4, !tbaa !26
  %cmp43 = icmp eq i32 %44, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end60

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %45 = load i32, i32* %myRank, align 4, !tbaa !8
  %cmp45 = icmp eq i32 %45, 0
  br i1 %cmp45, label %if.then46, label %if.end60

if.then46:                                        ; preds = %land.lhs.true44
  %call47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %46 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call48 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %46)
  %47 = load i32, i32* %call48, align 4, !tbaa !8
  %call49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call47, i32 %47)
  %call50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %call51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call50, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt10scientificRSt8ios_base)
  %call52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %48 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %48)
  %49 = load double, double* %call53, align 8, !tbaa !6
  %call54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call52, double %49)
  %call55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %call56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %50 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %50)
  %51 = load double, double* %call57, align 8, !tbaa !6
  %call58 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call56, double %51)
  %call59 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %vtable = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !30
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %52 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %52, align 8
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset
  %53 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  call void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %53, i32 260)
  br label %if.end60

lpad:                                             ; preds = %if.end
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %exn.slot, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call27) #15
  %57 = bitcast i32* %side to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  %58 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %61) #3
  %62 = bitcast i32* %myRank to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %numRanks to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast %class.Domain** %locDom to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #3
  br label %eh.resume

if.end60:                                         ; preds = %if.then46, %land.lhs.true44, %land.lhs.true41, %while.body
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %land.end
  %65 = bitcast double* %elapsed_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %65) #3
  %66 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %66) #3
  %call61 = call i32 @gettimeofday(%struct.timeval* %end, %struct.timezone* null) #3
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 0
  %67 = load i64, i64* %tv_sec, align 8, !tbaa !33
  %tv_sec62 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %68 = load i64, i64* %tv_sec62, align 8, !tbaa !33
  %sub = sub nsw i64 %67, %68
  %conv63 = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 1
  %69 = load i64, i64* %tv_usec, align 8, !tbaa !36
  %tv_usec64 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %70 = load i64, i64* %tv_usec64, align 8, !tbaa !36
  %sub65 = sub nsw i64 %69, %70
  %conv66 = sitofp i64 %sub65 to double
  %div67 = fdiv double %conv66, 1.000000e+06
  %add68 = fadd double %conv63, %div67
  store double %add68, double* %elapsed_time, align 8, !tbaa !6
  %71 = bitcast double* %elapsed_timeG to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %71) #3
  %72 = load double, double* %elapsed_time, align 8, !tbaa !6
  store double %72, double* %elapsed_timeG, align 8, !tbaa !6
  %viz69 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 6
  %73 = load i32, i32* %viz69, align 4, !tbaa !27
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then70, label %if.end72

if.then70:                                        ; preds = %while.end
  %74 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %numFiles71 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 3
  %75 = load i32, i32* %numFiles71, align 4, !tbaa !24
  %76 = load i32, i32* %myRank, align 4, !tbaa !8
  %77 = load i32, i32* %numRanks, align 4, !tbaa !8
  call void @_Z11DumpToVisitR6Domainiii(%class.Domain* nonnull align 8 dereferenceable(1312) %74, i32 %75, i32 %76, i32 %77)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %while.end
  %78 = load i32, i32* %myRank, align 4, !tbaa !8
  %cmp73 = icmp eq i32 %78, 0
  br i1 %cmp73, label %land.lhs.true74, label %if.end79

land.lhs.true74:                                  ; preds = %if.end72
  %quiet75 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %79 = load i32, i32* %quiet75, align 4, !tbaa !26
  %cmp76 = icmp eq i32 %79, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %land.lhs.true74
  %80 = load double, double* %elapsed_timeG, align 8, !tbaa !6
  %81 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %nx78 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %82 = load i32, i32* %nx78, align 4, !tbaa !22
  %83 = load i32, i32* %numRanks, align 4, !tbaa !8
  call void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %80, %class.Domain* nonnull align 8 dereferenceable(1312) %81, i32 %82, i32 %83)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %land.lhs.true74, %if.end72
  %84 = load %class.Domain*, %class.Domain** %locDom, align 8, !tbaa !2
  %isnull = icmp eq %class.Domain* %84, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end79
  call void @_ZN6DomainD1Ev(%class.Domain* %84) #3
  %85 = bitcast %class.Domain* %84 to i8*
  call void @_ZdlPv(i8* %85) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end79
  %86 = bitcast double* %elapsed_timeG to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #3
  %87 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %87) #3
  %88 = bitcast double* %elapsed_time to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %88) #3
  %89 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %89) #3
  %90 = bitcast i32* %side to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3
  %92 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3
  %93 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3
  %94 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %94) #3
  %95 = bitcast i32* %myRank to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3
  %96 = bitcast i32* %numRanks to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #3
  %97 = bitcast %class.Domain** %locDom to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #3
  ret i32 0

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val80 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val80
}

declare dso_local void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32, i8**, i32, %struct.cmdLineOpts*) #1

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* %__s) #7 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !2
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !2
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !2
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**
  %vtable = load i8*, i8** %2, align 8, !tbaa !30
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !2
  %7 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8)
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %6, i8* %7, i64 %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !2
  ret %"class.std::basic_ostream"* %9
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %this, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !37
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !37
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* %this1, i64 %0)
  ret %"class.std::basic_ostream"* %call
}

declare dso_local void @_Z14InitMeshDecompiiPiS_S_S_(i32, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #9

declare dso_local void @_ZN6DomainC1Eiiiiiiiii(%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32) unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #10

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_time = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 74
  ret double* %m_time
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_stoptime = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 79
  ret double* %m_stoptime
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_cycle = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 72
  ret i32* %m_cycle
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL13TimeIncrementR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %targetdt = alloca double, align 8
  %ratio = alloca double, align 8
  %olddt = alloca double, align 8
  %gnewdt = alloca double, align 8
  %newdt = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast double* %targetdt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %1)
  %2 = load double, double* %call, align 8, !tbaa !6
  %3 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %3)
  %4 = load double, double* %call1, align 8, !tbaa !6
  %sub = fsub double %2, %4
  store double %sub, double* %targetdt, align 8, !tbaa !6
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %5)
  %6 = load double, double* %call2, align 8, !tbaa !6
  %cmp = fcmp ole double %6, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %entry
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %7)
  %8 = load i32, i32* %call3, align 4, !tbaa !8
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end36

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast double* %ratio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = bitcast double* %olddt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %11)
  %12 = load double, double* %call5, align 8, !tbaa !6
  store double %12, double* %olddt, align 8, !tbaa !6
  %13 = bitcast double* %gnewdt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  store double 1.000000e+20, double* %gnewdt, align 8, !tbaa !6
  %14 = bitcast double* %newdt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %15)
  %16 = load double, double* %call6, align 8, !tbaa !6
  %17 = load double, double* %gnewdt, align 8, !tbaa !6
  %cmp7 = fcmp olt double %16, %17
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %18)
  %19 = load double, double* %call9, align 8, !tbaa !6
  %div = fdiv double %19, 2.000000e+00
  store double %div, double* %gnewdt, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %20 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %20)
  %21 = load double, double* %call10, align 8, !tbaa !6
  %22 = load double, double* %gnewdt, align 8, !tbaa !6
  %cmp11 = fcmp olt double %21, %22
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %23 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %23)
  %24 = load double, double* %call13, align 8, !tbaa !6
  %mul = fmul double %24, 2.000000e+00
  %div14 = fdiv double %mul, 3.000000e+00
  store double %div14, double* %gnewdt, align 8, !tbaa !6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %25 = load double, double* %gnewdt, align 8, !tbaa !6
  store double %25, double* %newdt, align 8, !tbaa !6
  %26 = load double, double* %newdt, align 8, !tbaa !6
  %27 = load double, double* %olddt, align 8, !tbaa !6
  %div16 = fdiv double %26, %27
  store double %div16, double* %ratio, align 8, !tbaa !6
  %28 = load double, double* %ratio, align 8, !tbaa !6
  %cmp17 = fcmp oge double %28, 1.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end15
  %29 = load double, double* %ratio, align 8, !tbaa !6
  %30 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %30)
  %31 = load double, double* %call19, align 8, !tbaa !6
  %cmp20 = fcmp olt double %29, %31
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %32 = load double, double* %olddt, align 8, !tbaa !6
  store double %32, double* %newdt, align 8, !tbaa !6
  br label %if.end28

if.else:                                          ; preds = %if.then18
  %33 = load double, double* %ratio, align 8, !tbaa !6
  %34 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %34)
  %35 = load double, double* %call22, align 8, !tbaa !6
  %cmp23 = fcmp ogt double %33, %35
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.else
  %36 = load double, double* %olddt, align 8, !tbaa !6
  %37 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %37)
  %38 = load double, double* %call25, align 8, !tbaa !6
  %mul26 = fmul double %36, %38
  store double %mul26, double* %newdt, align 8, !tbaa !6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end15
  %39 = load double, double* %newdt, align 8, !tbaa !6
  %40 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call30 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %40)
  %41 = load double, double* %call30, align 8, !tbaa !6
  %cmp31 = fcmp ogt double %39, %41
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %42 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %42)
  %43 = load double, double* %call33, align 8, !tbaa !6
  store double %43, double* %newdt, align 8, !tbaa !6
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %44 = load double, double* %newdt, align 8, !tbaa !6
  %45 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %45)
  store double %44, double* %call35, align 8, !tbaa !6
  %46 = bitcast double* %newdt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #3
  %47 = bitcast double* %gnewdt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  %48 = bitcast double* %olddt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #3
  %49 = bitcast double* %ratio to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #3
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %land.lhs.true, %entry
  %50 = load double, double* %targetdt, align 8, !tbaa !6
  %51 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %51)
  %52 = load double, double* %call37, align 8, !tbaa !6
  %cmp38 = fcmp ogt double %50, %52
  br i1 %cmp38, label %land.lhs.true39, label %if.end48

land.lhs.true39:                                  ; preds = %if.end36
  %53 = load double, double* %targetdt, align 8, !tbaa !6
  %54 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %54)
  %55 = load double, double* %call40, align 8, !tbaa !6
  %mul41 = fmul double 4.000000e+00, %55
  %div42 = fdiv double %mul41, 3.000000e+00
  %cmp43 = fcmp olt double %53, %div42
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %land.lhs.true39
  %56 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %56)
  %57 = load double, double* %call45, align 8, !tbaa !6
  %mul46 = fmul double 2.000000e+00, %57
  %div47 = fdiv double %mul46, 3.000000e+00
  store double %div47, double* %targetdt, align 8, !tbaa !6
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true39, %if.end36
  %58 = load double, double* %targetdt, align 8, !tbaa !6
  %59 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %59)
  %60 = load double, double* %call49, align 8, !tbaa !6
  %cmp50 = fcmp olt double %58, %60
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %61 = load double, double* %targetdt, align 8, !tbaa !6
  %62 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %62)
  store double %61, double* %call52, align 8, !tbaa !6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %63 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %63)
  %64 = load double, double* %call54, align 8, !tbaa !6
  %65 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %65)
  %66 = load double, double* %call55, align 8, !tbaa !6
  %add = fadd double %66, %64
  store double %add, double* %call55, align 8, !tbaa !6
  %67 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call56 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %67)
  %68 = load i32, i32* %call56, align 4, !tbaa !8
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %call56, align 4, !tbaa !8
  %69 = bitcast double* %targetdt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL13LagrangeNodalR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %0)
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %2 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %2)
  %3 = load i32, i32* %call, align 4, !tbaa !8
  call void @_ZL16LagrangeElementsR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %1, i32 %3)
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %4)
  ret void
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %this, %"class.std::ios_base"* (%"class.std::ios_base"*)* %__pf) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::ios_base"* (%"class.std::ios_base"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !2
  store %"class.std::ios_base"* (%"class.std::ios_base"*)* %__pf, %"class.std::ios_base"* (%"class.std::ios_base"*)** %__pf.addr, align 8, !tbaa !2
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::ios_base"* (%"class.std::ios_base"*)*, %"class.std::ios_base"* (%"class.std::ios_base"*)** %__pf.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::basic_ostream"* %this1 to i8**
  %vtable = load i8*, i8** %1, align 8, !tbaa !30
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
define linkonce_odr dso_local nonnull align 8 dereferenceable(216) %"class.std::ios_base"* @_ZSt10scientificRSt8ios_base(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %__base) #7 comdat {
entry:
  %__base.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %__base, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !2
  %0 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !2
  %call = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %0, i32 256, i32 260)
  %1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8, !tbaa !2
  ret %"class.std::ios_base"* %1
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %this, double %__f) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__f.addr = alloca double, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !2
  store double %__f, double* %__f.addr, align 8, !tbaa !6
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load double, double* %__f.addr, align 8, !tbaa !6
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %this1, double %0)
  ret %"class.std::basic_ostream"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatime = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 75
  ret double* %m_deltatime
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %this, i32 %__mask) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__mask.addr = alloca i32, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !2
  store i32 %__mask, i32* %__mask.addr, align 4, !tbaa !38
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = load i32, i32* %__mask.addr, align 4, !tbaa !38
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %0)
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags, i32 %call)
  ret void
}

declare dso_local void @_Z11DumpToVisitR6Domainiii(%class.Domain* nonnull align 8 dereferenceable(1312), i32, i32, i32) #1

declare dso_local void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double, %class.Domain* nonnull align 8 dereferenceable(1312), i32, i32) #1

; Function Attrs: nounwind
declare dso_local void @_ZN6DomainD1Ev(%class.Domain*) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !37
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !40
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !37
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %2
  ret i32* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_x, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_y, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_z, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !37
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !43
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !37
  %add.ptr = getelementptr inbounds double, double* %1, i64 %2
  ret double* %add.ptr
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @_ZL8AreaFacedddddddddddd(double %x0, double %x1, double %x2, double %x3, double %y0, double %y1, double %y2, double %y3, double %z0, double %z1, double %z2, double %z3) #4 {
entry:
  %x0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %z0.addr = alloca double, align 8
  %z1.addr = alloca double, align 8
  %z2.addr = alloca double, align 8
  %z3.addr = alloca double, align 8
  %fx = alloca double, align 8
  %fy = alloca double, align 8
  %fz = alloca double, align 8
  %gx = alloca double, align 8
  %gy = alloca double, align 8
  %gz = alloca double, align 8
  %area = alloca double, align 8
  store double %x0, double* %x0.addr, align 8, !tbaa !6
  store double %x1, double* %x1.addr, align 8, !tbaa !6
  store double %x2, double* %x2.addr, align 8, !tbaa !6
  store double %x3, double* %x3.addr, align 8, !tbaa !6
  store double %y0, double* %y0.addr, align 8, !tbaa !6
  store double %y1, double* %y1.addr, align 8, !tbaa !6
  store double %y2, double* %y2.addr, align 8, !tbaa !6
  store double %y3, double* %y3.addr, align 8, !tbaa !6
  store double %z0, double* %z0.addr, align 8, !tbaa !6
  store double %z1, double* %z1.addr, align 8, !tbaa !6
  store double %z2, double* %z2.addr, align 8, !tbaa !6
  store double %z3, double* %z3.addr, align 8, !tbaa !6
  %0 = bitcast double* %fx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load double, double* %x2.addr, align 8, !tbaa !6
  %2 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub = fsub double %1, %2
  %3 = load double, double* %x3.addr, align 8, !tbaa !6
  %4 = load double, double* %x1.addr, align 8, !tbaa !6
  %sub1 = fsub double %3, %4
  %sub2 = fsub double %sub, %sub1
  store double %sub2, double* %fx, align 8, !tbaa !6
  %5 = bitcast double* %fy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load double, double* %y2.addr, align 8, !tbaa !6
  %7 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub3 = fsub double %6, %7
  %8 = load double, double* %y3.addr, align 8, !tbaa !6
  %9 = load double, double* %y1.addr, align 8, !tbaa !6
  %sub4 = fsub double %8, %9
  %sub5 = fsub double %sub3, %sub4
  store double %sub5, double* %fy, align 8, !tbaa !6
  %10 = bitcast double* %fz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load double, double* %z2.addr, align 8, !tbaa !6
  %12 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub6 = fsub double %11, %12
  %13 = load double, double* %z3.addr, align 8, !tbaa !6
  %14 = load double, double* %z1.addr, align 8, !tbaa !6
  %sub7 = fsub double %13, %14
  %sub8 = fsub double %sub6, %sub7
  store double %sub8, double* %fz, align 8, !tbaa !6
  %15 = bitcast double* %gx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load double, double* %x2.addr, align 8, !tbaa !6
  %17 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub9 = fsub double %16, %17
  %18 = load double, double* %x3.addr, align 8, !tbaa !6
  %19 = load double, double* %x1.addr, align 8, !tbaa !6
  %sub10 = fsub double %18, %19
  %add = fadd double %sub9, %sub10
  store double %add, double* %gx, align 8, !tbaa !6
  %20 = bitcast double* %gy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  %21 = load double, double* %y2.addr, align 8, !tbaa !6
  %22 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub11 = fsub double %21, %22
  %23 = load double, double* %y3.addr, align 8, !tbaa !6
  %24 = load double, double* %y1.addr, align 8, !tbaa !6
  %sub12 = fsub double %23, %24
  %add13 = fadd double %sub11, %sub12
  store double %add13, double* %gy, align 8, !tbaa !6
  %25 = bitcast double* %gz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #3
  %26 = load double, double* %z2.addr, align 8, !tbaa !6
  %27 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub14 = fsub double %26, %27
  %28 = load double, double* %z3.addr, align 8, !tbaa !6
  %29 = load double, double* %z1.addr, align 8, !tbaa !6
  %sub15 = fsub double %28, %29
  %add16 = fadd double %sub14, %sub15
  store double %add16, double* %gz, align 8, !tbaa !6
  %30 = bitcast double* %area to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load double, double* %fx, align 8, !tbaa !6
  %32 = load double, double* %fx, align 8, !tbaa !6
  %mul = fmul double %31, %32
  %33 = load double, double* %fy, align 8, !tbaa !6
  %34 = load double, double* %fy, align 8, !tbaa !6
  %mul17 = fmul double %33, %34
  %add18 = fadd double %mul, %mul17
  %35 = load double, double* %fz, align 8, !tbaa !6
  %36 = load double, double* %fz, align 8, !tbaa !6
  %mul19 = fmul double %35, %36
  %add20 = fadd double %add18, %mul19
  %37 = load double, double* %gx, align 8, !tbaa !6
  %38 = load double, double* %gx, align 8, !tbaa !6
  %mul21 = fmul double %37, %38
  %39 = load double, double* %gy, align 8, !tbaa !6
  %40 = load double, double* %gy, align 8, !tbaa !6
  %mul22 = fmul double %39, %40
  %add23 = fadd double %mul21, %mul22
  %41 = load double, double* %gz, align 8, !tbaa !6
  %42 = load double, double* %gz, align 8, !tbaa !6
  %mul24 = fmul double %41, %42
  %add25 = fadd double %add23, %mul24
  %mul26 = fmul double %add20, %add25
  %43 = load double, double* %fx, align 8, !tbaa !6
  %44 = load double, double* %gx, align 8, !tbaa !6
  %mul27 = fmul double %43, %44
  %45 = load double, double* %fy, align 8, !tbaa !6
  %46 = load double, double* %gy, align 8, !tbaa !6
  %mul28 = fmul double %45, %46
  %add29 = fadd double %mul27, %mul28
  %47 = load double, double* %fz, align 8, !tbaa !6
  %48 = load double, double* %gz, align 8, !tbaa !6
  %mul30 = fmul double %47, %48
  %add31 = fadd double %add29, %mul30
  %49 = load double, double* %fx, align 8, !tbaa !6
  %50 = load double, double* %gx, align 8, !tbaa !6
  %mul32 = fmul double %49, %50
  %51 = load double, double* %fy, align 8, !tbaa !6
  %52 = load double, double* %gy, align 8, !tbaa !6
  %mul33 = fmul double %51, %52
  %add34 = fadd double %mul32, %mul33
  %53 = load double, double* %fz, align 8, !tbaa !6
  %54 = load double, double* %gz, align 8, !tbaa !6
  %mul35 = fmul double %53, %54
  %add36 = fadd double %add34, %mul35
  %mul37 = fmul double %add31, %add36
  %sub38 = fsub double %mul26, %mul37
  store double %sub38, double* %area, align 8, !tbaa !6
  %55 = load double, double* %area, align 8, !tbaa !6
  %56 = bitcast double* %area to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #3
  %57 = bitcast double* %gz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #3
  %58 = bitcast double* %gy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #3
  %59 = bitcast double* %gx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #3
  %60 = bitcast double* %fz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #3
  %61 = bitcast double* %fy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #3
  %62 = bitcast double* %fx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #3
  ret double %55
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %__a, double* nonnull align 8 dereferenceable(8) %__b) #4 comdat {
entry:
  %retval = alloca double*, align 8
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  store double* %__a, double** %__a.addr, align 8, !tbaa !2
  store double* %__b, double** %__b.addr, align 8, !tbaa !2
  %0 = load double*, double** %__a.addr, align 8, !tbaa !2
  %1 = load double, double* %0, align 8, !tbaa !6
  %2 = load double*, double** %__b.addr, align 8, !tbaa !2
  %3 = load double, double* %2, align 8, !tbaa !6
  %cmp = fcmp olt double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double*, double** %__b.addr, align 8, !tbaa !2
  store double* %4, double** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load double*, double** %__a.addr, align 8, !tbaa !2
  store double* %5, double** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load double*, double** %retval, align 8
  ret double* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4SQRTd(double %arg) #4 comdat {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8, !tbaa !6
  %0 = load double, double* %arg.addr, align 8, !tbaa !6
  %call = call double @sqrt(double %0) #3
  ret double %call
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtfixed = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 73
  ret double* %m_dtfixed
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtcourant = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 70
  ret double* %m_dtcourant
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dthydro = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 71
  ret double* %m_dthydro
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatimemultlb = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 76
  ret double* %m_deltatimemultlb
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatimemultub = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 77
  ret double* %m_deltatimemultub
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 78
  ret double* %m_dtmax
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL13LagrangeNodalR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %delt = alloca double, align 8
  %u_cut = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast double* %delt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %1)
  %2 = load double, double* %call, align 8, !tbaa !6
  store double %2, double* %delt, align 8, !tbaa !6
  %3 = bitcast double* %u_cut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call double @_ZNK6Domain5u_cutEv(%class.Domain* %4)
  store double %call1, double* %u_cut, align 8, !tbaa !6
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL17CalcForceForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %5)
  %6 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %7)
  %8 = load i32, i32* %call2, align 4, !tbaa !8
  call void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %6, i32 %8)
  %9 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %9)
  %10 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %11 = load double, double* %delt, align 8, !tbaa !6
  %12 = load double, double* %u_cut, align 8, !tbaa !6
  %13 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %13)
  %14 = load i32, i32* %call3, align 4, !tbaa !8
  call void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nonnull align 8 dereferenceable(1312) %10, double %11, double %12, i32 %14)
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load double, double* %delt, align 8, !tbaa !6
  %17 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %17)
  %18 = load i32, i32* %call4, align 4, !tbaa !8
  call void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %15, double %16, i32 %18)
  %19 = bitcast double* %u_cut to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #3
  %20 = bitcast double* %delt to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL16LagrangeElementsR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %numElem) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem.addr = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  %0 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL20CalcLagrangeElementsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %0)
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL13CalcQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %1)
  %2 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL31ApplyMaterialPropertiesForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %2)
  %3 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call double @_ZNK6Domain5v_cutEv(%class.Domain* %4)
  %5 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  call void @_ZL21UpdateVolumesForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %3, double %call, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numElem = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 88
  ret i32* %m_numElem
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %r = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %0)
  store double 1.000000e+20, double* %call, align 8, !tbaa !6
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %1)
  store double 1.000000e+20, double* %call1, align 8, !tbaa !6
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 0, i32* %r, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %r, align 4, !tbaa !8
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %4)
  %5 = load i32, i32* %call2, align 4, !tbaa !8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %9 = load i32, i32* %r, align 4, !tbaa !8
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %8, i32 %9)
  %10 = load i32, i32* %call3, align 4, !tbaa !8
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %12 = load i32, i32* %r, align 4, !tbaa !8
  %call4 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %11, i32 %12)
  %13 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call5 = call double @_ZNK6Domain3qqcEv(%class.Domain* %13)
  %14 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %14)
  call void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %7, i32 %10, i32* %call4, double %call5, double* nonnull align 8 dereferenceable(8) %call6)
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %17 = load i32, i32* %r, align 4, !tbaa !8
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %16, i32 %17)
  %18 = load i32, i32* %call7, align 4, !tbaa !8
  %19 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %20 = load i32, i32* %r, align 4, !tbaa !8
  %call8 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %19, i32 %20)
  %21 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call9 = call double @_ZNK6Domain7dvovmaxEv(%class.Domain* %21)
  %22 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %22)
  call void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %15, i32 %18, i32* %call8, double %call9, double* nonnull align 8 dereferenceable(8) %call10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %r, align 4, !tbaa !8
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %r, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5u_cutEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_u_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 55
  %0 = load double, double* %m_u_cut, align 8, !tbaa !47
  ret double %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL17CalcForceForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numNode = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numNode, align 4, !tbaa !8
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !8
  %5 = load i32, i32* %numNode, align 4, !tbaa !8
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %7, i32 %8)
  store double 0.000000e+00, double* %call1, align 8, !tbaa !6
  %9 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %9, i32 %10)
  store double 0.000000e+00, double* %call2, align 8, !tbaa !6
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %12 = load i32, i32* %i, align 4, !tbaa !8
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %11, i32 %12)
  store double 0.000000e+00, double* %call3, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %14)
  %15 = bitcast i32* %numNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %numNode) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numNode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %numNode.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %4, i32 %5)
  %6 = load double, double* %call, align 8, !tbaa !6
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %7, i32 %8)
  %9 = load double, double* %call1, align 8, !tbaa !6
  %div = fdiv double %6, %9
  %10 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %10, i32 %11)
  store double %div, double* %call2, align 8, !tbaa !6
  %12 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %12, i32 %13)
  %14 = load double, double* %call3, align 8, !tbaa !6
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !8
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %15, i32 %16)
  %17 = load double, double* %call4, align 8, !tbaa !6
  %div5 = fdiv double %14, %17
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %19 = load i32, i32* %i, align 4, !tbaa !8
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %18, i32 %19)
  store double %div5, double* %call6, align 8, !tbaa !6
  %20 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %20, i32 %21)
  %22 = load double, double* %call7, align 8, !tbaa !6
  %23 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %24 = load i32, i32* %i, align 4, !tbaa !8
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %23, i32 %24)
  %25 = load double, double* %call8, align 8, !tbaa !6
  %div9 = fdiv double %22, %25
  %26 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %27 = load i32, i32* %i, align 4, !tbaa !8
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %26, i32 %27)
  store double %div9, double* %call10, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numNode = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 89
  ret i32* %m_numNode
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %size = alloca i32, align 4
  %numNodeBC = alloca i32, align 4
  %i = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i27 = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %size, align 4, !tbaa !8
  %3 = bitcast i32* %numNodeBC to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = load i32, i32* %size, align 4, !tbaa !8
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %size, align 4, !tbaa !8
  %add1 = add nsw i32 %5, 1
  %mul = mul nsw i32 %add, %add1
  store i32 %mul, i32* %numNodeBC, align 4, !tbaa !8
  %6 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* %6)
  %lnot = xor i1 %call2, true
  %conv = zext i1 %lnot to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %9 = load i32, i32* %numNodeBC, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %12 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %call4 = call i32 @_ZN6Domain5symmXEi(%class.Domain* %12, i32 %13)
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %11, i32 %call4)
  store double 0.000000e+00, double* %call5, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call6 = call zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* %15)
  %lnot7 = xor i1 %call6, true
  %conv8 = zext i1 %lnot7 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end
  %16 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %i11, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.then10
  %17 = load i32, i32* %i11, align 4, !tbaa !8
  %18 = load i32, i32* %numNodeBC, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %17, %18
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  %19 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3
  br label %for.end20

for.body15:                                       ; preds = %for.cond12
  %20 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %21 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i11, align 4, !tbaa !8
  %call16 = call i32 @_ZN6Domain5symmYEi(%class.Domain* %21, i32 %22)
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %20, i32 %call16)
  store double 0.000000e+00, double* %call17, align 8, !tbaa !6
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %23 = load i32, i32* %i11, align 4, !tbaa !8
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %i11, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !51

for.end20:                                        ; preds = %for.cond.cleanup14
  br label %if.end21

if.end21:                                         ; preds = %for.end20, %if.end
  %24 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call22 = call zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* %24)
  %lnot23 = xor i1 %call22, true
  %conv24 = zext i1 %lnot23 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end21
  %25 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  store i32 0, i32* %i27, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %if.then26
  %26 = load i32, i32* %i27, align 4, !tbaa !8
  %27 = load i32, i32* %numNodeBC, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %26, %27
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  %28 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  br label %for.end36

for.body31:                                       ; preds = %for.cond28
  %29 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %30 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %31 = load i32, i32* %i27, align 4, !tbaa !8
  %call32 = call i32 @_ZN6Domain5symmZEi(%class.Domain* %30, i32 %31)
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %29, i32 %call32)
  store double 0.000000e+00, double* %call33, align 8, !tbaa !6
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %32 = load i32, i32* %i27, align 4, !tbaa !8
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %i27, align 4, !tbaa !8
  br label %for.cond28, !llvm.loop !52

for.end36:                                        ; preds = %for.cond.cleanup30
  br label %if.end37

if.end37:                                         ; preds = %for.end36, %if.end21
  %33 = bitcast i32* %numNodeBC to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  %34 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %dt, double %u_cut, i32 %numNode) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %dt.addr = alloca double, align 8
  %u_cut.addr = alloca double, align 8
  %numNode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xdtmp = alloca double, align 8
  %ydtmp = alloca double, align 8
  %zdtmp = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double %dt, double* %dt.addr, align 8, !tbaa !6
  store double %u_cut, double* %u_cut.addr, align 8, !tbaa !6
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %numNode.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast double* %xdtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast double* %ydtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = bitcast double* %zdtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %7, i32 %8)
  %9 = load double, double* %call, align 8, !tbaa !6
  %10 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %10, i32 %11)
  %12 = load double, double* %call1, align 8, !tbaa !6
  %13 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul = fmul double %12, %13
  %add = fadd double %9, %mul
  store double %add, double* %xdtmp, align 8, !tbaa !6
  %14 = load double, double* %xdtmp, align 8, !tbaa !6
  %call2 = call double @_Z4FABSd(double %14)
  %15 = load double, double* %u_cut.addr, align 8, !tbaa !6
  %cmp3 = fcmp olt double %call2, %15
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store double 0.000000e+00, double* %xdtmp, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = load double, double* %xdtmp, align 8, !tbaa !6
  %17 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %18 = load i32, i32* %i, align 4, !tbaa !8
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %17, i32 %18)
  store double %16, double* %call4, align 8, !tbaa !6
  %19 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %19, i32 %20)
  %21 = load double, double* %call5, align 8, !tbaa !6
  %22 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %23 = load i32, i32* %i, align 4, !tbaa !8
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %22, i32 %23)
  %24 = load double, double* %call6, align 8, !tbaa !6
  %25 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul7 = fmul double %24, %25
  %add8 = fadd double %21, %mul7
  store double %add8, double* %ydtmp, align 8, !tbaa !6
  %26 = load double, double* %ydtmp, align 8, !tbaa !6
  %call9 = call double @_Z4FABSd(double %26)
  %27 = load double, double* %u_cut.addr, align 8, !tbaa !6
  %cmp10 = fcmp olt double %call9, %27
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store double 0.000000e+00, double* %ydtmp, align 8, !tbaa !6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %28 = load double, double* %ydtmp, align 8, !tbaa !6
  %29 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %30 = load i32, i32* %i, align 4, !tbaa !8
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %29, i32 %30)
  store double %28, double* %call13, align 8, !tbaa !6
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %32 = load i32, i32* %i, align 4, !tbaa !8
  %call14 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %31, i32 %32)
  %33 = load double, double* %call14, align 8, !tbaa !6
  %34 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %35 = load i32, i32* %i, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %34, i32 %35)
  %36 = load double, double* %call15, align 8, !tbaa !6
  %37 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul16 = fmul double %36, %37
  %add17 = fadd double %33, %mul16
  store double %add17, double* %zdtmp, align 8, !tbaa !6
  %38 = load double, double* %zdtmp, align 8, !tbaa !6
  %call18 = call double @_Z4FABSd(double %38)
  %39 = load double, double* %u_cut.addr, align 8, !tbaa !6
  %cmp19 = fcmp olt double %call18, %39
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end12
  store double 0.000000e+00, double* %zdtmp, align 8, !tbaa !6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %40 = load double, double* %zdtmp, align 8, !tbaa !6
  %41 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %42 = load i32, i32* %i, align 4, !tbaa !8
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %41, i32 %42)
  store double %40, double* %call22, align 8, !tbaa !6
  %43 = bitcast double* %zdtmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #3
  %44 = bitcast double* %ydtmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #3
  %45 = bitcast double* %xdtmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %46 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %dt, i32 %numNode) #4 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %dt.addr = alloca double, align 8
  %numNode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double %dt, double* %dt.addr, align 8, !tbaa !6
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %numNode.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %4, i32 %5)
  %6 = load double, double* %call, align 8, !tbaa !6
  %7 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul = fmul double %6, %7
  %8 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %8, i32 %9)
  %10 = load double, double* %call1, align 8, !tbaa !6
  %add = fadd double %10, %mul
  store double %add, double* %call1, align 8, !tbaa !6
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %12 = load i32, i32* %i, align 4, !tbaa !8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %11, i32 %12)
  %13 = load double, double* %call2, align 8, !tbaa !6
  %14 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul3 = fmul double %13, %14
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !8
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %15, i32 %16)
  %17 = load double, double* %call4, align 8, !tbaa !6
  %add5 = fadd double %17, %mul3
  store double %add5, double* %call4, align 8, !tbaa !6
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %19 = load i32, i32* %i, align 4, !tbaa !8
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %18, i32 %19)
  %20 = load double, double* %call6, align 8, !tbaa !6
  %21 = load double, double* %dt.addr, align 8, !tbaa !6
  %mul7 = fmul double %20, %21
  %22 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %23 = load i32, i32* %i, align 4, !tbaa !8
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %22, i32 %23)
  %24 = load double, double* %call8, align 8, !tbaa !6
  %add9 = fadd double %24, %mul7
  store double %add9, double* %call8, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 9
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fx, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 10
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fy, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 11
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fz, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem = alloca i32, align 4
  %hgcoef = alloca double, align 8
  %sigxx = alloca double*, align 8
  %sigyy = alloca double*, align 8
  %sigzz = alloca double*, align 8
  %determ = alloca double*, align 8
  %k = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %4 = bitcast double* %hgcoef to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call double @_ZNK6Domain6hgcoefEv(%class.Domain* %5)
  store double %call1, double* %hgcoef, align 8, !tbaa !6
  %6 = bitcast double** %sigxx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i32, i32* %numElem, align 4, !tbaa !8
  %conv = sext i32 %7 to i64
  %call2 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call2, double** %sigxx, align 8, !tbaa !2
  %8 = bitcast double** %sigyy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load i32, i32* %numElem, align 4, !tbaa !8
  %conv3 = sext i32 %9 to i64
  %call4 = call double* @_Z8AllocateIdEPT_m(i64 %conv3)
  store double* %call4, double** %sigyy, align 8, !tbaa !2
  %10 = bitcast double** %sigzz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load i32, i32* %numElem, align 4, !tbaa !8
  %conv5 = sext i32 %11 to i64
  %call6 = call double* @_Z8AllocateIdEPT_m(i64 %conv5)
  store double* %call6, double** %sigzz, align 8, !tbaa !2
  %12 = bitcast double** %determ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = load i32, i32* %numElem, align 4, !tbaa !8
  %conv7 = sext i32 %13 to i64
  %call8 = call double* @_Z8AllocateIdEPT_m(i64 %conv7)
  store double* %call8, double** %determ, align 8, !tbaa !2
  %14 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %15 = load double*, double** %sigxx, align 8, !tbaa !2
  %16 = load double*, double** %sigyy, align 8, !tbaa !2
  %17 = load double*, double** %sigzz, align 8, !tbaa !2
  %18 = load i32, i32* %numElem, align 4, !tbaa !8
  call void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nonnull align 8 dereferenceable(1312) %14, double* %15, double* %16, double* %17, i32 %18)
  %19 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %20 = load double*, double** %sigxx, align 8, !tbaa !2
  %21 = load double*, double** %sigyy, align 8, !tbaa !2
  %22 = load double*, double** %sigzz, align 8, !tbaa !2
  %23 = load double*, double** %determ, align 8, !tbaa !2
  %24 = load i32, i32* %numElem, align 4, !tbaa !8
  %25 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call9 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %25)
  %26 = load i32, i32* %call9, align 4, !tbaa !8
  call void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* nonnull align 8 dereferenceable(1312) %19, double* %20, double* %21, double* %22, double* %23, i32 %24, i32 %26)
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %29 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %28, %29
  br i1 %cmp10, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %30 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load double*, double** %determ, align 8, !tbaa !2
  %32 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds double, double* %31, i64 %idxprom
  %33 = load double, double* %arrayidx, align 8, !tbaa !6
  %cmp11 = fcmp ole double %33, 0.000000e+00
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond.cleanup
  %35 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %36 = load double*, double** %determ, align 8, !tbaa !2
  %37 = load double, double* %hgcoef, align 8, !tbaa !6
  call void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* nonnull align 8 dereferenceable(1312) %35, double* %36, double %37)
  call void @_Z7ReleaseIdEvPPT_(double** %determ)
  call void @_Z7ReleaseIdEvPPT_(double** %sigzz)
  call void @_Z7ReleaseIdEvPPT_(double** %sigyy)
  call void @_Z7ReleaseIdEvPPT_(double** %sigxx)
  %38 = bitcast double** %determ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #3
  %39 = bitcast double** %sigzz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #3
  %40 = bitcast double** %sigyy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #3
  %41 = bitcast double** %sigxx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #3
  %42 = bitcast double* %hgcoef to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #3
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  %43 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain6hgcoefEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_hgcoef = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 56
  %0 = load double, double* %m_hgcoef, align 8, !tbaa !56
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_Z8AllocateIdEPT_m(i64 %size) #6 comdat {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !37
  %0 = load i64, i64* %size.addr, align 8, !tbaa !37
  %mul = mul i64 8, %0
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to double*
  ret double* %1
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %sigxx, double* %sigyy, double* %sigzz, i32 %numElem) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %sigxx.addr = alloca double*, align 8
  %sigyy.addr = alloca double*, align 8
  %sigzz.addr = alloca double*, align 8
  %numElem.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %sigxx, double** %sigxx.addr, align 8, !tbaa !2
  store double* %sigyy, double** %sigyy.addr, align 8, !tbaa !2
  store double* %sigzz, double** %sigzz.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %4, i32 %5)
  %6 = load double, double* %call, align 8, !tbaa !6
  %fneg = fneg double %6
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %7, i32 %8)
  %9 = load double, double* %call1, align 8, !tbaa !6
  %sub = fsub double %fneg, %9
  %10 = load double*, double** %sigzz.addr, align 8, !tbaa !2
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  store double %sub, double* %arrayidx, align 8, !tbaa !6
  %12 = load double*, double** %sigyy.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds double, double* %12, i64 %idxprom2
  store double %sub, double* %arrayidx3, align 8, !tbaa !6
  %14 = load double*, double** %sigxx.addr, align 8, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds double, double* %14, i64 %idxprom4
  store double %sub, double* %arrayidx5, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %sigxx, double* %sigyy, double* %sigzz, double* %determ, i32 %numElem, i32 %numNode) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %sigxx.addr = alloca double*, align 8
  %sigyy.addr = alloca double*, align 8
  %sigzz.addr = alloca double*, align 8
  %determ.addr = alloca double*, align 8
  %numElem.addr = alloca i32, align 4
  %numNode.addr = alloca i32, align 4
  %numthreads = alloca i32, align 4
  %numElem8 = alloca i32, align 4
  %fx_elem = alloca double*, align 8
  %fy_elem = alloca double*, align 8
  %fz_elem = alloca double*, align 8
  %fx_local = alloca [8 x double], align 16
  %fy_local = alloca [8 x double], align 16
  %fz_local = alloca [8 x double], align 16
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %elemToNode = alloca i32*, align 8
  %B = alloca [3 x [8 x double]], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %lnode = alloca i32, align 4
  %gnode = alloca i32, align 4
  %gnode73 = alloca i32, align 4
  %count = alloca i32, align 4
  %cornerList = alloca i32*, align 8
  %fx_tmp = alloca double, align 8
  %fy_tmp = alloca double, align 8
  %fz_tmp = alloca double, align 8
  %i = alloca i32, align 4
  %ielem = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %sigxx, double** %sigxx.addr, align 8, !tbaa !2
  store double* %sigyy, double** %sigyy.addr, align 8, !tbaa !2
  store double* %sigzz, double** %sigzz.addr, align 8, !tbaa !2
  store double* %determ, double** %determ.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !8
  %0 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 1, i32* %numthreads, align 4, !tbaa !8
  %1 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 8
  store i32 %mul, i32* %numElem8, align 4, !tbaa !8
  %3 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = bitcast [8 x double]* %fx_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #3
  %7 = bitcast [8 x double]* %fy_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #3
  %8 = bitcast [8 x double]* %fz_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #3
  %9 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv = sext i32 %10 to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call, double** %fx_elem, align 8, !tbaa !2
  %11 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv1 = sext i32 %11 to i64
  %call2 = call double* @_Z8AllocateIdEPT_m(i64 %conv1)
  store double* %call2, double** %fy_elem, align 8, !tbaa !2
  %12 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv3 = sext i32 %12 to i64
  %call4 = call double* @_Z8AllocateIdEPT_m(i64 %conv3)
  store double* %call4, double** %fz_elem, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %if.end
  %14 = load i32, i32* %k, align 4, !tbaa !8
  %15 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3
  br label %for.end70

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #3
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %19 = load i32, i32* %k, align 4, !tbaa !8
  %call6 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %18, i32 %19)
  store i32* %call6, i32** %elemToNode, align 8, !tbaa !2
  %20 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %20) #3
  %21 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %21) #3
  %22 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %22) #3
  %23 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %23) #3
  %24 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %25 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %24, i32* %25, double* %arraydecay, double* %arraydecay7, double* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %26 = load double*, double** %determ.addr, align 8, !tbaa !2
  %27 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds double, double* %26, i64 %idxprom
  call void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, [8 x double]* %arraydecay12, double* %arrayidx)
  %arrayidx13 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx13, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1
  %arraydecay16 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx15, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2
  %arraydecay18 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx17, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* %arraydecay14, double* %arraydecay16, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20, double* %arraydecay21)
  %28 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp22 = icmp sgt i32 %28, 1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  %arraydecay24 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %29 = load double*, double** %sigxx.addr, align 8, !tbaa !2
  %30 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds double, double* %29, i64 %idxprom25
  %31 = load double, double* %arrayidx26, align 8, !tbaa !6
  %32 = load double*, double** %sigyy.addr, align 8, !tbaa !2
  %33 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds double, double* %32, i64 %idxprom27
  %34 = load double, double* %arrayidx28, align 8, !tbaa !6
  %35 = load double*, double** %sigzz.addr, align 8, !tbaa !2
  %36 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds double, double* %35, i64 %idxprom29
  %37 = load double, double* %arrayidx30, align 8, !tbaa !6
  %38 = load double*, double** %fx_elem, align 8, !tbaa !2
  %39 = load i32, i32* %k, align 4, !tbaa !8
  %mul31 = mul nsw i32 %39, 8
  %idxprom32 = sext i32 %mul31 to i64
  %arrayidx33 = getelementptr inbounds double, double* %38, i64 %idxprom32
  %40 = load double*, double** %fy_elem, align 8, !tbaa !2
  %41 = load i32, i32* %k, align 4, !tbaa !8
  %mul34 = mul nsw i32 %41, 8
  %idxprom35 = sext i32 %mul34 to i64
  %arrayidx36 = getelementptr inbounds double, double* %40, i64 %idxprom35
  %42 = load double*, double** %fz_elem, align 8, !tbaa !2
  %43 = load i32, i32* %k, align 4, !tbaa !8
  %mul37 = mul nsw i32 %43, 8
  %idxprom38 = sext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds double, double* %42, i64 %idxprom38
  call void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %arraydecay24, double %31, double %34, double %37, double* %arrayidx33, double* %arrayidx36, double* %arrayidx39)
  br label %if.end67

if.else:                                          ; preds = %for.body
  %arraydecay40 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %44 = load double*, double** %sigxx.addr, align 8, !tbaa !2
  %45 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom41 = sext i32 %45 to i64
  %arrayidx42 = getelementptr inbounds double, double* %44, i64 %idxprom41
  %46 = load double, double* %arrayidx42, align 8, !tbaa !6
  %47 = load double*, double** %sigyy.addr, align 8, !tbaa !2
  %48 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom43 = sext i32 %48 to i64
  %arrayidx44 = getelementptr inbounds double, double* %47, i64 %idxprom43
  %49 = load double, double* %arrayidx44, align 8, !tbaa !6
  %50 = load double*, double** %sigzz.addr, align 8, !tbaa !2
  %51 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds double, double* %50, i64 %idxprom45
  %52 = load double, double* %arrayidx46, align 8, !tbaa !6
  %arraydecay47 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 0
  call void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %arraydecay40, double %46, double %49, double %52, double* %arraydecay47, double* %arraydecay48, double* %arraydecay49)
  %53 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #3
  store i32 0, i32* %lnode, align 4, !tbaa !8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc, %if.else
  %54 = load i32, i32* %lnode, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %54, 8
  br i1 %cmp51, label %for.body53, label %for.cond.cleanup52

for.cond.cleanup52:                               ; preds = %for.cond50
  store i32 5, i32* %cleanup.dest.slot, align 4
  %55 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  br label %for.end

for.body53:                                       ; preds = %for.cond50
  %56 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %56) #3
  %57 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %58 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom54 = sext i32 %58 to i64
  %arrayidx55 = getelementptr inbounds i32, i32* %57, i64 %idxprom54
  %59 = load i32, i32* %arrayidx55, align 4, !tbaa !8
  store i32 %59, i32* %gnode, align 4, !tbaa !8
  %60 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom56 = sext i32 %60 to i64
  %arrayidx57 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 %idxprom56
  %61 = load double, double* %arrayidx57, align 8, !tbaa !6
  %62 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %63 = load i32, i32* %gnode, align 4, !tbaa !8
  %call58 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %62, i32 %63)
  %64 = load double, double* %call58, align 8, !tbaa !6
  %add = fadd double %64, %61
  store double %add, double* %call58, align 8, !tbaa !6
  %65 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom59 = sext i32 %65 to i64
  %arrayidx60 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 %idxprom59
  %66 = load double, double* %arrayidx60, align 8, !tbaa !6
  %67 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %68 = load i32, i32* %gnode, align 4, !tbaa !8
  %call61 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %67, i32 %68)
  %69 = load double, double* %call61, align 8, !tbaa !6
  %add62 = fadd double %69, %66
  store double %add62, double* %call61, align 8, !tbaa !6
  %70 = load i32, i32* %lnode, align 4, !tbaa !8
  %idxprom63 = sext i32 %70 to i64
  %arrayidx64 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 %idxprom63
  %71 = load double, double* %arrayidx64, align 8, !tbaa !6
  %72 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %73 = load i32, i32* %gnode, align 4, !tbaa !8
  %call65 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %72, i32 %73)
  %74 = load double, double* %call65, align 8, !tbaa !6
  %add66 = fadd double %74, %71
  store double %add66, double* %call65, align 8, !tbaa !6
  %75 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body53
  %76 = load i32, i32* %lnode, align 4, !tbaa !8
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %lnode, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !58

for.end:                                          ; preds = %for.cond.cleanup52
  br label %if.end67

if.end67:                                         ; preds = %for.end, %if.then23
  %77 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %77) #3
  %78 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %78) #3
  %79 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %79) #3
  %80 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %80) #3
  %81 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #3
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %82 = load i32, i32* %k, align 4, !tbaa !8
  %inc69 = add nsw i32 %82, 1
  store i32 %inc69, i32* %k, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !59

for.end70:                                        ; preds = %for.cond.cleanup
  %83 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp71 = icmp sgt i32 %83, 1
  br i1 %cmp71, label %if.then72, label %if.end104

if.then72:                                        ; preds = %for.end70
  %84 = bitcast i32* %gnode73 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %84) #3
  store i32 0, i32* %gnode73, align 4, !tbaa !8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc101, %if.then72
  %85 = load i32, i32* %gnode73, align 4, !tbaa !8
  %86 = load i32, i32* %numNode.addr, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %85, %86
  br i1 %cmp75, label %for.body77, label %for.cond.cleanup76

for.cond.cleanup76:                               ; preds = %for.cond74
  store i32 8, i32* %cleanup.dest.slot, align 4
  %87 = bitcast i32* %gnode73 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  br label %for.end103

for.body77:                                       ; preds = %for.cond74
  %88 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %88) #3
  %89 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %90 = load i32, i32* %gnode73, align 4, !tbaa !8
  %call78 = call i32 @_ZN6Domain13nodeElemCountEi(%class.Domain* %89, i32 %90)
  store i32 %call78, i32* %count, align 4, !tbaa !8
  %91 = bitcast i32** %cornerList to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %91) #3
  %92 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %93 = load i32, i32* %gnode73, align 4, !tbaa !8
  %call79 = call i32* @_ZN6Domain18nodeElemCornerListEi(%class.Domain* %92, i32 %93)
  store i32* %call79, i32** %cornerList, align 8, !tbaa !2
  %94 = bitcast double* %fx_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %94) #3
  store double 0.000000e+00, double* %fx_tmp, align 8, !tbaa !6
  %95 = bitcast double* %fy_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %95) #3
  store double 0.000000e+00, double* %fy_tmp, align 8, !tbaa !6
  %96 = bitcast double* %fz_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %96) #3
  store double 0.000000e+00, double* %fz_tmp, align 8, !tbaa !6
  %97 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %97) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc95, %for.body77
  %98 = load i32, i32* %i, align 4, !tbaa !8
  %99 = load i32, i32* %count, align 4, !tbaa !8
  %cmp81 = icmp slt i32 %98, %99
  br i1 %cmp81, label %for.body83, label %for.cond.cleanup82

for.cond.cleanup82:                               ; preds = %for.cond80
  store i32 11, i32* %cleanup.dest.slot, align 4
  %100 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #3
  br label %for.end97

for.body83:                                       ; preds = %for.cond80
  %101 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %101) #3
  %102 = load i32*, i32** %cornerList, align 8, !tbaa !2
  %103 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom84 = sext i32 %103 to i64
  %arrayidx85 = getelementptr inbounds i32, i32* %102, i64 %idxprom84
  %104 = load i32, i32* %arrayidx85, align 4, !tbaa !8
  store i32 %104, i32* %ielem, align 4, !tbaa !8
  %105 = load double*, double** %fx_elem, align 8, !tbaa !2
  %106 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom86 = sext i32 %106 to i64
  %arrayidx87 = getelementptr inbounds double, double* %105, i64 %idxprom86
  %107 = load double, double* %arrayidx87, align 8, !tbaa !6
  %108 = load double, double* %fx_tmp, align 8, !tbaa !6
  %add88 = fadd double %108, %107
  store double %add88, double* %fx_tmp, align 8, !tbaa !6
  %109 = load double*, double** %fy_elem, align 8, !tbaa !2
  %110 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom89 = sext i32 %110 to i64
  %arrayidx90 = getelementptr inbounds double, double* %109, i64 %idxprom89
  %111 = load double, double* %arrayidx90, align 8, !tbaa !6
  %112 = load double, double* %fy_tmp, align 8, !tbaa !6
  %add91 = fadd double %112, %111
  store double %add91, double* %fy_tmp, align 8, !tbaa !6
  %113 = load double*, double** %fz_elem, align 8, !tbaa !2
  %114 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom92 = sext i32 %114 to i64
  %arrayidx93 = getelementptr inbounds double, double* %113, i64 %idxprom92
  %115 = load double, double* %arrayidx93, align 8, !tbaa !6
  %116 = load double, double* %fz_tmp, align 8, !tbaa !6
  %add94 = fadd double %116, %115
  store double %add94, double* %fz_tmp, align 8, !tbaa !6
  %117 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3
  br label %for.inc95

for.inc95:                                        ; preds = %for.body83
  %118 = load i32, i32* %i, align 4, !tbaa !8
  %inc96 = add nsw i32 %118, 1
  store i32 %inc96, i32* %i, align 4, !tbaa !8
  br label %for.cond80, !llvm.loop !60

for.end97:                                        ; preds = %for.cond.cleanup82
  %119 = load double, double* %fx_tmp, align 8, !tbaa !6
  %120 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %121 = load i32, i32* %gnode73, align 4, !tbaa !8
  %call98 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %120, i32 %121)
  store double %119, double* %call98, align 8, !tbaa !6
  %122 = load double, double* %fy_tmp, align 8, !tbaa !6
  %123 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %124 = load i32, i32* %gnode73, align 4, !tbaa !8
  %call99 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %123, i32 %124)
  store double %122, double* %call99, align 8, !tbaa !6
  %125 = load double, double* %fz_tmp, align 8, !tbaa !6
  %126 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %127 = load i32, i32* %gnode73, align 4, !tbaa !8
  %call100 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %126, i32 %127)
  store double %125, double* %call100, align 8, !tbaa !6
  %128 = bitcast double* %fz_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #3
  %129 = bitcast double* %fy_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %129) #3
  %130 = bitcast double* %fx_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %130) #3
  %131 = bitcast i32** %cornerList to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %131) #3
  %132 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #3
  br label %for.inc101

for.inc101:                                       ; preds = %for.end97
  %133 = load i32, i32* %gnode73, align 4, !tbaa !8
  %inc102 = add nsw i32 %133, 1
  store i32 %inc102, i32* %gnode73, align 4, !tbaa !8
  br label %for.cond74, !llvm.loop !61

for.end103:                                       ; preds = %for.cond.cleanup76
  call void @_Z7ReleaseIdEvPPT_(double** %fz_elem)
  call void @_Z7ReleaseIdEvPPT_(double** %fy_elem)
  call void @_Z7ReleaseIdEvPPT_(double** %fx_elem)
  br label %if.end104

if.end104:                                        ; preds = %for.end103, %for.end70
  %134 = bitcast [8 x double]* %fz_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %134) #3
  %135 = bitcast [8 x double]* %fy_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %135) #3
  %136 = bitcast [8 x double]* %fx_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %136) #3
  %137 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %137) #3
  %138 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %138) #3
  %139 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %139) #3
  %140 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #3
  %141 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #11

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %determ, double %hgcoef) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %determ.addr = alloca double*, align 8
  %hgcoef.addr = alloca double, align 8
  %numElem = alloca i32, align 4
  %numElem8 = alloca i32, align 4
  %dvdx = alloca double*, align 8
  %dvdy = alloca double*, align 8
  %dvdz = alloca double*, align 8
  %x8n = alloca double*, align 8
  %y8n = alloca double*, align 8
  %z8n = alloca double*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %x1 = alloca [8 x double], align 16
  %y1 = alloca [8 x double], align 16
  %z1 = alloca [8 x double], align 16
  %pfx = alloca [8 x double], align 16
  %pfy = alloca [8 x double], align 16
  %pfz = alloca [8 x double], align 16
  %elemToNode = alloca i32*, align 8
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %determ, double** %determ.addr, align 8, !tbaa !2
  store double %hgcoef, double* %hgcoef.addr, align 8, !tbaa !6
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = load i32, i32* %numElem, align 4, !tbaa !8
  %mul = mul nsw i32 %4, 8
  store i32 %mul, i32* %numElem8, align 4, !tbaa !8
  %5 = bitcast double** %dvdx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv = sext i32 %6 to i64
  %call1 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call1, double** %dvdx, align 8, !tbaa !2
  %7 = bitcast double** %dvdy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv2 = sext i32 %8 to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  store double* %call3, double** %dvdy, align 8, !tbaa !2
  %9 = bitcast double** %dvdz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv4 = sext i32 %10 to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  store double* %call5, double** %dvdz, align 8, !tbaa !2
  %11 = bitcast double** %x8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  %12 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv6 = sext i32 %12 to i64
  %call7 = call double* @_Z8AllocateIdEPT_m(i64 %conv6)
  store double* %call7, double** %x8n, align 8, !tbaa !2
  %13 = bitcast double** %y8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv8 = sext i32 %14 to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv8)
  store double* %call9, double** %y8n, align 8, !tbaa !2
  %15 = bitcast double** %z8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv10 = sext i32 %16 to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  store double* %call11, double** %z8n, align 8, !tbaa !2
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %18 = load i32, i32* %i, align 4, !tbaa !8
  %19 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  br label %for.end57

for.body:                                         ; preds = %for.cond
  %21 = bitcast [8 x double]* %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %21) #3
  %22 = bitcast [8 x double]* %y1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %22) #3
  %23 = bitcast [8 x double]* %z1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %23) #3
  %24 = bitcast [8 x double]* %pfx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %24) #3
  %25 = bitcast [8 x double]* %pfy to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %25) #3
  %26 = bitcast [8 x double]* %pfz to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %26) #3
  %27 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #3
  %28 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %call12 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %28, i32 %29)
  store i32* %call12, i32** %elemToNode, align 8, !tbaa !2
  %30 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %31 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %30, i32* %31, double* %arraydecay, double* %arraydecay13, double* %arraydecay14)
  %arraydecay15 = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 0
  call void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* %arraydecay15, double* %arraydecay16, double* %arraydecay17, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20)
  %32 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #3
  store i32 0, i32* %ii, align 4, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %ii, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %33, 8
  br i1 %cmp22, label %for.body24, label %for.cond.cleanup23

for.cond.cleanup23:                               ; preds = %for.cond21
  store i32 5, i32* %cleanup.dest.slot, align 4
  %34 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  br label %for.end

for.body24:                                       ; preds = %for.cond21
  %35 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #3
  %36 = load i32, i32* %i, align 4, !tbaa !8
  %mul25 = mul nsw i32 8, %36
  %37 = load i32, i32* %ii, align 4, !tbaa !8
  %add = add nsw i32 %mul25, %37
  store i32 %add, i32* %jj, align 4, !tbaa !8
  %38 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 %idxprom
  %39 = load double, double* %arrayidx, align 8, !tbaa !6
  %40 = load double*, double** %dvdx, align 8, !tbaa !2
  %41 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds double, double* %40, i64 %idxprom26
  store double %39, double* %arrayidx27, align 8, !tbaa !6
  %42 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom28 = sext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 %idxprom28
  %43 = load double, double* %arrayidx29, align 8, !tbaa !6
  %44 = load double*, double** %dvdy, align 8, !tbaa !2
  %45 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom30 = sext i32 %45 to i64
  %arrayidx31 = getelementptr inbounds double, double* %44, i64 %idxprom30
  store double %43, double* %arrayidx31, align 8, !tbaa !6
  %46 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 %idxprom32
  %47 = load double, double* %arrayidx33, align 8, !tbaa !6
  %48 = load double*, double** %dvdz, align 8, !tbaa !2
  %49 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom34 = sext i32 %49 to i64
  %arrayidx35 = getelementptr inbounds double, double* %48, i64 %idxprom34
  store double %47, double* %arrayidx35, align 8, !tbaa !6
  %50 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom36 = sext i32 %50 to i64
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 %idxprom36
  %51 = load double, double* %arrayidx37, align 8, !tbaa !6
  %52 = load double*, double** %x8n, align 8, !tbaa !2
  %53 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom38 = sext i32 %53 to i64
  %arrayidx39 = getelementptr inbounds double, double* %52, i64 %idxprom38
  store double %51, double* %arrayidx39, align 8, !tbaa !6
  %54 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom40 = sext i32 %54 to i64
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 %idxprom40
  %55 = load double, double* %arrayidx41, align 8, !tbaa !6
  %56 = load double*, double** %y8n, align 8, !tbaa !2
  %57 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds double, double* %56, i64 %idxprom42
  store double %55, double* %arrayidx43, align 8, !tbaa !6
  %58 = load i32, i32* %ii, align 4, !tbaa !8
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 %idxprom44
  %59 = load double, double* %arrayidx45, align 8, !tbaa !6
  %60 = load double*, double** %z8n, align 8, !tbaa !2
  %61 = load i32, i32* %jj, align 4, !tbaa !8
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  store double %59, double* %arrayidx47, align 8, !tbaa !6
  %62 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %63 = load i32, i32* %ii, align 4, !tbaa !8
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %ii, align 4, !tbaa !8
  br label %for.cond21, !llvm.loop !62

for.end:                                          ; preds = %for.cond.cleanup23
  %64 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %65 = load i32, i32* %i, align 4, !tbaa !8
  %call48 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %64, i32 %65)
  %66 = load double, double* %call48, align 8, !tbaa !6
  %67 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %68 = load i32, i32* %i, align 4, !tbaa !8
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %67, i32 %68)
  %69 = load double, double* %call49, align 8, !tbaa !6
  %mul50 = fmul double %66, %69
  %70 = load double*, double** %determ.addr, align 8, !tbaa !2
  %71 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom51 = sext i32 %71 to i64
  %arrayidx52 = getelementptr inbounds double, double* %70, i64 %idxprom51
  store double %mul50, double* %arrayidx52, align 8, !tbaa !6
  %72 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %73 = load i32, i32* %i, align 4, !tbaa !8
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %72, i32 %73)
  %74 = load double, double* %call53, align 8, !tbaa !6
  %cmp54 = fcmp ole double %74, 0.000000e+00
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %for.end
  %75 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #3
  %76 = bitcast [8 x double]* %pfz to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %76) #3
  %77 = bitcast [8 x double]* %pfy to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %77) #3
  %78 = bitcast [8 x double]* %pfx to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %78) #3
  %79 = bitcast [8 x double]* %z1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %79) #3
  %80 = bitcast [8 x double]* %y1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %80) #3
  %81 = bitcast [8 x double]* %x1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %81) #3
  br label %for.inc55

for.inc55:                                        ; preds = %if.end
  %82 = load i32, i32* %i, align 4, !tbaa !8
  %inc56 = add nsw i32 %82, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !63

for.end57:                                        ; preds = %for.cond.cleanup
  %83 = load double, double* %hgcoef.addr, align 8, !tbaa !6
  %cmp58 = fcmp ogt double %83, 0.000000e+00
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.end57
  %84 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %85 = load double*, double** %determ.addr, align 8, !tbaa !2
  %86 = load double*, double** %x8n, align 8, !tbaa !2
  %87 = load double*, double** %y8n, align 8, !tbaa !2
  %88 = load double*, double** %z8n, align 8, !tbaa !2
  %89 = load double*, double** %dvdx, align 8, !tbaa !2
  %90 = load double*, double** %dvdy, align 8, !tbaa !2
  %91 = load double*, double** %dvdz, align 8, !tbaa !2
  %92 = load double, double* %hgcoef.addr, align 8, !tbaa !6
  %93 = load i32, i32* %numElem, align 4, !tbaa !8
  %94 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call60 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %94)
  %95 = load i32, i32* %call60, align 4, !tbaa !8
  call void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* nonnull align 8 dereferenceable(1312) %84, double* %85, double* %86, double* %87, double* %88, double* %89, double* %90, double* %91, double %92, i32 %93, i32 %95)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.end57
  call void @_Z7ReleaseIdEvPPT_(double** %z8n)
  call void @_Z7ReleaseIdEvPPT_(double** %y8n)
  call void @_Z7ReleaseIdEvPPT_(double** %x8n)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdz)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdy)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdx)
  store i32 1, i32* %cleanup.dest.slot, align 4
  %96 = bitcast double** %z8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #3
  %97 = bitcast double** %y8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #3
  %98 = bitcast double** %x8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #3
  %99 = bitcast double** %dvdz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #3
  %100 = bitcast double** %dvdy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #3
  %101 = bitcast double** %dvdx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #3
  %102 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #3
  %103 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_Z7ReleaseIdEvPPT_(double** %ptr) #6 comdat {
entry:
  %ptr.addr = alloca double**, align 8
  store double** %ptr, double*** %ptr.addr, align 8, !tbaa !2
  %0 = load double**, double*** %ptr.addr, align 8, !tbaa !2
  %1 = load double*, double** %0, align 8, !tbaa !2
  %cmp = icmp ne double* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double**, double*** %ptr.addr, align 8, !tbaa !2
  %3 = load double*, double** %2, align 8, !tbaa !2
  %4 = bitcast double* %3 to i8*
  call void @free(i8* %4) #3
  %5 = load double**, double*** %ptr.addr, align 8, !tbaa !2
  store double* null, double** %5, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_p, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_q, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* %pfx, double* %pfy, double* %pfz, double* %x, double* %y, double* %z) #7 {
entry:
  %pfx.addr = alloca double*, align 8
  %pfy.addr = alloca double*, align 8
  %pfz.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store double* %pfx, double** %pfx.addr, align 8, !tbaa !2
  store double* %pfy, double** %pfy.addr, align 8, !tbaa !2
  store double* %pfz, double** %pfz.addr, align 8, !tbaa !2
  store double* %x, double** %x.addr, align 8, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !2
  store double* %z, double** %z.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %4 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !6
  %5 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  store double 0.000000e+00, double* %arrayidx2, align 8, !tbaa !6
  %7 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds double, double* %7, i64 %idxprom3
  store double 0.000000e+00, double* %arrayidx4, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond.cleanup
  %10 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 0
  %12 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 0
  %13 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %13, i64 1
  %14 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 1
  %16 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 2
  %17 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 2
  %18 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %18, i64 2
  %19 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 3
  %20 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 3
  %21 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %21, i64 3
  %22 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %22, i64 0
  %23 = load double, double* %arrayidx17, align 8, !tbaa !6
  %24 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %24, i64 0
  %25 = load double, double* %arrayidx18, align 8, !tbaa !6
  %26 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %26, i64 0
  %27 = load double, double* %arrayidx19, align 8, !tbaa !6
  %28 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 1
  %29 = load double, double* %arrayidx20, align 8, !tbaa !6
  %30 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %30, i64 1
  %31 = load double, double* %arrayidx21, align 8, !tbaa !6
  %32 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %32, i64 1
  %33 = load double, double* %arrayidx22, align 8, !tbaa !6
  %34 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %34, i64 2
  %35 = load double, double* %arrayidx23, align 8, !tbaa !6
  %36 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds double, double* %36, i64 2
  %37 = load double, double* %arrayidx24, align 8, !tbaa !6
  %38 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds double, double* %38, i64 2
  %39 = load double, double* %arrayidx25, align 8, !tbaa !6
  %40 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds double, double* %40, i64 3
  %41 = load double, double* %arrayidx26, align 8, !tbaa !6
  %42 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds double, double* %42, i64 3
  %43 = load double, double* %arrayidx27, align 8, !tbaa !6
  %44 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds double, double* %44, i64 3
  %45 = load double, double* %arrayidx28, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx5, double* %arrayidx6, double* %arrayidx7, double* %arrayidx8, double* %arrayidx9, double* %arrayidx10, double* %arrayidx11, double* %arrayidx12, double* %arrayidx13, double* %arrayidx14, double* %arrayidx15, double* %arrayidx16, double %23, double %25, double %27, double %29, double %31, double %33, double %35, double %37, double %39, double %41, double %43, double %45)
  %46 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds double, double* %46, i64 0
  %47 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds double, double* %47, i64 0
  %48 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds double, double* %48, i64 0
  %49 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds double, double* %49, i64 4
  %50 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds double, double* %50, i64 4
  %51 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds double, double* %51, i64 4
  %52 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds double, double* %52, i64 5
  %53 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds double, double* %53, i64 5
  %54 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds double, double* %54, i64 5
  %55 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds double, double* %55, i64 1
  %56 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds double, double* %56, i64 1
  %57 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds double, double* %57, i64 1
  %58 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds double, double* %58, i64 0
  %59 = load double, double* %arrayidx41, align 8, !tbaa !6
  %60 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds double, double* %60, i64 0
  %61 = load double, double* %arrayidx42, align 8, !tbaa !6
  %62 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds double, double* %62, i64 0
  %63 = load double, double* %arrayidx43, align 8, !tbaa !6
  %64 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds double, double* %64, i64 4
  %65 = load double, double* %arrayidx44, align 8, !tbaa !6
  %66 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds double, double* %66, i64 4
  %67 = load double, double* %arrayidx45, align 8, !tbaa !6
  %68 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds double, double* %68, i64 4
  %69 = load double, double* %arrayidx46, align 8, !tbaa !6
  %70 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds double, double* %70, i64 5
  %71 = load double, double* %arrayidx47, align 8, !tbaa !6
  %72 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds double, double* %72, i64 5
  %73 = load double, double* %arrayidx48, align 8, !tbaa !6
  %74 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds double, double* %74, i64 5
  %75 = load double, double* %arrayidx49, align 8, !tbaa !6
  %76 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds double, double* %76, i64 1
  %77 = load double, double* %arrayidx50, align 8, !tbaa !6
  %78 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds double, double* %78, i64 1
  %79 = load double, double* %arrayidx51, align 8, !tbaa !6
  %80 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds double, double* %80, i64 1
  %81 = load double, double* %arrayidx52, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx29, double* %arrayidx30, double* %arrayidx31, double* %arrayidx32, double* %arrayidx33, double* %arrayidx34, double* %arrayidx35, double* %arrayidx36, double* %arrayidx37, double* %arrayidx38, double* %arrayidx39, double* %arrayidx40, double %59, double %61, double %63, double %65, double %67, double %69, double %71, double %73, double %75, double %77, double %79, double %81)
  %82 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds double, double* %82, i64 1
  %83 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds double, double* %83, i64 1
  %84 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds double, double* %84, i64 1
  %85 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds double, double* %85, i64 5
  %86 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds double, double* %86, i64 5
  %87 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds double, double* %87, i64 5
  %88 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds double, double* %88, i64 6
  %89 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds double, double* %89, i64 6
  %90 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds double, double* %90, i64 6
  %91 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds double, double* %91, i64 2
  %92 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds double, double* %92, i64 2
  %93 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds double, double* %93, i64 2
  %94 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds double, double* %94, i64 1
  %95 = load double, double* %arrayidx65, align 8, !tbaa !6
  %96 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds double, double* %96, i64 1
  %97 = load double, double* %arrayidx66, align 8, !tbaa !6
  %98 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds double, double* %98, i64 1
  %99 = load double, double* %arrayidx67, align 8, !tbaa !6
  %100 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds double, double* %100, i64 5
  %101 = load double, double* %arrayidx68, align 8, !tbaa !6
  %102 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds double, double* %102, i64 5
  %103 = load double, double* %arrayidx69, align 8, !tbaa !6
  %104 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds double, double* %104, i64 5
  %105 = load double, double* %arrayidx70, align 8, !tbaa !6
  %106 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds double, double* %106, i64 6
  %107 = load double, double* %arrayidx71, align 8, !tbaa !6
  %108 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds double, double* %108, i64 6
  %109 = load double, double* %arrayidx72, align 8, !tbaa !6
  %110 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds double, double* %110, i64 6
  %111 = load double, double* %arrayidx73, align 8, !tbaa !6
  %112 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds double, double* %112, i64 2
  %113 = load double, double* %arrayidx74, align 8, !tbaa !6
  %114 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds double, double* %114, i64 2
  %115 = load double, double* %arrayidx75, align 8, !tbaa !6
  %116 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds double, double* %116, i64 2
  %117 = load double, double* %arrayidx76, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx53, double* %arrayidx54, double* %arrayidx55, double* %arrayidx56, double* %arrayidx57, double* %arrayidx58, double* %arrayidx59, double* %arrayidx60, double* %arrayidx61, double* %arrayidx62, double* %arrayidx63, double* %arrayidx64, double %95, double %97, double %99, double %101, double %103, double %105, double %107, double %109, double %111, double %113, double %115, double %117)
  %118 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds double, double* %118, i64 2
  %119 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds double, double* %119, i64 2
  %120 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds double, double* %120, i64 2
  %121 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds double, double* %121, i64 6
  %122 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds double, double* %122, i64 6
  %123 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds double, double* %123, i64 6
  %124 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds double, double* %124, i64 7
  %125 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds double, double* %125, i64 7
  %126 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds double, double* %126, i64 7
  %127 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx86 = getelementptr inbounds double, double* %127, i64 3
  %128 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds double, double* %128, i64 3
  %129 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds double, double* %129, i64 3
  %130 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds double, double* %130, i64 2
  %131 = load double, double* %arrayidx89, align 8, !tbaa !6
  %132 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds double, double* %132, i64 2
  %133 = load double, double* %arrayidx90, align 8, !tbaa !6
  %134 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds double, double* %134, i64 2
  %135 = load double, double* %arrayidx91, align 8, !tbaa !6
  %136 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx92 = getelementptr inbounds double, double* %136, i64 6
  %137 = load double, double* %arrayidx92, align 8, !tbaa !6
  %138 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds double, double* %138, i64 6
  %139 = load double, double* %arrayidx93, align 8, !tbaa !6
  %140 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds double, double* %140, i64 6
  %141 = load double, double* %arrayidx94, align 8, !tbaa !6
  %142 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds double, double* %142, i64 7
  %143 = load double, double* %arrayidx95, align 8, !tbaa !6
  %144 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds double, double* %144, i64 7
  %145 = load double, double* %arrayidx96, align 8, !tbaa !6
  %146 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx97 = getelementptr inbounds double, double* %146, i64 7
  %147 = load double, double* %arrayidx97, align 8, !tbaa !6
  %148 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds double, double* %148, i64 3
  %149 = load double, double* %arrayidx98, align 8, !tbaa !6
  %150 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds double, double* %150, i64 3
  %151 = load double, double* %arrayidx99, align 8, !tbaa !6
  %152 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds double, double* %152, i64 3
  %153 = load double, double* %arrayidx100, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx77, double* %arrayidx78, double* %arrayidx79, double* %arrayidx80, double* %arrayidx81, double* %arrayidx82, double* %arrayidx83, double* %arrayidx84, double* %arrayidx85, double* %arrayidx86, double* %arrayidx87, double* %arrayidx88, double %131, double %133, double %135, double %137, double %139, double %141, double %143, double %145, double %147, double %149, double %151, double %153)
  %154 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds double, double* %154, i64 3
  %155 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds double, double* %155, i64 3
  %156 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds double, double* %156, i64 3
  %157 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds double, double* %157, i64 7
  %158 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds double, double* %158, i64 7
  %159 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds double, double* %159, i64 7
  %160 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx107 = getelementptr inbounds double, double* %160, i64 4
  %161 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds double, double* %161, i64 4
  %162 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds double, double* %162, i64 4
  %163 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds double, double* %163, i64 0
  %164 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds double, double* %164, i64 0
  %165 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds double, double* %165, i64 0
  %166 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds double, double* %166, i64 3
  %167 = load double, double* %arrayidx113, align 8, !tbaa !6
  %168 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds double, double* %168, i64 3
  %169 = load double, double* %arrayidx114, align 8, !tbaa !6
  %170 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds double, double* %170, i64 3
  %171 = load double, double* %arrayidx115, align 8, !tbaa !6
  %172 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds double, double* %172, i64 7
  %173 = load double, double* %arrayidx116, align 8, !tbaa !6
  %174 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds double, double* %174, i64 7
  %175 = load double, double* %arrayidx117, align 8, !tbaa !6
  %176 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds double, double* %176, i64 7
  %177 = load double, double* %arrayidx118, align 8, !tbaa !6
  %178 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx119 = getelementptr inbounds double, double* %178, i64 4
  %179 = load double, double* %arrayidx119, align 8, !tbaa !6
  %180 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds double, double* %180, i64 4
  %181 = load double, double* %arrayidx120, align 8, !tbaa !6
  %182 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds double, double* %182, i64 4
  %183 = load double, double* %arrayidx121, align 8, !tbaa !6
  %184 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds double, double* %184, i64 0
  %185 = load double, double* %arrayidx122, align 8, !tbaa !6
  %186 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds double, double* %186, i64 0
  %187 = load double, double* %arrayidx123, align 8, !tbaa !6
  %188 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds double, double* %188, i64 0
  %189 = load double, double* %arrayidx124, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx101, double* %arrayidx102, double* %arrayidx103, double* %arrayidx104, double* %arrayidx105, double* %arrayidx106, double* %arrayidx107, double* %arrayidx108, double* %arrayidx109, double* %arrayidx110, double* %arrayidx111, double* %arrayidx112, double %167, double %169, double %171, double %173, double %175, double %177, double %179, double %181, double %183, double %185, double %187, double %189)
  %190 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds double, double* %190, i64 4
  %191 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds double, double* %191, i64 4
  %192 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds double, double* %192, i64 4
  %193 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds double, double* %193, i64 7
  %194 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds double, double* %194, i64 7
  %195 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds double, double* %195, i64 7
  %196 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds double, double* %196, i64 6
  %197 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds double, double* %197, i64 6
  %198 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx133 = getelementptr inbounds double, double* %198, i64 6
  %199 = load double*, double** %pfx.addr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds double, double* %199, i64 5
  %200 = load double*, double** %pfy.addr, align 8, !tbaa !2
  %arrayidx135 = getelementptr inbounds double, double* %200, i64 5
  %201 = load double*, double** %pfz.addr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds double, double* %201, i64 5
  %202 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds double, double* %202, i64 4
  %203 = load double, double* %arrayidx137, align 8, !tbaa !6
  %204 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx138 = getelementptr inbounds double, double* %204, i64 4
  %205 = load double, double* %arrayidx138, align 8, !tbaa !6
  %206 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx139 = getelementptr inbounds double, double* %206, i64 4
  %207 = load double, double* %arrayidx139, align 8, !tbaa !6
  %208 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds double, double* %208, i64 7
  %209 = load double, double* %arrayidx140, align 8, !tbaa !6
  %210 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx141 = getelementptr inbounds double, double* %210, i64 7
  %211 = load double, double* %arrayidx141, align 8, !tbaa !6
  %212 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds double, double* %212, i64 7
  %213 = load double, double* %arrayidx142, align 8, !tbaa !6
  %214 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx143 = getelementptr inbounds double, double* %214, i64 6
  %215 = load double, double* %arrayidx143, align 8, !tbaa !6
  %216 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds double, double* %216, i64 6
  %217 = load double, double* %arrayidx144, align 8, !tbaa !6
  %218 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx145 = getelementptr inbounds double, double* %218, i64 6
  %219 = load double, double* %arrayidx145, align 8, !tbaa !6
  %220 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx146 = getelementptr inbounds double, double* %220, i64 5
  %221 = load double, double* %arrayidx146, align 8, !tbaa !6
  %222 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx147 = getelementptr inbounds double, double* %222, i64 5
  %223 = load double, double* %arrayidx147, align 8, !tbaa !6
  %224 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx148 = getelementptr inbounds double, double* %224, i64 5
  %225 = load double, double* %arrayidx148, align 8, !tbaa !6
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx125, double* %arrayidx126, double* %arrayidx127, double* %arrayidx128, double* %arrayidx129, double* %arrayidx130, double* %arrayidx131, double* %arrayidx132, double* %arrayidx133, double* %arrayidx134, double* %arrayidx135, double* %arrayidx136, double %203, double %205, double %207, double %209, double %211, double %213, double %215, double %217, double %219, double %221, double %223, double %225)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %B, double %stress_xx, double %stress_yy, double %stress_zz, double* %fx, double* %fy, double* %fz) #4 {
entry:
  %B.addr = alloca [8 x double]*, align 8
  %stress_xx.addr = alloca double, align 8
  %stress_yy.addr = alloca double, align 8
  %stress_zz.addr = alloca double, align 8
  %fx.addr = alloca double*, align 8
  %fy.addr = alloca double*, align 8
  %fz.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store [8 x double]* %B, [8 x double]** %B.addr, align 8, !tbaa !2
  store double %stress_xx, double* %stress_xx.addr, align 8, !tbaa !6
  store double %stress_yy, double* %stress_yy.addr, align 8, !tbaa !6
  store double %stress_zz, double* %stress_zz.addr, align 8, !tbaa !6
  store double* %fx, double** %fx.addr, align 8, !tbaa !2
  store double* %fy, double** %fy.addr, align 8, !tbaa !2
  store double* %fz, double** %fz.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %stress_xx.addr, align 8, !tbaa !6
  %4 = load [8 x double]*, [8 x double]** %B.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %4, i64 0
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 %idxprom
  %6 = load double, double* %arrayidx1, align 8, !tbaa !6
  %mul = fmul double %3, %6
  %fneg = fneg double %mul
  %7 = load double*, double** %fx.addr, align 8, !tbaa !2
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 %idxprom2
  store double %fneg, double* %arrayidx3, align 8, !tbaa !6
  %9 = load double, double* %stress_yy.addr, align 8, !tbaa !6
  %10 = load [8 x double]*, [8 x double]** %B.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 1
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx4, i64 0, i64 %idxprom5
  %12 = load double, double* %arrayidx6, align 8, !tbaa !6
  %mul7 = fmul double %9, %12
  %fneg8 = fneg double %mul7
  %13 = load double*, double** %fy.addr, align 8, !tbaa !2
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds double, double* %13, i64 %idxprom9
  store double %fneg8, double* %arrayidx10, align 8, !tbaa !6
  %15 = load double, double* %stress_zz.addr, align 8, !tbaa !6
  %16 = load [8 x double]*, [8 x double]** %B.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 2
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx11, i64 0, i64 %idxprom12
  %18 = load double, double* %arrayidx13, align 8, !tbaa !6
  %mul14 = fmul double %15, %18
  %fneg15 = fneg double %mul14
  %19 = load double*, double** %fz.addr, align 8, !tbaa !2
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds double, double* %19, i64 %idxprom16
  store double %fneg15, double* %arrayidx17, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain13nodeElemCountEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %0 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !66
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %add = add nsw i32 %1, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %m_nodeElemStart2 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %3 = load i32*, i32** %m_nodeElemStart2, align 8, !tbaa !66
  %4 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %3, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4, !tbaa !8
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain18nodeElemCornerListEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  %0 = load i32*, i32** %m_nodeElemCornerList, align 8, !tbaa !67
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %1 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !66
  %2 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %0, i64 %idxprom2
  ret i32* %arrayidx3
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %normalX0, double* %normalY0, double* %normalZ0, double* %normalX1, double* %normalY1, double* %normalZ1, double* %normalX2, double* %normalY2, double* %normalZ2, double* %normalX3, double* %normalY3, double* %normalZ3, double %x0, double %y0, double %z0, double %x1, double %y1, double %z1, double %x2, double %y2, double %z2, double %x3, double %y3, double %z3) #4 {
entry:
  %normalX0.addr = alloca double*, align 8
  %normalY0.addr = alloca double*, align 8
  %normalZ0.addr = alloca double*, align 8
  %normalX1.addr = alloca double*, align 8
  %normalY1.addr = alloca double*, align 8
  %normalZ1.addr = alloca double*, align 8
  %normalX2.addr = alloca double*, align 8
  %normalY2.addr = alloca double*, align 8
  %normalZ2.addr = alloca double*, align 8
  %normalX3.addr = alloca double*, align 8
  %normalY3.addr = alloca double*, align 8
  %normalZ3.addr = alloca double*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %z0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %z1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %z2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %z3.addr = alloca double, align 8
  %bisectX0 = alloca double, align 8
  %bisectY0 = alloca double, align 8
  %bisectZ0 = alloca double, align 8
  %bisectX1 = alloca double, align 8
  %bisectY1 = alloca double, align 8
  %bisectZ1 = alloca double, align 8
  %areaX = alloca double, align 8
  %areaY = alloca double, align 8
  %areaZ = alloca double, align 8
  store double* %normalX0, double** %normalX0.addr, align 8, !tbaa !2
  store double* %normalY0, double** %normalY0.addr, align 8, !tbaa !2
  store double* %normalZ0, double** %normalZ0.addr, align 8, !tbaa !2
  store double* %normalX1, double** %normalX1.addr, align 8, !tbaa !2
  store double* %normalY1, double** %normalY1.addr, align 8, !tbaa !2
  store double* %normalZ1, double** %normalZ1.addr, align 8, !tbaa !2
  store double* %normalX2, double** %normalX2.addr, align 8, !tbaa !2
  store double* %normalY2, double** %normalY2.addr, align 8, !tbaa !2
  store double* %normalZ2, double** %normalZ2.addr, align 8, !tbaa !2
  store double* %normalX3, double** %normalX3.addr, align 8, !tbaa !2
  store double* %normalY3, double** %normalY3.addr, align 8, !tbaa !2
  store double* %normalZ3, double** %normalZ3.addr, align 8, !tbaa !2
  store double %x0, double* %x0.addr, align 8, !tbaa !6
  store double %y0, double* %y0.addr, align 8, !tbaa !6
  store double %z0, double* %z0.addr, align 8, !tbaa !6
  store double %x1, double* %x1.addr, align 8, !tbaa !6
  store double %y1, double* %y1.addr, align 8, !tbaa !6
  store double %z1, double* %z1.addr, align 8, !tbaa !6
  store double %x2, double* %x2.addr, align 8, !tbaa !6
  store double %y2, double* %y2.addr, align 8, !tbaa !6
  store double %z2, double* %z2.addr, align 8, !tbaa !6
  store double %x3, double* %x3.addr, align 8, !tbaa !6
  store double %y3, double* %y3.addr, align 8, !tbaa !6
  store double %z3, double* %z3.addr, align 8, !tbaa !6
  %0 = bitcast double* %bisectX0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load double, double* %x3.addr, align 8, !tbaa !6
  %2 = load double, double* %x2.addr, align 8, !tbaa !6
  %add = fadd double %1, %2
  %3 = load double, double* %x1.addr, align 8, !tbaa !6
  %sub = fsub double %add, %3
  %4 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub1 = fsub double %sub, %4
  %mul = fmul double 5.000000e-01, %sub1
  store double %mul, double* %bisectX0, align 8, !tbaa !6
  %5 = bitcast double* %bisectY0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load double, double* %y3.addr, align 8, !tbaa !6
  %7 = load double, double* %y2.addr, align 8, !tbaa !6
  %add2 = fadd double %6, %7
  %8 = load double, double* %y1.addr, align 8, !tbaa !6
  %sub3 = fsub double %add2, %8
  %9 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub4 = fsub double %sub3, %9
  %mul5 = fmul double 5.000000e-01, %sub4
  store double %mul5, double* %bisectY0, align 8, !tbaa !6
  %10 = bitcast double* %bisectZ0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load double, double* %z3.addr, align 8, !tbaa !6
  %12 = load double, double* %z2.addr, align 8, !tbaa !6
  %add6 = fadd double %11, %12
  %13 = load double, double* %z1.addr, align 8, !tbaa !6
  %sub7 = fsub double %add6, %13
  %14 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub8 = fsub double %sub7, %14
  %mul9 = fmul double 5.000000e-01, %sub8
  store double %mul9, double* %bisectZ0, align 8, !tbaa !6
  %15 = bitcast double* %bisectX1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = load double, double* %x2.addr, align 8, !tbaa !6
  %17 = load double, double* %x1.addr, align 8, !tbaa !6
  %add10 = fadd double %16, %17
  %18 = load double, double* %x3.addr, align 8, !tbaa !6
  %sub11 = fsub double %add10, %18
  %19 = load double, double* %x0.addr, align 8, !tbaa !6
  %sub12 = fsub double %sub11, %19
  %mul13 = fmul double 5.000000e-01, %sub12
  store double %mul13, double* %bisectX1, align 8, !tbaa !6
  %20 = bitcast double* %bisectY1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  %21 = load double, double* %y2.addr, align 8, !tbaa !6
  %22 = load double, double* %y1.addr, align 8, !tbaa !6
  %add14 = fadd double %21, %22
  %23 = load double, double* %y3.addr, align 8, !tbaa !6
  %sub15 = fsub double %add14, %23
  %24 = load double, double* %y0.addr, align 8, !tbaa !6
  %sub16 = fsub double %sub15, %24
  %mul17 = fmul double 5.000000e-01, %sub16
  store double %mul17, double* %bisectY1, align 8, !tbaa !6
  %25 = bitcast double* %bisectZ1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #3
  %26 = load double, double* %z2.addr, align 8, !tbaa !6
  %27 = load double, double* %z1.addr, align 8, !tbaa !6
  %add18 = fadd double %26, %27
  %28 = load double, double* %z3.addr, align 8, !tbaa !6
  %sub19 = fsub double %add18, %28
  %29 = load double, double* %z0.addr, align 8, !tbaa !6
  %sub20 = fsub double %sub19, %29
  %mul21 = fmul double 5.000000e-01, %sub20
  store double %mul21, double* %bisectZ1, align 8, !tbaa !6
  %30 = bitcast double* %areaX to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load double, double* %bisectY0, align 8, !tbaa !6
  %32 = load double, double* %bisectZ1, align 8, !tbaa !6
  %mul22 = fmul double %31, %32
  %33 = load double, double* %bisectZ0, align 8, !tbaa !6
  %34 = load double, double* %bisectY1, align 8, !tbaa !6
  %mul23 = fmul double %33, %34
  %sub24 = fsub double %mul22, %mul23
  %mul25 = fmul double 2.500000e-01, %sub24
  store double %mul25, double* %areaX, align 8, !tbaa !6
  %35 = bitcast double* %areaY to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35) #3
  %36 = load double, double* %bisectZ0, align 8, !tbaa !6
  %37 = load double, double* %bisectX1, align 8, !tbaa !6
  %mul26 = fmul double %36, %37
  %38 = load double, double* %bisectX0, align 8, !tbaa !6
  %39 = load double, double* %bisectZ1, align 8, !tbaa !6
  %mul27 = fmul double %38, %39
  %sub28 = fsub double %mul26, %mul27
  %mul29 = fmul double 2.500000e-01, %sub28
  store double %mul29, double* %areaY, align 8, !tbaa !6
  %40 = bitcast double* %areaZ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %40) #3
  %41 = load double, double* %bisectX0, align 8, !tbaa !6
  %42 = load double, double* %bisectY1, align 8, !tbaa !6
  %mul30 = fmul double %41, %42
  %43 = load double, double* %bisectY0, align 8, !tbaa !6
  %44 = load double, double* %bisectX1, align 8, !tbaa !6
  %mul31 = fmul double %43, %44
  %sub32 = fsub double %mul30, %mul31
  %mul33 = fmul double 2.500000e-01, %sub32
  store double %mul33, double* %areaZ, align 8, !tbaa !6
  %45 = load double, double* %areaX, align 8, !tbaa !6
  %46 = load double*, double** %normalX0.addr, align 8, !tbaa !2
  %47 = load double, double* %46, align 8, !tbaa !6
  %add34 = fadd double %47, %45
  store double %add34, double* %46, align 8, !tbaa !6
  %48 = load double, double* %areaX, align 8, !tbaa !6
  %49 = load double*, double** %normalX1.addr, align 8, !tbaa !2
  %50 = load double, double* %49, align 8, !tbaa !6
  %add35 = fadd double %50, %48
  store double %add35, double* %49, align 8, !tbaa !6
  %51 = load double, double* %areaX, align 8, !tbaa !6
  %52 = load double*, double** %normalX2.addr, align 8, !tbaa !2
  %53 = load double, double* %52, align 8, !tbaa !6
  %add36 = fadd double %53, %51
  store double %add36, double* %52, align 8, !tbaa !6
  %54 = load double, double* %areaX, align 8, !tbaa !6
  %55 = load double*, double** %normalX3.addr, align 8, !tbaa !2
  %56 = load double, double* %55, align 8, !tbaa !6
  %add37 = fadd double %56, %54
  store double %add37, double* %55, align 8, !tbaa !6
  %57 = load double, double* %areaY, align 8, !tbaa !6
  %58 = load double*, double** %normalY0.addr, align 8, !tbaa !2
  %59 = load double, double* %58, align 8, !tbaa !6
  %add38 = fadd double %59, %57
  store double %add38, double* %58, align 8, !tbaa !6
  %60 = load double, double* %areaY, align 8, !tbaa !6
  %61 = load double*, double** %normalY1.addr, align 8, !tbaa !2
  %62 = load double, double* %61, align 8, !tbaa !6
  %add39 = fadd double %62, %60
  store double %add39, double* %61, align 8, !tbaa !6
  %63 = load double, double* %areaY, align 8, !tbaa !6
  %64 = load double*, double** %normalY2.addr, align 8, !tbaa !2
  %65 = load double, double* %64, align 8, !tbaa !6
  %add40 = fadd double %65, %63
  store double %add40, double* %64, align 8, !tbaa !6
  %66 = load double, double* %areaY, align 8, !tbaa !6
  %67 = load double*, double** %normalY3.addr, align 8, !tbaa !2
  %68 = load double, double* %67, align 8, !tbaa !6
  %add41 = fadd double %68, %66
  store double %add41, double* %67, align 8, !tbaa !6
  %69 = load double, double* %areaZ, align 8, !tbaa !6
  %70 = load double*, double** %normalZ0.addr, align 8, !tbaa !2
  %71 = load double, double* %70, align 8, !tbaa !6
  %add42 = fadd double %71, %69
  store double %add42, double* %70, align 8, !tbaa !6
  %72 = load double, double* %areaZ, align 8, !tbaa !6
  %73 = load double*, double** %normalZ1.addr, align 8, !tbaa !2
  %74 = load double, double* %73, align 8, !tbaa !6
  %add43 = fadd double %74, %72
  store double %add43, double* %73, align 8, !tbaa !6
  %75 = load double, double* %areaZ, align 8, !tbaa !6
  %76 = load double*, double** %normalZ2.addr, align 8, !tbaa !2
  %77 = load double, double* %76, align 8, !tbaa !6
  %add44 = fadd double %77, %75
  store double %add44, double* %76, align 8, !tbaa !6
  %78 = load double, double* %areaZ, align 8, !tbaa !6
  %79 = load double*, double** %normalZ3.addr, align 8, !tbaa !2
  %80 = load double, double* %79, align 8, !tbaa !6
  %add45 = fadd double %80, %78
  store double %add45, double* %79, align 8, !tbaa !6
  %81 = bitcast double* %areaZ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #3
  %82 = bitcast double* %areaY to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #3
  %83 = bitcast double* %areaX to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #3
  %84 = bitcast double* %bisectZ1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #3
  %85 = bitcast double* %bisectY1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %85) #3
  %86 = bitcast double* %bisectX1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #3
  %87 = bitcast double* %bisectZ0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #3
  %88 = bitcast double* %bisectY0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %88) #3
  %89 = bitcast double* %bisectX0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* %dvdx, double* %dvdy, double* %dvdz, double* %x, double* %y, double* %z) #7 {
entry:
  %dvdx.addr = alloca double*, align 8
  %dvdy.addr = alloca double*, align 8
  %dvdz.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  store double* %dvdx, double** %dvdx.addr, align 8, !tbaa !2
  store double* %dvdy, double** %dvdy.addr, align 8, !tbaa !2
  store double* %dvdz, double** %dvdz.addr, align 8, !tbaa !2
  store double* %x, double** %x.addr, align 8, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !2
  store double* %z, double** %z.addr, align 8, !tbaa !2
  %0 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8, !tbaa !6
  %2 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2
  %3 = load double, double* %arrayidx1, align 8, !tbaa !6
  %4 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 3
  %5 = load double, double* %arrayidx2, align 8, !tbaa !6
  %6 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 4
  %7 = load double, double* %arrayidx3, align 8, !tbaa !6
  %8 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 5
  %9 = load double, double* %arrayidx4, align 8, !tbaa !6
  %10 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 7
  %11 = load double, double* %arrayidx5, align 8, !tbaa !6
  %12 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx6, align 8, !tbaa !6
  %14 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 2
  %15 = load double, double* %arrayidx7, align 8, !tbaa !6
  %16 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 3
  %17 = load double, double* %arrayidx8, align 8, !tbaa !6
  %18 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 4
  %19 = load double, double* %arrayidx9, align 8, !tbaa !6
  %20 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds double, double* %20, i64 5
  %21 = load double, double* %arrayidx10, align 8, !tbaa !6
  %22 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %22, i64 7
  %23 = load double, double* %arrayidx11, align 8, !tbaa !6
  %24 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds double, double* %24, i64 1
  %25 = load double, double* %arrayidx12, align 8, !tbaa !6
  %26 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds double, double* %26, i64 2
  %27 = load double, double* %arrayidx13, align 8, !tbaa !6
  %28 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds double, double* %28, i64 3
  %29 = load double, double* %arrayidx14, align 8, !tbaa !6
  %30 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds double, double* %30, i64 4
  %31 = load double, double* %arrayidx15, align 8, !tbaa !6
  %32 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds double, double* %32, i64 5
  %33 = load double, double* %arrayidx16, align 8, !tbaa !6
  %34 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %34, i64 7
  %35 = load double, double* %arrayidx17, align 8, !tbaa !6
  %36 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds double, double* %36, i64 0
  %37 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds double, double* %37, i64 0
  %38 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds double, double* %38, i64 0
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %1, double %3, double %5, double %7, double %9, double %11, double %13, double %15, double %17, double %19, double %21, double %23, double %25, double %27, double %29, double %31, double %33, double %35, double* %arrayidx18, double* %arrayidx19, double* %arrayidx20)
  %39 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds double, double* %39, i64 0
  %40 = load double, double* %arrayidx21, align 8, !tbaa !6
  %41 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds double, double* %41, i64 1
  %42 = load double, double* %arrayidx22, align 8, !tbaa !6
  %43 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %43, i64 2
  %44 = load double, double* %arrayidx23, align 8, !tbaa !6
  %45 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds double, double* %45, i64 7
  %46 = load double, double* %arrayidx24, align 8, !tbaa !6
  %47 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds double, double* %47, i64 4
  %48 = load double, double* %arrayidx25, align 8, !tbaa !6
  %49 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds double, double* %49, i64 6
  %50 = load double, double* %arrayidx26, align 8, !tbaa !6
  %51 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds double, double* %51, i64 0
  %52 = load double, double* %arrayidx27, align 8, !tbaa !6
  %53 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds double, double* %53, i64 1
  %54 = load double, double* %arrayidx28, align 8, !tbaa !6
  %55 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds double, double* %55, i64 2
  %56 = load double, double* %arrayidx29, align 8, !tbaa !6
  %57 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds double, double* %57, i64 7
  %58 = load double, double* %arrayidx30, align 8, !tbaa !6
  %59 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds double, double* %59, i64 4
  %60 = load double, double* %arrayidx31, align 8, !tbaa !6
  %61 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds double, double* %61, i64 6
  %62 = load double, double* %arrayidx32, align 8, !tbaa !6
  %63 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds double, double* %63, i64 0
  %64 = load double, double* %arrayidx33, align 8, !tbaa !6
  %65 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds double, double* %65, i64 1
  %66 = load double, double* %arrayidx34, align 8, !tbaa !6
  %67 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds double, double* %67, i64 2
  %68 = load double, double* %arrayidx35, align 8, !tbaa !6
  %69 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds double, double* %69, i64 7
  %70 = load double, double* %arrayidx36, align 8, !tbaa !6
  %71 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds double, double* %71, i64 4
  %72 = load double, double* %arrayidx37, align 8, !tbaa !6
  %73 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds double, double* %73, i64 6
  %74 = load double, double* %arrayidx38, align 8, !tbaa !6
  %75 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds double, double* %75, i64 3
  %76 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds double, double* %76, i64 3
  %77 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds double, double* %77, i64 3
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %40, double %42, double %44, double %46, double %48, double %50, double %52, double %54, double %56, double %58, double %60, double %62, double %64, double %66, double %68, double %70, double %72, double %74, double* %arrayidx39, double* %arrayidx40, double* %arrayidx41)
  %78 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds double, double* %78, i64 3
  %79 = load double, double* %arrayidx42, align 8, !tbaa !6
  %80 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds double, double* %80, i64 0
  %81 = load double, double* %arrayidx43, align 8, !tbaa !6
  %82 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds double, double* %82, i64 1
  %83 = load double, double* %arrayidx44, align 8, !tbaa !6
  %84 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds double, double* %84, i64 6
  %85 = load double, double* %arrayidx45, align 8, !tbaa !6
  %86 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds double, double* %86, i64 7
  %87 = load double, double* %arrayidx46, align 8, !tbaa !6
  %88 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds double, double* %88, i64 5
  %89 = load double, double* %arrayidx47, align 8, !tbaa !6
  %90 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds double, double* %90, i64 3
  %91 = load double, double* %arrayidx48, align 8, !tbaa !6
  %92 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds double, double* %92, i64 0
  %93 = load double, double* %arrayidx49, align 8, !tbaa !6
  %94 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds double, double* %94, i64 1
  %95 = load double, double* %arrayidx50, align 8, !tbaa !6
  %96 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds double, double* %96, i64 6
  %97 = load double, double* %arrayidx51, align 8, !tbaa !6
  %98 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds double, double* %98, i64 7
  %99 = load double, double* %arrayidx52, align 8, !tbaa !6
  %100 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds double, double* %100, i64 5
  %101 = load double, double* %arrayidx53, align 8, !tbaa !6
  %102 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds double, double* %102, i64 3
  %103 = load double, double* %arrayidx54, align 8, !tbaa !6
  %104 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds double, double* %104, i64 0
  %105 = load double, double* %arrayidx55, align 8, !tbaa !6
  %106 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds double, double* %106, i64 1
  %107 = load double, double* %arrayidx56, align 8, !tbaa !6
  %108 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds double, double* %108, i64 6
  %109 = load double, double* %arrayidx57, align 8, !tbaa !6
  %110 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds double, double* %110, i64 7
  %111 = load double, double* %arrayidx58, align 8, !tbaa !6
  %112 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds double, double* %112, i64 5
  %113 = load double, double* %arrayidx59, align 8, !tbaa !6
  %114 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds double, double* %114, i64 2
  %115 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds double, double* %115, i64 2
  %116 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds double, double* %116, i64 2
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %79, double %81, double %83, double %85, double %87, double %89, double %91, double %93, double %95, double %97, double %99, double %101, double %103, double %105, double %107, double %109, double %111, double %113, double* %arrayidx60, double* %arrayidx61, double* %arrayidx62)
  %117 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds double, double* %117, i64 2
  %118 = load double, double* %arrayidx63, align 8, !tbaa !6
  %119 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds double, double* %119, i64 3
  %120 = load double, double* %arrayidx64, align 8, !tbaa !6
  %121 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds double, double* %121, i64 0
  %122 = load double, double* %arrayidx65, align 8, !tbaa !6
  %123 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds double, double* %123, i64 5
  %124 = load double, double* %arrayidx66, align 8, !tbaa !6
  %125 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds double, double* %125, i64 6
  %126 = load double, double* %arrayidx67, align 8, !tbaa !6
  %127 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds double, double* %127, i64 4
  %128 = load double, double* %arrayidx68, align 8, !tbaa !6
  %129 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds double, double* %129, i64 2
  %130 = load double, double* %arrayidx69, align 8, !tbaa !6
  %131 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds double, double* %131, i64 3
  %132 = load double, double* %arrayidx70, align 8, !tbaa !6
  %133 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds double, double* %133, i64 0
  %134 = load double, double* %arrayidx71, align 8, !tbaa !6
  %135 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds double, double* %135, i64 5
  %136 = load double, double* %arrayidx72, align 8, !tbaa !6
  %137 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds double, double* %137, i64 6
  %138 = load double, double* %arrayidx73, align 8, !tbaa !6
  %139 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds double, double* %139, i64 4
  %140 = load double, double* %arrayidx74, align 8, !tbaa !6
  %141 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds double, double* %141, i64 2
  %142 = load double, double* %arrayidx75, align 8, !tbaa !6
  %143 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds double, double* %143, i64 3
  %144 = load double, double* %arrayidx76, align 8, !tbaa !6
  %145 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds double, double* %145, i64 0
  %146 = load double, double* %arrayidx77, align 8, !tbaa !6
  %147 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds double, double* %147, i64 5
  %148 = load double, double* %arrayidx78, align 8, !tbaa !6
  %149 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds double, double* %149, i64 6
  %150 = load double, double* %arrayidx79, align 8, !tbaa !6
  %151 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds double, double* %151, i64 4
  %152 = load double, double* %arrayidx80, align 8, !tbaa !6
  %153 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds double, double* %153, i64 1
  %154 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds double, double* %154, i64 1
  %155 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds double, double* %155, i64 1
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %118, double %120, double %122, double %124, double %126, double %128, double %130, double %132, double %134, double %136, double %138, double %140, double %142, double %144, double %146, double %148, double %150, double %152, double* %arrayidx81, double* %arrayidx82, double* %arrayidx83)
  %156 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds double, double* %156, i64 7
  %157 = load double, double* %arrayidx84, align 8, !tbaa !6
  %158 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds double, double* %158, i64 6
  %159 = load double, double* %arrayidx85, align 8, !tbaa !6
  %160 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx86 = getelementptr inbounds double, double* %160, i64 5
  %161 = load double, double* %arrayidx86, align 8, !tbaa !6
  %162 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds double, double* %162, i64 0
  %163 = load double, double* %arrayidx87, align 8, !tbaa !6
  %164 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds double, double* %164, i64 3
  %165 = load double, double* %arrayidx88, align 8, !tbaa !6
  %166 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds double, double* %166, i64 1
  %167 = load double, double* %arrayidx89, align 8, !tbaa !6
  %168 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds double, double* %168, i64 7
  %169 = load double, double* %arrayidx90, align 8, !tbaa !6
  %170 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds double, double* %170, i64 6
  %171 = load double, double* %arrayidx91, align 8, !tbaa !6
  %172 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx92 = getelementptr inbounds double, double* %172, i64 5
  %173 = load double, double* %arrayidx92, align 8, !tbaa !6
  %174 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds double, double* %174, i64 0
  %175 = load double, double* %arrayidx93, align 8, !tbaa !6
  %176 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds double, double* %176, i64 3
  %177 = load double, double* %arrayidx94, align 8, !tbaa !6
  %178 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds double, double* %178, i64 1
  %179 = load double, double* %arrayidx95, align 8, !tbaa !6
  %180 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds double, double* %180, i64 7
  %181 = load double, double* %arrayidx96, align 8, !tbaa !6
  %182 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx97 = getelementptr inbounds double, double* %182, i64 6
  %183 = load double, double* %arrayidx97, align 8, !tbaa !6
  %184 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds double, double* %184, i64 5
  %185 = load double, double* %arrayidx98, align 8, !tbaa !6
  %186 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds double, double* %186, i64 0
  %187 = load double, double* %arrayidx99, align 8, !tbaa !6
  %188 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds double, double* %188, i64 3
  %189 = load double, double* %arrayidx100, align 8, !tbaa !6
  %190 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds double, double* %190, i64 1
  %191 = load double, double* %arrayidx101, align 8, !tbaa !6
  %192 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds double, double* %192, i64 4
  %193 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds double, double* %193, i64 4
  %194 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds double, double* %194, i64 4
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %157, double %159, double %161, double %163, double %165, double %167, double %169, double %171, double %173, double %175, double %177, double %179, double %181, double %183, double %185, double %187, double %189, double %191, double* %arrayidx102, double* %arrayidx103, double* %arrayidx104)
  %195 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds double, double* %195, i64 4
  %196 = load double, double* %arrayidx105, align 8, !tbaa !6
  %197 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds double, double* %197, i64 7
  %198 = load double, double* %arrayidx106, align 8, !tbaa !6
  %199 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx107 = getelementptr inbounds double, double* %199, i64 6
  %200 = load double, double* %arrayidx107, align 8, !tbaa !6
  %201 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds double, double* %201, i64 1
  %202 = load double, double* %arrayidx108, align 8, !tbaa !6
  %203 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds double, double* %203, i64 0
  %204 = load double, double* %arrayidx109, align 8, !tbaa !6
  %205 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds double, double* %205, i64 2
  %206 = load double, double* %arrayidx110, align 8, !tbaa !6
  %207 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds double, double* %207, i64 4
  %208 = load double, double* %arrayidx111, align 8, !tbaa !6
  %209 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds double, double* %209, i64 7
  %210 = load double, double* %arrayidx112, align 8, !tbaa !6
  %211 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds double, double* %211, i64 6
  %212 = load double, double* %arrayidx113, align 8, !tbaa !6
  %213 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds double, double* %213, i64 1
  %214 = load double, double* %arrayidx114, align 8, !tbaa !6
  %215 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds double, double* %215, i64 0
  %216 = load double, double* %arrayidx115, align 8, !tbaa !6
  %217 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds double, double* %217, i64 2
  %218 = load double, double* %arrayidx116, align 8, !tbaa !6
  %219 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds double, double* %219, i64 4
  %220 = load double, double* %arrayidx117, align 8, !tbaa !6
  %221 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds double, double* %221, i64 7
  %222 = load double, double* %arrayidx118, align 8, !tbaa !6
  %223 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx119 = getelementptr inbounds double, double* %223, i64 6
  %224 = load double, double* %arrayidx119, align 8, !tbaa !6
  %225 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds double, double* %225, i64 1
  %226 = load double, double* %arrayidx120, align 8, !tbaa !6
  %227 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds double, double* %227, i64 0
  %228 = load double, double* %arrayidx121, align 8, !tbaa !6
  %229 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds double, double* %229, i64 2
  %230 = load double, double* %arrayidx122, align 8, !tbaa !6
  %231 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds double, double* %231, i64 5
  %232 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds double, double* %232, i64 5
  %233 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds double, double* %233, i64 5
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %196, double %198, double %200, double %202, double %204, double %206, double %208, double %210, double %212, double %214, double %216, double %218, double %220, double %222, double %224, double %226, double %228, double %230, double* %arrayidx123, double* %arrayidx124, double* %arrayidx125)
  %234 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds double, double* %234, i64 5
  %235 = load double, double* %arrayidx126, align 8, !tbaa !6
  %236 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds double, double* %236, i64 4
  %237 = load double, double* %arrayidx127, align 8, !tbaa !6
  %238 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds double, double* %238, i64 7
  %239 = load double, double* %arrayidx128, align 8, !tbaa !6
  %240 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds double, double* %240, i64 2
  %241 = load double, double* %arrayidx129, align 8, !tbaa !6
  %242 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds double, double* %242, i64 1
  %243 = load double, double* %arrayidx130, align 8, !tbaa !6
  %244 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds double, double* %244, i64 3
  %245 = load double, double* %arrayidx131, align 8, !tbaa !6
  %246 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds double, double* %246, i64 5
  %247 = load double, double* %arrayidx132, align 8, !tbaa !6
  %248 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx133 = getelementptr inbounds double, double* %248, i64 4
  %249 = load double, double* %arrayidx133, align 8, !tbaa !6
  %250 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds double, double* %250, i64 7
  %251 = load double, double* %arrayidx134, align 8, !tbaa !6
  %252 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx135 = getelementptr inbounds double, double* %252, i64 2
  %253 = load double, double* %arrayidx135, align 8, !tbaa !6
  %254 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds double, double* %254, i64 1
  %255 = load double, double* %arrayidx136, align 8, !tbaa !6
  %256 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds double, double* %256, i64 3
  %257 = load double, double* %arrayidx137, align 8, !tbaa !6
  %258 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx138 = getelementptr inbounds double, double* %258, i64 5
  %259 = load double, double* %arrayidx138, align 8, !tbaa !6
  %260 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx139 = getelementptr inbounds double, double* %260, i64 4
  %261 = load double, double* %arrayidx139, align 8, !tbaa !6
  %262 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds double, double* %262, i64 7
  %263 = load double, double* %arrayidx140, align 8, !tbaa !6
  %264 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx141 = getelementptr inbounds double, double* %264, i64 2
  %265 = load double, double* %arrayidx141, align 8, !tbaa !6
  %266 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds double, double* %266, i64 1
  %267 = load double, double* %arrayidx142, align 8, !tbaa !6
  %268 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx143 = getelementptr inbounds double, double* %268, i64 3
  %269 = load double, double* %arrayidx143, align 8, !tbaa !6
  %270 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds double, double* %270, i64 6
  %271 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx145 = getelementptr inbounds double, double* %271, i64 6
  %272 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx146 = getelementptr inbounds double, double* %272, i64 6
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %235, double %237, double %239, double %241, double %243, double %245, double %247, double %249, double %251, double %253, double %255, double %257, double %259, double %261, double %263, double %265, double %267, double %269, double* %arrayidx144, double* %arrayidx145, double* %arrayidx146)
  %273 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx147 = getelementptr inbounds double, double* %273, i64 6
  %274 = load double, double* %arrayidx147, align 8, !tbaa !6
  %275 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx148 = getelementptr inbounds double, double* %275, i64 5
  %276 = load double, double* %arrayidx148, align 8, !tbaa !6
  %277 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx149 = getelementptr inbounds double, double* %277, i64 4
  %278 = load double, double* %arrayidx149, align 8, !tbaa !6
  %279 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds double, double* %279, i64 3
  %280 = load double, double* %arrayidx150, align 8, !tbaa !6
  %281 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx151 = getelementptr inbounds double, double* %281, i64 2
  %282 = load double, double* %arrayidx151, align 8, !tbaa !6
  %283 = load double*, double** %x.addr, align 8, !tbaa !2
  %arrayidx152 = getelementptr inbounds double, double* %283, i64 0
  %284 = load double, double* %arrayidx152, align 8, !tbaa !6
  %285 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx153 = getelementptr inbounds double, double* %285, i64 6
  %286 = load double, double* %arrayidx153, align 8, !tbaa !6
  %287 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds double, double* %287, i64 5
  %288 = load double, double* %arrayidx154, align 8, !tbaa !6
  %289 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx155 = getelementptr inbounds double, double* %289, i64 4
  %290 = load double, double* %arrayidx155, align 8, !tbaa !6
  %291 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds double, double* %291, i64 3
  %292 = load double, double* %arrayidx156, align 8, !tbaa !6
  %293 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx157 = getelementptr inbounds double, double* %293, i64 2
  %294 = load double, double* %arrayidx157, align 8, !tbaa !6
  %295 = load double*, double** %y.addr, align 8, !tbaa !2
  %arrayidx158 = getelementptr inbounds double, double* %295, i64 0
  %296 = load double, double* %arrayidx158, align 8, !tbaa !6
  %297 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds double, double* %297, i64 6
  %298 = load double, double* %arrayidx159, align 8, !tbaa !6
  %299 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx160 = getelementptr inbounds double, double* %299, i64 5
  %300 = load double, double* %arrayidx160, align 8, !tbaa !6
  %301 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds double, double* %301, i64 4
  %302 = load double, double* %arrayidx161, align 8, !tbaa !6
  %303 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx162 = getelementptr inbounds double, double* %303, i64 3
  %304 = load double, double* %arrayidx162, align 8, !tbaa !6
  %305 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds double, double* %305, i64 2
  %306 = load double, double* %arrayidx163, align 8, !tbaa !6
  %307 = load double*, double** %z.addr, align 8, !tbaa !2
  %arrayidx164 = getelementptr inbounds double, double* %307, i64 0
  %308 = load double, double* %arrayidx164, align 8, !tbaa !6
  %309 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %arrayidx165 = getelementptr inbounds double, double* %309, i64 7
  %310 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %arrayidx166 = getelementptr inbounds double, double* %310, i64 7
  %311 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %arrayidx167 = getelementptr inbounds double, double* %311, i64 7
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %274, double %276, double %278, double %280, double %282, double %284, double %286, double %288, double %290, double %292, double %294, double %296, double %298, double %300, double %302, double %304, double %306, double %308, double* %arrayidx165, double* %arrayidx166, double* %arrayidx167)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %determ, double* %x8n, double* %y8n, double* %z8n, double* %dvdx, double* %dvdy, double* %dvdz, double %hourg, i32 %numElem, i32 %numNode) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %determ.addr = alloca double*, align 8
  %x8n.addr = alloca double*, align 8
  %y8n.addr = alloca double*, align 8
  %z8n.addr = alloca double*, align 8
  %dvdx.addr = alloca double*, align 8
  %dvdy.addr = alloca double*, align 8
  %dvdz.addr = alloca double*, align 8
  %hourg.addr = alloca double, align 8
  %numElem.addr = alloca i32, align 4
  %numNode.addr = alloca i32, align 4
  %numthreads = alloca i32, align 4
  %numElem8 = alloca i32, align 4
  %fx_elem = alloca double*, align 8
  %fy_elem = alloca double*, align 8
  %fz_elem = alloca double*, align 8
  %gamma = alloca [4 x [8 x double]], align 16
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fx_local = alloca double*, align 8
  %fy_local = alloca double*, align 8
  %fz_local = alloca double*, align 8
  %hgfx = alloca [8 x double], align 16
  %hgfy = alloca [8 x double], align 16
  %hgfz = alloca [8 x double], align 16
  %coefficient = alloca double, align 8
  %hourgam = alloca [8 x [4 x double]], align 16
  %xd1 = alloca [8 x double], align 16
  %yd1 = alloca [8 x double], align 16
  %zd1 = alloca [8 x double], align 16
  %elemToNode = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %volinv = alloca double, align 8
  %ss1 = alloca double, align 8
  %mass1 = alloca double, align 8
  %volume13 = alloca double, align 8
  %i1 = alloca i32, align 4
  %hourmodx = alloca double, align 8
  %hourmody = alloca double, align 8
  %hourmodz = alloca double, align 8
  %n0si2 = alloca i32, align 4
  %n1si2 = alloca i32, align 4
  %n2si2 = alloca i32, align 4
  %n3si2 = alloca i32, align 4
  %n4si2 = alloca i32, align 4
  %n5si2 = alloca i32, align 4
  %n6si2 = alloca i32, align 4
  %n7si2 = alloca i32, align 4
  %gnode = alloca i32, align 4
  %count = alloca i32, align 4
  %cornerList = alloca i32*, align 8
  %fx_tmp = alloca double, align 8
  %fy_tmp = alloca double, align 8
  %fz_tmp = alloca double, align 8
  %i = alloca i32, align 4
  %ielem = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %determ, double** %determ.addr, align 8, !tbaa !2
  store double* %x8n, double** %x8n.addr, align 8, !tbaa !2
  store double* %y8n, double** %y8n.addr, align 8, !tbaa !2
  store double* %z8n, double** %z8n.addr, align 8, !tbaa !2
  store double* %dvdx, double** %dvdx.addr, align 8, !tbaa !2
  store double* %dvdy, double** %dvdy.addr, align 8, !tbaa !2
  store double* %dvdz, double** %dvdz.addr, align 8, !tbaa !2
  store double %hourg, double* %hourg.addr, align 8, !tbaa !6
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !8
  %0 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 1, i32* %numthreads, align 4, !tbaa !8
  %1 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 8
  store i32 %mul, i32* %numElem8, align 4, !tbaa !8
  %3 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv = sext i32 %7 to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call, double** %fx_elem, align 8, !tbaa !2
  %8 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv1 = sext i32 %8 to i64
  %call2 = call double* @_Z8AllocateIdEPT_m(i64 %conv1)
  store double* %call2, double** %fy_elem, align 8, !tbaa !2
  %9 = load i32, i32* %numElem8, align 4, !tbaa !8
  %conv3 = sext i32 %9 to i64
  %call4 = call double* @_Z8AllocateIdEPT_m(i64 %conv3)
  store double* %call4, double** %fz_elem, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = bitcast [4 x [8 x double]]* %gamma to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %10) #3
  %arrayidx = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx5, align 16, !tbaa !6
  %arrayidx6 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx6, i64 0, i64 1
  store double 1.000000e+00, double* %arrayidx7, align 8, !tbaa !6
  %arrayidx8 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx8, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx9, align 16, !tbaa !6
  %arrayidx10 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx10, i64 0, i64 3
  store double -1.000000e+00, double* %arrayidx11, align 8, !tbaa !6
  %arrayidx12 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx12, i64 0, i64 4
  store double -1.000000e+00, double* %arrayidx13, align 16, !tbaa !6
  %arrayidx14 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx15, align 8, !tbaa !6
  %arrayidx16 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx16, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx17, align 16, !tbaa !6
  %arrayidx18 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx19 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx18, i64 0, i64 7
  store double 1.000000e+00, double* %arrayidx19, align 8, !tbaa !6
  %arrayidx20 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx20, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx21, align 16, !tbaa !6
  %arrayidx22 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx23 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx22, i64 0, i64 1
  store double -1.000000e+00, double* %arrayidx23, align 8, !tbaa !6
  %arrayidx24 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx24, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx25, align 16, !tbaa !6
  %arrayidx26 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx27 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx26, i64 0, i64 3
  store double 1.000000e+00, double* %arrayidx27, align 8, !tbaa !6
  %arrayidx28 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx29 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx28, i64 0, i64 4
  store double -1.000000e+00, double* %arrayidx29, align 16, !tbaa !6
  %arrayidx30 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx30, i64 0, i64 5
  store double 1.000000e+00, double* %arrayidx31, align 8, !tbaa !6
  %arrayidx32 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx32, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx33, align 16, !tbaa !6
  %arrayidx34 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx34, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx35, align 8, !tbaa !6
  %arrayidx36 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx36, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx37, align 16, !tbaa !6
  %arrayidx38 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx39 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx38, i64 0, i64 1
  store double -1.000000e+00, double* %arrayidx39, align 8, !tbaa !6
  %arrayidx40 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx40, i64 0, i64 2
  store double 1.000000e+00, double* %arrayidx41, align 16, !tbaa !6
  %arrayidx42 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx42, i64 0, i64 3
  store double -1.000000e+00, double* %arrayidx43, align 8, !tbaa !6
  %arrayidx44 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx44, i64 0, i64 4
  store double 1.000000e+00, double* %arrayidx45, align 16, !tbaa !6
  %arrayidx46 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx47 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx46, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx47, align 8, !tbaa !6
  %arrayidx48 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx48, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx49, align 16, !tbaa !6
  %arrayidx50 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx51 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx50, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx51, align 8, !tbaa !6
  %arrayidx52 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx53 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx52, i64 0, i64 0
  store double -1.000000e+00, double* %arrayidx53, align 16, !tbaa !6
  %arrayidx54 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx55 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx54, i64 0, i64 1
  store double 1.000000e+00, double* %arrayidx55, align 8, !tbaa !6
  %arrayidx56 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx57 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx56, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx57, align 16, !tbaa !6
  %arrayidx58 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx59 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx58, i64 0, i64 3
  store double 1.000000e+00, double* %arrayidx59, align 8, !tbaa !6
  %arrayidx60 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx61 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx60, i64 0, i64 4
  store double 1.000000e+00, double* %arrayidx61, align 16, !tbaa !6
  %arrayidx62 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx63 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx62, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx63, align 8, !tbaa !6
  %arrayidx64 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx65 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx64, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx65, align 16, !tbaa !6
  %arrayidx66 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx67 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx66, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx67, align 8, !tbaa !6
  %11 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 0, i32* %i2, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc633, %if.end
  %12 = load i32, i32* %i2, align 4, !tbaa !8
  %13 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %cmp68 = icmp slt i32 %12, %13
  br i1 %cmp68, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %14 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  br label %for.end635

for.body:                                         ; preds = %for.cond
  %15 = bitcast double** %fx_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = bitcast double** %fy_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  %17 = bitcast double** %fz_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #3
  %18 = bitcast [8 x double]* %hgfx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %18) #3
  %19 = bitcast [8 x double]* %hgfy to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %19) #3
  %20 = bitcast [8 x double]* %hgfz to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %20) #3
  %21 = bitcast double* %coefficient to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #3
  %22 = bitcast [8 x [4 x double]]* %hourgam to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %22) #3
  %23 = bitcast [8 x double]* %xd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %23) #3
  %24 = bitcast [8 x double]* %yd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %24) #3
  %25 = bitcast [8 x double]* %zd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %25) #3
  %26 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #3
  %27 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %28 = load i32, i32* %i2, align 4, !tbaa !8
  %call69 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %27, i32 %28)
  store i32* %call69, i32** %elemToNode, align 8, !tbaa !2
  %29 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  %30 = load i32, i32* %i2, align 4, !tbaa !8
  %mul70 = mul nsw i32 8, %30
  store i32 %mul70, i32* %i3, align 4, !tbaa !8
  %31 = bitcast double* %volinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #3
  %32 = load double*, double** %determ.addr, align 8, !tbaa !2
  %33 = load i32, i32* %i2, align 4, !tbaa !8
  %idxprom = sext i32 %33 to i64
  %arrayidx71 = getelementptr inbounds double, double* %32, i64 %idxprom
  %34 = load double, double* %arrayidx71, align 8, !tbaa !6
  %div = fdiv double 1.000000e+00, %34
  store double %div, double* %volinv, align 8, !tbaa !6
  %35 = bitcast double* %ss1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35) #3
  %36 = bitcast double* %mass1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #3
  %37 = bitcast double* %volume13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37) #3
  %38 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3
  store i32 0, i32* %i1, align 4, !tbaa !8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc, %for.body
  %39 = load i32, i32* %i1, align 4, !tbaa !8
  %cmp73 = icmp slt i32 %39, 4
  br i1 %cmp73, label %for.body75, label %for.cond.cleanup74

for.cond.cleanup74:                               ; preds = %for.cond72
  store i32 5, i32* %cleanup.dest.slot, align 4
  %40 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  br label %for.end

for.body75:                                       ; preds = %for.cond72
  %41 = bitcast double* %hourmodx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #3
  %42 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %43 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom76 = sext i32 %43 to i64
  %arrayidx77 = getelementptr inbounds double, double* %42, i64 %idxprom76
  %44 = load double, double* %arrayidx77, align 8, !tbaa !6
  %45 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom78 = sext i32 %45 to i64
  %arrayidx79 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx79, i64 0, i64 0
  %46 = load double, double* %arrayidx80, align 16, !tbaa !6
  %mul81 = fmul double %44, %46
  %47 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %48 = load i32, i32* %i3, align 4, !tbaa !8
  %add = add nsw i32 %48, 1
  %idxprom82 = sext i32 %add to i64
  %arrayidx83 = getelementptr inbounds double, double* %47, i64 %idxprom82
  %49 = load double, double* %arrayidx83, align 8, !tbaa !6
  %50 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom84 = sext i32 %50 to i64
  %arrayidx85 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx85, i64 0, i64 1
  %51 = load double, double* %arrayidx86, align 8, !tbaa !6
  %mul87 = fmul double %49, %51
  %add88 = fadd double %mul81, %mul87
  %52 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %53 = load i32, i32* %i3, align 4, !tbaa !8
  %add89 = add nsw i32 %53, 2
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, double* %52, i64 %idxprom90
  %54 = load double, double* %arrayidx91, align 8, !tbaa !6
  %55 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom92 = sext i32 %55 to i64
  %arrayidx93 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx93, i64 0, i64 2
  %56 = load double, double* %arrayidx94, align 16, !tbaa !6
  %mul95 = fmul double %54, %56
  %add96 = fadd double %add88, %mul95
  %57 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %58 = load i32, i32* %i3, align 4, !tbaa !8
  %add97 = add nsw i32 %58, 3
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds double, double* %57, i64 %idxprom98
  %59 = load double, double* %arrayidx99, align 8, !tbaa !6
  %60 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom100 = sext i32 %60 to i64
  %arrayidx101 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx101, i64 0, i64 3
  %61 = load double, double* %arrayidx102, align 8, !tbaa !6
  %mul103 = fmul double %59, %61
  %add104 = fadd double %add96, %mul103
  %62 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %63 = load i32, i32* %i3, align 4, !tbaa !8
  %add105 = add nsw i32 %63, 4
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, double* %62, i64 %idxprom106
  %64 = load double, double* %arrayidx107, align 8, !tbaa !6
  %65 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom108 = sext i32 %65 to i64
  %arrayidx109 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx109, i64 0, i64 4
  %66 = load double, double* %arrayidx110, align 16, !tbaa !6
  %mul111 = fmul double %64, %66
  %add112 = fadd double %add104, %mul111
  %67 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %68 = load i32, i32* %i3, align 4, !tbaa !8
  %add113 = add nsw i32 %68, 5
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, double* %67, i64 %idxprom114
  %69 = load double, double* %arrayidx115, align 8, !tbaa !6
  %70 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom116 = sext i32 %70 to i64
  %arrayidx117 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx117, i64 0, i64 5
  %71 = load double, double* %arrayidx118, align 8, !tbaa !6
  %mul119 = fmul double %69, %71
  %add120 = fadd double %add112, %mul119
  %72 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %73 = load i32, i32* %i3, align 4, !tbaa !8
  %add121 = add nsw i32 %73, 6
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds double, double* %72, i64 %idxprom122
  %74 = load double, double* %arrayidx123, align 8, !tbaa !6
  %75 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom124 = sext i32 %75 to i64
  %arrayidx125 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx125, i64 0, i64 6
  %76 = load double, double* %arrayidx126, align 16, !tbaa !6
  %mul127 = fmul double %74, %76
  %add128 = fadd double %add120, %mul127
  %77 = load double*, double** %x8n.addr, align 8, !tbaa !2
  %78 = load i32, i32* %i3, align 4, !tbaa !8
  %add129 = add nsw i32 %78, 7
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, double* %77, i64 %idxprom130
  %79 = load double, double* %arrayidx131, align 8, !tbaa !6
  %80 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom132 = sext i32 %80 to i64
  %arrayidx133 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx133, i64 0, i64 7
  %81 = load double, double* %arrayidx134, align 8, !tbaa !6
  %mul135 = fmul double %79, %81
  %add136 = fadd double %add128, %mul135
  store double %add136, double* %hourmodx, align 8, !tbaa !6
  %82 = bitcast double* %hourmody to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %82) #3
  %83 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %84 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom137 = sext i32 %84 to i64
  %arrayidx138 = getelementptr inbounds double, double* %83, i64 %idxprom137
  %85 = load double, double* %arrayidx138, align 8, !tbaa !6
  %86 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom139 = sext i32 %86 to i64
  %arrayidx140 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx140, i64 0, i64 0
  %87 = load double, double* %arrayidx141, align 16, !tbaa !6
  %mul142 = fmul double %85, %87
  %88 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %89 = load i32, i32* %i3, align 4, !tbaa !8
  %add143 = add nsw i32 %89, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds double, double* %88, i64 %idxprom144
  %90 = load double, double* %arrayidx145, align 8, !tbaa !6
  %91 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom146 = sext i32 %91 to i64
  %arrayidx147 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom146
  %arrayidx148 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx147, i64 0, i64 1
  %92 = load double, double* %arrayidx148, align 8, !tbaa !6
  %mul149 = fmul double %90, %92
  %add150 = fadd double %mul142, %mul149
  %93 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %94 = load i32, i32* %i3, align 4, !tbaa !8
  %add151 = add nsw i32 %94, 2
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds double, double* %93, i64 %idxprom152
  %95 = load double, double* %arrayidx153, align 8, !tbaa !6
  %96 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom154 = sext i32 %96 to i64
  %arrayidx155 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx155, i64 0, i64 2
  %97 = load double, double* %arrayidx156, align 16, !tbaa !6
  %mul157 = fmul double %95, %97
  %add158 = fadd double %add150, %mul157
  %98 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %99 = load i32, i32* %i3, align 4, !tbaa !8
  %add159 = add nsw i32 %99, 3
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, double* %98, i64 %idxprom160
  %100 = load double, double* %arrayidx161, align 8, !tbaa !6
  %101 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom162 = sext i32 %101 to i64
  %arrayidx163 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx163, i64 0, i64 3
  %102 = load double, double* %arrayidx164, align 8, !tbaa !6
  %mul165 = fmul double %100, %102
  %add166 = fadd double %add158, %mul165
  %103 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %104 = load i32, i32* %i3, align 4, !tbaa !8
  %add167 = add nsw i32 %104, 4
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, double* %103, i64 %idxprom168
  %105 = load double, double* %arrayidx169, align 8, !tbaa !6
  %106 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom170 = sext i32 %106 to i64
  %arrayidx171 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx171, i64 0, i64 4
  %107 = load double, double* %arrayidx172, align 16, !tbaa !6
  %mul173 = fmul double %105, %107
  %add174 = fadd double %add166, %mul173
  %108 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %109 = load i32, i32* %i3, align 4, !tbaa !8
  %add175 = add nsw i32 %109, 5
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds double, double* %108, i64 %idxprom176
  %110 = load double, double* %arrayidx177, align 8, !tbaa !6
  %111 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom178 = sext i32 %111 to i64
  %arrayidx179 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx179, i64 0, i64 5
  %112 = load double, double* %arrayidx180, align 8, !tbaa !6
  %mul181 = fmul double %110, %112
  %add182 = fadd double %add174, %mul181
  %113 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %114 = load i32, i32* %i3, align 4, !tbaa !8
  %add183 = add nsw i32 %114, 6
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, double* %113, i64 %idxprom184
  %115 = load double, double* %arrayidx185, align 8, !tbaa !6
  %116 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom186 = sext i32 %116 to i64
  %arrayidx187 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom186
  %arrayidx188 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx187, i64 0, i64 6
  %117 = load double, double* %arrayidx188, align 16, !tbaa !6
  %mul189 = fmul double %115, %117
  %add190 = fadd double %add182, %mul189
  %118 = load double*, double** %y8n.addr, align 8, !tbaa !2
  %119 = load i32, i32* %i3, align 4, !tbaa !8
  %add191 = add nsw i32 %119, 7
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds double, double* %118, i64 %idxprom192
  %120 = load double, double* %arrayidx193, align 8, !tbaa !6
  %121 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom194 = sext i32 %121 to i64
  %arrayidx195 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx195, i64 0, i64 7
  %122 = load double, double* %arrayidx196, align 8, !tbaa !6
  %mul197 = fmul double %120, %122
  %add198 = fadd double %add190, %mul197
  store double %add198, double* %hourmody, align 8, !tbaa !6
  %123 = bitcast double* %hourmodz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %123) #3
  %124 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %125 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom199 = sext i32 %125 to i64
  %arrayidx200 = getelementptr inbounds double, double* %124, i64 %idxprom199
  %126 = load double, double* %arrayidx200, align 8, !tbaa !6
  %127 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom201 = sext i32 %127 to i64
  %arrayidx202 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom201
  %arrayidx203 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx202, i64 0, i64 0
  %128 = load double, double* %arrayidx203, align 16, !tbaa !6
  %mul204 = fmul double %126, %128
  %129 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %130 = load i32, i32* %i3, align 4, !tbaa !8
  %add205 = add nsw i32 %130, 1
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds double, double* %129, i64 %idxprom206
  %131 = load double, double* %arrayidx207, align 8, !tbaa !6
  %132 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom208 = sext i32 %132 to i64
  %arrayidx209 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx209, i64 0, i64 1
  %133 = load double, double* %arrayidx210, align 8, !tbaa !6
  %mul211 = fmul double %131, %133
  %add212 = fadd double %mul204, %mul211
  %134 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %135 = load i32, i32* %i3, align 4, !tbaa !8
  %add213 = add nsw i32 %135, 2
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds double, double* %134, i64 %idxprom214
  %136 = load double, double* %arrayidx215, align 8, !tbaa !6
  %137 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom216 = sext i32 %137 to i64
  %arrayidx217 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx217, i64 0, i64 2
  %138 = load double, double* %arrayidx218, align 16, !tbaa !6
  %mul219 = fmul double %136, %138
  %add220 = fadd double %add212, %mul219
  %139 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %140 = load i32, i32* %i3, align 4, !tbaa !8
  %add221 = add nsw i32 %140, 3
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, double* %139, i64 %idxprom222
  %141 = load double, double* %arrayidx223, align 8, !tbaa !6
  %142 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom224 = sext i32 %142 to i64
  %arrayidx225 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom224
  %arrayidx226 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx225, i64 0, i64 3
  %143 = load double, double* %arrayidx226, align 8, !tbaa !6
  %mul227 = fmul double %141, %143
  %add228 = fadd double %add220, %mul227
  %144 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %145 = load i32, i32* %i3, align 4, !tbaa !8
  %add229 = add nsw i32 %145, 4
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds double, double* %144, i64 %idxprom230
  %146 = load double, double* %arrayidx231, align 8, !tbaa !6
  %147 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom232 = sext i32 %147 to i64
  %arrayidx233 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom232
  %arrayidx234 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx233, i64 0, i64 4
  %148 = load double, double* %arrayidx234, align 16, !tbaa !6
  %mul235 = fmul double %146, %148
  %add236 = fadd double %add228, %mul235
  %149 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %150 = load i32, i32* %i3, align 4, !tbaa !8
  %add237 = add nsw i32 %150, 5
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds double, double* %149, i64 %idxprom238
  %151 = load double, double* %arrayidx239, align 8, !tbaa !6
  %152 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom240 = sext i32 %152 to i64
  %arrayidx241 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx241, i64 0, i64 5
  %153 = load double, double* %arrayidx242, align 8, !tbaa !6
  %mul243 = fmul double %151, %153
  %add244 = fadd double %add236, %mul243
  %154 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %155 = load i32, i32* %i3, align 4, !tbaa !8
  %add245 = add nsw i32 %155, 6
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds double, double* %154, i64 %idxprom246
  %156 = load double, double* %arrayidx247, align 8, !tbaa !6
  %157 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom248 = sext i32 %157 to i64
  %arrayidx249 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom248
  %arrayidx250 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx249, i64 0, i64 6
  %158 = load double, double* %arrayidx250, align 16, !tbaa !6
  %mul251 = fmul double %156, %158
  %add252 = fadd double %add244, %mul251
  %159 = load double*, double** %z8n.addr, align 8, !tbaa !2
  %160 = load i32, i32* %i3, align 4, !tbaa !8
  %add253 = add nsw i32 %160, 7
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds double, double* %159, i64 %idxprom254
  %161 = load double, double* %arrayidx255, align 8, !tbaa !6
  %162 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom256 = sext i32 %162 to i64
  %arrayidx257 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx257, i64 0, i64 7
  %163 = load double, double* %arrayidx258, align 8, !tbaa !6
  %mul259 = fmul double %161, %163
  %add260 = fadd double %add252, %mul259
  store double %add260, double* %hourmodz, align 8, !tbaa !6
  %164 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom261 = sext i32 %164 to i64
  %arrayidx262 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx262, i64 0, i64 0
  %165 = load double, double* %arrayidx263, align 16, !tbaa !6
  %166 = load double, double* %volinv, align 8, !tbaa !6
  %167 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %168 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom264 = sext i32 %168 to i64
  %arrayidx265 = getelementptr inbounds double, double* %167, i64 %idxprom264
  %169 = load double, double* %arrayidx265, align 8, !tbaa !6
  %170 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul266 = fmul double %169, %170
  %171 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %172 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom267 = sext i32 %172 to i64
  %arrayidx268 = getelementptr inbounds double, double* %171, i64 %idxprom267
  %173 = load double, double* %arrayidx268, align 8, !tbaa !6
  %174 = load double, double* %hourmody, align 8, !tbaa !6
  %mul269 = fmul double %173, %174
  %add270 = fadd double %mul266, %mul269
  %175 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %176 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom271 = sext i32 %176 to i64
  %arrayidx272 = getelementptr inbounds double, double* %175, i64 %idxprom271
  %177 = load double, double* %arrayidx272, align 8, !tbaa !6
  %178 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul273 = fmul double %177, %178
  %add274 = fadd double %add270, %mul273
  %mul275 = fmul double %166, %add274
  %sub = fsub double %165, %mul275
  %arrayidx276 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0
  %179 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom277 = sext i32 %179 to i64
  %arrayidx278 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx276, i64 0, i64 %idxprom277
  store double %sub, double* %arrayidx278, align 8, !tbaa !6
  %180 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom279 = sext i32 %180 to i64
  %arrayidx280 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom279
  %arrayidx281 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx280, i64 0, i64 1
  %181 = load double, double* %arrayidx281, align 8, !tbaa !6
  %182 = load double, double* %volinv, align 8, !tbaa !6
  %183 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %184 = load i32, i32* %i3, align 4, !tbaa !8
  %add282 = add nsw i32 %184, 1
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds double, double* %183, i64 %idxprom283
  %185 = load double, double* %arrayidx284, align 8, !tbaa !6
  %186 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul285 = fmul double %185, %186
  %187 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %188 = load i32, i32* %i3, align 4, !tbaa !8
  %add286 = add nsw i32 %188, 1
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds double, double* %187, i64 %idxprom287
  %189 = load double, double* %arrayidx288, align 8, !tbaa !6
  %190 = load double, double* %hourmody, align 8, !tbaa !6
  %mul289 = fmul double %189, %190
  %add290 = fadd double %mul285, %mul289
  %191 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %192 = load i32, i32* %i3, align 4, !tbaa !8
  %add291 = add nsw i32 %192, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds double, double* %191, i64 %idxprom292
  %193 = load double, double* %arrayidx293, align 8, !tbaa !6
  %194 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul294 = fmul double %193, %194
  %add295 = fadd double %add290, %mul294
  %mul296 = fmul double %182, %add295
  %sub297 = fsub double %181, %mul296
  %arrayidx298 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 1
  %195 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom299 = sext i32 %195 to i64
  %arrayidx300 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx298, i64 0, i64 %idxprom299
  store double %sub297, double* %arrayidx300, align 8, !tbaa !6
  %196 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom301 = sext i32 %196 to i64
  %arrayidx302 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom301
  %arrayidx303 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx302, i64 0, i64 2
  %197 = load double, double* %arrayidx303, align 16, !tbaa !6
  %198 = load double, double* %volinv, align 8, !tbaa !6
  %199 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %200 = load i32, i32* %i3, align 4, !tbaa !8
  %add304 = add nsw i32 %200, 2
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds double, double* %199, i64 %idxprom305
  %201 = load double, double* %arrayidx306, align 8, !tbaa !6
  %202 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul307 = fmul double %201, %202
  %203 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %204 = load i32, i32* %i3, align 4, !tbaa !8
  %add308 = add nsw i32 %204, 2
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds double, double* %203, i64 %idxprom309
  %205 = load double, double* %arrayidx310, align 8, !tbaa !6
  %206 = load double, double* %hourmody, align 8, !tbaa !6
  %mul311 = fmul double %205, %206
  %add312 = fadd double %mul307, %mul311
  %207 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %208 = load i32, i32* %i3, align 4, !tbaa !8
  %add313 = add nsw i32 %208, 2
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds double, double* %207, i64 %idxprom314
  %209 = load double, double* %arrayidx315, align 8, !tbaa !6
  %210 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul316 = fmul double %209, %210
  %add317 = fadd double %add312, %mul316
  %mul318 = fmul double %198, %add317
  %sub319 = fsub double %197, %mul318
  %arrayidx320 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 2
  %211 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom321 = sext i32 %211 to i64
  %arrayidx322 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx320, i64 0, i64 %idxprom321
  store double %sub319, double* %arrayidx322, align 8, !tbaa !6
  %212 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom323 = sext i32 %212 to i64
  %arrayidx324 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom323
  %arrayidx325 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx324, i64 0, i64 3
  %213 = load double, double* %arrayidx325, align 8, !tbaa !6
  %214 = load double, double* %volinv, align 8, !tbaa !6
  %215 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %216 = load i32, i32* %i3, align 4, !tbaa !8
  %add326 = add nsw i32 %216, 3
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds double, double* %215, i64 %idxprom327
  %217 = load double, double* %arrayidx328, align 8, !tbaa !6
  %218 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul329 = fmul double %217, %218
  %219 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %220 = load i32, i32* %i3, align 4, !tbaa !8
  %add330 = add nsw i32 %220, 3
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds double, double* %219, i64 %idxprom331
  %221 = load double, double* %arrayidx332, align 8, !tbaa !6
  %222 = load double, double* %hourmody, align 8, !tbaa !6
  %mul333 = fmul double %221, %222
  %add334 = fadd double %mul329, %mul333
  %223 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %224 = load i32, i32* %i3, align 4, !tbaa !8
  %add335 = add nsw i32 %224, 3
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds double, double* %223, i64 %idxprom336
  %225 = load double, double* %arrayidx337, align 8, !tbaa !6
  %226 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul338 = fmul double %225, %226
  %add339 = fadd double %add334, %mul338
  %mul340 = fmul double %214, %add339
  %sub341 = fsub double %213, %mul340
  %arrayidx342 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 3
  %227 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom343 = sext i32 %227 to i64
  %arrayidx344 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx342, i64 0, i64 %idxprom343
  store double %sub341, double* %arrayidx344, align 8, !tbaa !6
  %228 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom345 = sext i32 %228 to i64
  %arrayidx346 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom345
  %arrayidx347 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx346, i64 0, i64 4
  %229 = load double, double* %arrayidx347, align 16, !tbaa !6
  %230 = load double, double* %volinv, align 8, !tbaa !6
  %231 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %232 = load i32, i32* %i3, align 4, !tbaa !8
  %add348 = add nsw i32 %232, 4
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds double, double* %231, i64 %idxprom349
  %233 = load double, double* %arrayidx350, align 8, !tbaa !6
  %234 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul351 = fmul double %233, %234
  %235 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %236 = load i32, i32* %i3, align 4, !tbaa !8
  %add352 = add nsw i32 %236, 4
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds double, double* %235, i64 %idxprom353
  %237 = load double, double* %arrayidx354, align 8, !tbaa !6
  %238 = load double, double* %hourmody, align 8, !tbaa !6
  %mul355 = fmul double %237, %238
  %add356 = fadd double %mul351, %mul355
  %239 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %240 = load i32, i32* %i3, align 4, !tbaa !8
  %add357 = add nsw i32 %240, 4
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds double, double* %239, i64 %idxprom358
  %241 = load double, double* %arrayidx359, align 8, !tbaa !6
  %242 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul360 = fmul double %241, %242
  %add361 = fadd double %add356, %mul360
  %mul362 = fmul double %230, %add361
  %sub363 = fsub double %229, %mul362
  %arrayidx364 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 4
  %243 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom365 = sext i32 %243 to i64
  %arrayidx366 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx364, i64 0, i64 %idxprom365
  store double %sub363, double* %arrayidx366, align 8, !tbaa !6
  %244 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom367 = sext i32 %244 to i64
  %arrayidx368 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx368, i64 0, i64 5
  %245 = load double, double* %arrayidx369, align 8, !tbaa !6
  %246 = load double, double* %volinv, align 8, !tbaa !6
  %247 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %248 = load i32, i32* %i3, align 4, !tbaa !8
  %add370 = add nsw i32 %248, 5
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds double, double* %247, i64 %idxprom371
  %249 = load double, double* %arrayidx372, align 8, !tbaa !6
  %250 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul373 = fmul double %249, %250
  %251 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %252 = load i32, i32* %i3, align 4, !tbaa !8
  %add374 = add nsw i32 %252, 5
  %idxprom375 = sext i32 %add374 to i64
  %arrayidx376 = getelementptr inbounds double, double* %251, i64 %idxprom375
  %253 = load double, double* %arrayidx376, align 8, !tbaa !6
  %254 = load double, double* %hourmody, align 8, !tbaa !6
  %mul377 = fmul double %253, %254
  %add378 = fadd double %mul373, %mul377
  %255 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %256 = load i32, i32* %i3, align 4, !tbaa !8
  %add379 = add nsw i32 %256, 5
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds double, double* %255, i64 %idxprom380
  %257 = load double, double* %arrayidx381, align 8, !tbaa !6
  %258 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul382 = fmul double %257, %258
  %add383 = fadd double %add378, %mul382
  %mul384 = fmul double %246, %add383
  %sub385 = fsub double %245, %mul384
  %arrayidx386 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 5
  %259 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom387 = sext i32 %259 to i64
  %arrayidx388 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx386, i64 0, i64 %idxprom387
  store double %sub385, double* %arrayidx388, align 8, !tbaa !6
  %260 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom389 = sext i32 %260 to i64
  %arrayidx390 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx390, i64 0, i64 6
  %261 = load double, double* %arrayidx391, align 16, !tbaa !6
  %262 = load double, double* %volinv, align 8, !tbaa !6
  %263 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %264 = load i32, i32* %i3, align 4, !tbaa !8
  %add392 = add nsw i32 %264, 6
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds double, double* %263, i64 %idxprom393
  %265 = load double, double* %arrayidx394, align 8, !tbaa !6
  %266 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul395 = fmul double %265, %266
  %267 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %268 = load i32, i32* %i3, align 4, !tbaa !8
  %add396 = add nsw i32 %268, 6
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds double, double* %267, i64 %idxprom397
  %269 = load double, double* %arrayidx398, align 8, !tbaa !6
  %270 = load double, double* %hourmody, align 8, !tbaa !6
  %mul399 = fmul double %269, %270
  %add400 = fadd double %mul395, %mul399
  %271 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %272 = load i32, i32* %i3, align 4, !tbaa !8
  %add401 = add nsw i32 %272, 6
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds double, double* %271, i64 %idxprom402
  %273 = load double, double* %arrayidx403, align 8, !tbaa !6
  %274 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul404 = fmul double %273, %274
  %add405 = fadd double %add400, %mul404
  %mul406 = fmul double %262, %add405
  %sub407 = fsub double %261, %mul406
  %arrayidx408 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 6
  %275 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom409 = sext i32 %275 to i64
  %arrayidx410 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx408, i64 0, i64 %idxprom409
  store double %sub407, double* %arrayidx410, align 8, !tbaa !6
  %276 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom411 = sext i32 %276 to i64
  %arrayidx412 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx412, i64 0, i64 7
  %277 = load double, double* %arrayidx413, align 8, !tbaa !6
  %278 = load double, double* %volinv, align 8, !tbaa !6
  %279 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %280 = load i32, i32* %i3, align 4, !tbaa !8
  %add414 = add nsw i32 %280, 7
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds double, double* %279, i64 %idxprom415
  %281 = load double, double* %arrayidx416, align 8, !tbaa !6
  %282 = load double, double* %hourmodx, align 8, !tbaa !6
  %mul417 = fmul double %281, %282
  %283 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %284 = load i32, i32* %i3, align 4, !tbaa !8
  %add418 = add nsw i32 %284, 7
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds double, double* %283, i64 %idxprom419
  %285 = load double, double* %arrayidx420, align 8, !tbaa !6
  %286 = load double, double* %hourmody, align 8, !tbaa !6
  %mul421 = fmul double %285, %286
  %add422 = fadd double %mul417, %mul421
  %287 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %288 = load i32, i32* %i3, align 4, !tbaa !8
  %add423 = add nsw i32 %288, 7
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds double, double* %287, i64 %idxprom424
  %289 = load double, double* %arrayidx425, align 8, !tbaa !6
  %290 = load double, double* %hourmodz, align 8, !tbaa !6
  %mul426 = fmul double %289, %290
  %add427 = fadd double %add422, %mul426
  %mul428 = fmul double %278, %add427
  %sub429 = fsub double %277, %mul428
  %arrayidx430 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 7
  %291 = load i32, i32* %i1, align 4, !tbaa !8
  %idxprom431 = sext i32 %291 to i64
  %arrayidx432 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx430, i64 0, i64 %idxprom431
  store double %sub429, double* %arrayidx432, align 8, !tbaa !6
  %292 = bitcast double* %hourmodz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %292) #3
  %293 = bitcast double* %hourmody to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %293) #3
  %294 = bitcast double* %hourmodx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %294) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body75
  %295 = load i32, i32* %i1, align 4, !tbaa !8
  %inc = add nsw i32 %295, 1
  store i32 %inc, i32* %i1, align 4, !tbaa !8
  br label %for.cond72, !llvm.loop !68

for.end:                                          ; preds = %for.cond.cleanup74
  %296 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %297 = load i32, i32* %i2, align 4, !tbaa !8
  %call433 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %296, i32 %297)
  %298 = load double, double* %call433, align 8, !tbaa !6
  store double %298, double* %ss1, align 8, !tbaa !6
  %299 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %300 = load i32, i32* %i2, align 4, !tbaa !8
  %call434 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %299, i32 %300)
  %301 = load double, double* %call434, align 8, !tbaa !6
  store double %301, double* %mass1, align 8, !tbaa !6
  %302 = load double*, double** %determ.addr, align 8, !tbaa !2
  %303 = load i32, i32* %i2, align 4, !tbaa !8
  %idxprom435 = sext i32 %303 to i64
  %arrayidx436 = getelementptr inbounds double, double* %302, i64 %idxprom435
  %304 = load double, double* %arrayidx436, align 8, !tbaa !6
  %call437 = call double @_Z4CBRTd(double %304)
  store double %call437, double* %volume13, align 8, !tbaa !6
  %305 = bitcast i32* %n0si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %305) #3
  %306 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx438 = getelementptr inbounds i32, i32* %306, i64 0
  %307 = load i32, i32* %arrayidx438, align 4, !tbaa !8
  store i32 %307, i32* %n0si2, align 4, !tbaa !8
  %308 = bitcast i32* %n1si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %308) #3
  %309 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx439 = getelementptr inbounds i32, i32* %309, i64 1
  %310 = load i32, i32* %arrayidx439, align 4, !tbaa !8
  store i32 %310, i32* %n1si2, align 4, !tbaa !8
  %311 = bitcast i32* %n2si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %311) #3
  %312 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx440 = getelementptr inbounds i32, i32* %312, i64 2
  %313 = load i32, i32* %arrayidx440, align 4, !tbaa !8
  store i32 %313, i32* %n2si2, align 4, !tbaa !8
  %314 = bitcast i32* %n3si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %314) #3
  %315 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx441 = getelementptr inbounds i32, i32* %315, i64 3
  %316 = load i32, i32* %arrayidx441, align 4, !tbaa !8
  store i32 %316, i32* %n3si2, align 4, !tbaa !8
  %317 = bitcast i32* %n4si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %317) #3
  %318 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx442 = getelementptr inbounds i32, i32* %318, i64 4
  %319 = load i32, i32* %arrayidx442, align 4, !tbaa !8
  store i32 %319, i32* %n4si2, align 4, !tbaa !8
  %320 = bitcast i32* %n5si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %320) #3
  %321 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx443 = getelementptr inbounds i32, i32* %321, i64 5
  %322 = load i32, i32* %arrayidx443, align 4, !tbaa !8
  store i32 %322, i32* %n5si2, align 4, !tbaa !8
  %323 = bitcast i32* %n6si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %323) #3
  %324 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx444 = getelementptr inbounds i32, i32* %324, i64 6
  %325 = load i32, i32* %arrayidx444, align 4, !tbaa !8
  store i32 %325, i32* %n6si2, align 4, !tbaa !8
  %326 = bitcast i32* %n7si2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %326) #3
  %327 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx445 = getelementptr inbounds i32, i32* %327, i64 7
  %328 = load i32, i32* %arrayidx445, align 4, !tbaa !8
  store i32 %328, i32* %n7si2, align 4, !tbaa !8
  %329 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %330 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call446 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %329, i32 %330)
  %331 = load double, double* %call446, align 8, !tbaa !6
  %arrayidx447 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 0
  store double %331, double* %arrayidx447, align 16, !tbaa !6
  %332 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %333 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call448 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %332, i32 %333)
  %334 = load double, double* %call448, align 8, !tbaa !6
  %arrayidx449 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 1
  store double %334, double* %arrayidx449, align 8, !tbaa !6
  %335 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %336 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call450 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %335, i32 %336)
  %337 = load double, double* %call450, align 8, !tbaa !6
  %arrayidx451 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 2
  store double %337, double* %arrayidx451, align 16, !tbaa !6
  %338 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %339 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call452 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %338, i32 %339)
  %340 = load double, double* %call452, align 8, !tbaa !6
  %arrayidx453 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 3
  store double %340, double* %arrayidx453, align 8, !tbaa !6
  %341 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %342 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call454 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %341, i32 %342)
  %343 = load double, double* %call454, align 8, !tbaa !6
  %arrayidx455 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 4
  store double %343, double* %arrayidx455, align 16, !tbaa !6
  %344 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %345 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call456 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %344, i32 %345)
  %346 = load double, double* %call456, align 8, !tbaa !6
  %arrayidx457 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 5
  store double %346, double* %arrayidx457, align 8, !tbaa !6
  %347 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %348 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call458 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %347, i32 %348)
  %349 = load double, double* %call458, align 8, !tbaa !6
  %arrayidx459 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 6
  store double %349, double* %arrayidx459, align 16, !tbaa !6
  %350 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %351 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call460 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %350, i32 %351)
  %352 = load double, double* %call460, align 8, !tbaa !6
  %arrayidx461 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 7
  store double %352, double* %arrayidx461, align 8, !tbaa !6
  %353 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %354 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call462 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %353, i32 %354)
  %355 = load double, double* %call462, align 8, !tbaa !6
  %arrayidx463 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 0
  store double %355, double* %arrayidx463, align 16, !tbaa !6
  %356 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %357 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call464 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %356, i32 %357)
  %358 = load double, double* %call464, align 8, !tbaa !6
  %arrayidx465 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 1
  store double %358, double* %arrayidx465, align 8, !tbaa !6
  %359 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %360 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call466 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %359, i32 %360)
  %361 = load double, double* %call466, align 8, !tbaa !6
  %arrayidx467 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 2
  store double %361, double* %arrayidx467, align 16, !tbaa !6
  %362 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %363 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call468 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %362, i32 %363)
  %364 = load double, double* %call468, align 8, !tbaa !6
  %arrayidx469 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 3
  store double %364, double* %arrayidx469, align 8, !tbaa !6
  %365 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %366 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call470 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %365, i32 %366)
  %367 = load double, double* %call470, align 8, !tbaa !6
  %arrayidx471 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 4
  store double %367, double* %arrayidx471, align 16, !tbaa !6
  %368 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %369 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call472 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %368, i32 %369)
  %370 = load double, double* %call472, align 8, !tbaa !6
  %arrayidx473 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 5
  store double %370, double* %arrayidx473, align 8, !tbaa !6
  %371 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %372 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call474 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %371, i32 %372)
  %373 = load double, double* %call474, align 8, !tbaa !6
  %arrayidx475 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 6
  store double %373, double* %arrayidx475, align 16, !tbaa !6
  %374 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %375 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call476 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %374, i32 %375)
  %376 = load double, double* %call476, align 8, !tbaa !6
  %arrayidx477 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 7
  store double %376, double* %arrayidx477, align 8, !tbaa !6
  %377 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %378 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call478 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %377, i32 %378)
  %379 = load double, double* %call478, align 8, !tbaa !6
  %arrayidx479 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 0
  store double %379, double* %arrayidx479, align 16, !tbaa !6
  %380 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %381 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call480 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %380, i32 %381)
  %382 = load double, double* %call480, align 8, !tbaa !6
  %arrayidx481 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 1
  store double %382, double* %arrayidx481, align 8, !tbaa !6
  %383 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %384 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call482 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %383, i32 %384)
  %385 = load double, double* %call482, align 8, !tbaa !6
  %arrayidx483 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 2
  store double %385, double* %arrayidx483, align 16, !tbaa !6
  %386 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %387 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call484 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %386, i32 %387)
  %388 = load double, double* %call484, align 8, !tbaa !6
  %arrayidx485 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 3
  store double %388, double* %arrayidx485, align 8, !tbaa !6
  %389 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %390 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call486 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %389, i32 %390)
  %391 = load double, double* %call486, align 8, !tbaa !6
  %arrayidx487 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 4
  store double %391, double* %arrayidx487, align 16, !tbaa !6
  %392 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %393 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call488 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %392, i32 %393)
  %394 = load double, double* %call488, align 8, !tbaa !6
  %arrayidx489 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 5
  store double %394, double* %arrayidx489, align 8, !tbaa !6
  %395 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %396 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call490 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %395, i32 %396)
  %397 = load double, double* %call490, align 8, !tbaa !6
  %arrayidx491 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 6
  store double %397, double* %arrayidx491, align 16, !tbaa !6
  %398 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %399 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call492 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %398, i32 %399)
  %400 = load double, double* %call492, align 8, !tbaa !6
  %arrayidx493 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 7
  store double %400, double* %arrayidx493, align 8, !tbaa !6
  %401 = load double, double* %hourg.addr, align 8, !tbaa !6
  %fneg = fneg double %401
  %mul494 = fmul double %fneg, 1.000000e-02
  %402 = load double, double* %ss1, align 8, !tbaa !6
  %mul495 = fmul double %mul494, %402
  %403 = load double, double* %mass1, align 8, !tbaa !6
  %mul496 = fmul double %mul495, %403
  %404 = load double, double* %volume13, align 8, !tbaa !6
  %div497 = fdiv double %mul496, %404
  store double %div497, double* %coefficient, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 0
  %arraydecay498 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 0
  %arraydecay499 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 0
  %arraydecay500 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0
  %405 = load double, double* %coefficient, align 8, !tbaa !6
  %arraydecay501 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %arraydecay502 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %arraydecay503 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  call void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* %arraydecay, double* %arraydecay498, double* %arraydecay499, [4 x double]* %arraydecay500, double %405, double* %arraydecay501, double* %arraydecay502, double* %arraydecay503)
  %406 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp504 = icmp sgt i32 %406, 1
  br i1 %cmp504, label %if.then505, label %if.else

if.then505:                                       ; preds = %for.end
  %407 = load double*, double** %fx_elem, align 8, !tbaa !2
  %408 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom506 = sext i32 %408 to i64
  %arrayidx507 = getelementptr inbounds double, double* %407, i64 %idxprom506
  store double* %arrayidx507, double** %fx_local, align 8, !tbaa !2
  %arrayidx508 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %409 = load double, double* %arrayidx508, align 16, !tbaa !6
  %410 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx509 = getelementptr inbounds double, double* %410, i64 0
  store double %409, double* %arrayidx509, align 8, !tbaa !6
  %arrayidx510 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 1
  %411 = load double, double* %arrayidx510, align 8, !tbaa !6
  %412 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx511 = getelementptr inbounds double, double* %412, i64 1
  store double %411, double* %arrayidx511, align 8, !tbaa !6
  %arrayidx512 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 2
  %413 = load double, double* %arrayidx512, align 16, !tbaa !6
  %414 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx513 = getelementptr inbounds double, double* %414, i64 2
  store double %413, double* %arrayidx513, align 8, !tbaa !6
  %arrayidx514 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 3
  %415 = load double, double* %arrayidx514, align 8, !tbaa !6
  %416 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx515 = getelementptr inbounds double, double* %416, i64 3
  store double %415, double* %arrayidx515, align 8, !tbaa !6
  %arrayidx516 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 4
  %417 = load double, double* %arrayidx516, align 16, !tbaa !6
  %418 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx517 = getelementptr inbounds double, double* %418, i64 4
  store double %417, double* %arrayidx517, align 8, !tbaa !6
  %arrayidx518 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 5
  %419 = load double, double* %arrayidx518, align 8, !tbaa !6
  %420 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx519 = getelementptr inbounds double, double* %420, i64 5
  store double %419, double* %arrayidx519, align 8, !tbaa !6
  %arrayidx520 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 6
  %421 = load double, double* %arrayidx520, align 16, !tbaa !6
  %422 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx521 = getelementptr inbounds double, double* %422, i64 6
  store double %421, double* %arrayidx521, align 8, !tbaa !6
  %arrayidx522 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 7
  %423 = load double, double* %arrayidx522, align 8, !tbaa !6
  %424 = load double*, double** %fx_local, align 8, !tbaa !2
  %arrayidx523 = getelementptr inbounds double, double* %424, i64 7
  store double %423, double* %arrayidx523, align 8, !tbaa !6
  %425 = load double*, double** %fy_elem, align 8, !tbaa !2
  %426 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom524 = sext i32 %426 to i64
  %arrayidx525 = getelementptr inbounds double, double* %425, i64 %idxprom524
  store double* %arrayidx525, double** %fy_local, align 8, !tbaa !2
  %arrayidx526 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %427 = load double, double* %arrayidx526, align 16, !tbaa !6
  %428 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx527 = getelementptr inbounds double, double* %428, i64 0
  store double %427, double* %arrayidx527, align 8, !tbaa !6
  %arrayidx528 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 1
  %429 = load double, double* %arrayidx528, align 8, !tbaa !6
  %430 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx529 = getelementptr inbounds double, double* %430, i64 1
  store double %429, double* %arrayidx529, align 8, !tbaa !6
  %arrayidx530 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 2
  %431 = load double, double* %arrayidx530, align 16, !tbaa !6
  %432 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx531 = getelementptr inbounds double, double* %432, i64 2
  store double %431, double* %arrayidx531, align 8, !tbaa !6
  %arrayidx532 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 3
  %433 = load double, double* %arrayidx532, align 8, !tbaa !6
  %434 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx533 = getelementptr inbounds double, double* %434, i64 3
  store double %433, double* %arrayidx533, align 8, !tbaa !6
  %arrayidx534 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 4
  %435 = load double, double* %arrayidx534, align 16, !tbaa !6
  %436 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx535 = getelementptr inbounds double, double* %436, i64 4
  store double %435, double* %arrayidx535, align 8, !tbaa !6
  %arrayidx536 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 5
  %437 = load double, double* %arrayidx536, align 8, !tbaa !6
  %438 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx537 = getelementptr inbounds double, double* %438, i64 5
  store double %437, double* %arrayidx537, align 8, !tbaa !6
  %arrayidx538 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 6
  %439 = load double, double* %arrayidx538, align 16, !tbaa !6
  %440 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx539 = getelementptr inbounds double, double* %440, i64 6
  store double %439, double* %arrayidx539, align 8, !tbaa !6
  %arrayidx540 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 7
  %441 = load double, double* %arrayidx540, align 8, !tbaa !6
  %442 = load double*, double** %fy_local, align 8, !tbaa !2
  %arrayidx541 = getelementptr inbounds double, double* %442, i64 7
  store double %441, double* %arrayidx541, align 8, !tbaa !6
  %443 = load double*, double** %fz_elem, align 8, !tbaa !2
  %444 = load i32, i32* %i3, align 4, !tbaa !8
  %idxprom542 = sext i32 %444 to i64
  %arrayidx543 = getelementptr inbounds double, double* %443, i64 %idxprom542
  store double* %arrayidx543, double** %fz_local, align 8, !tbaa !2
  %arrayidx544 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  %445 = load double, double* %arrayidx544, align 16, !tbaa !6
  %446 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx545 = getelementptr inbounds double, double* %446, i64 0
  store double %445, double* %arrayidx545, align 8, !tbaa !6
  %arrayidx546 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 1
  %447 = load double, double* %arrayidx546, align 8, !tbaa !6
  %448 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx547 = getelementptr inbounds double, double* %448, i64 1
  store double %447, double* %arrayidx547, align 8, !tbaa !6
  %arrayidx548 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 2
  %449 = load double, double* %arrayidx548, align 16, !tbaa !6
  %450 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx549 = getelementptr inbounds double, double* %450, i64 2
  store double %449, double* %arrayidx549, align 8, !tbaa !6
  %arrayidx550 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 3
  %451 = load double, double* %arrayidx550, align 8, !tbaa !6
  %452 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx551 = getelementptr inbounds double, double* %452, i64 3
  store double %451, double* %arrayidx551, align 8, !tbaa !6
  %arrayidx552 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 4
  %453 = load double, double* %arrayidx552, align 16, !tbaa !6
  %454 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx553 = getelementptr inbounds double, double* %454, i64 4
  store double %453, double* %arrayidx553, align 8, !tbaa !6
  %arrayidx554 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 5
  %455 = load double, double* %arrayidx554, align 8, !tbaa !6
  %456 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx555 = getelementptr inbounds double, double* %456, i64 5
  store double %455, double* %arrayidx555, align 8, !tbaa !6
  %arrayidx556 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 6
  %457 = load double, double* %arrayidx556, align 16, !tbaa !6
  %458 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx557 = getelementptr inbounds double, double* %458, i64 6
  store double %457, double* %arrayidx557, align 8, !tbaa !6
  %arrayidx558 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 7
  %459 = load double, double* %arrayidx558, align 8, !tbaa !6
  %460 = load double*, double** %fz_local, align 8, !tbaa !2
  %arrayidx559 = getelementptr inbounds double, double* %460, i64 7
  store double %459, double* %arrayidx559, align 8, !tbaa !6
  br label %if.end632

if.else:                                          ; preds = %for.end
  %arrayidx560 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %461 = load double, double* %arrayidx560, align 16, !tbaa !6
  %462 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %463 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call561 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %462, i32 %463)
  %464 = load double, double* %call561, align 8, !tbaa !6
  %add562 = fadd double %464, %461
  store double %add562, double* %call561, align 8, !tbaa !6
  %arrayidx563 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %465 = load double, double* %arrayidx563, align 16, !tbaa !6
  %466 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %467 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call564 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %466, i32 %467)
  %468 = load double, double* %call564, align 8, !tbaa !6
  %add565 = fadd double %468, %465
  store double %add565, double* %call564, align 8, !tbaa !6
  %arrayidx566 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  %469 = load double, double* %arrayidx566, align 16, !tbaa !6
  %470 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %471 = load i32, i32* %n0si2, align 4, !tbaa !8
  %call567 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %470, i32 %471)
  %472 = load double, double* %call567, align 8, !tbaa !6
  %add568 = fadd double %472, %469
  store double %add568, double* %call567, align 8, !tbaa !6
  %arrayidx569 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 1
  %473 = load double, double* %arrayidx569, align 8, !tbaa !6
  %474 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %475 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call570 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %474, i32 %475)
  %476 = load double, double* %call570, align 8, !tbaa !6
  %add571 = fadd double %476, %473
  store double %add571, double* %call570, align 8, !tbaa !6
  %arrayidx572 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 1
  %477 = load double, double* %arrayidx572, align 8, !tbaa !6
  %478 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %479 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call573 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %478, i32 %479)
  %480 = load double, double* %call573, align 8, !tbaa !6
  %add574 = fadd double %480, %477
  store double %add574, double* %call573, align 8, !tbaa !6
  %arrayidx575 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 1
  %481 = load double, double* %arrayidx575, align 8, !tbaa !6
  %482 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %483 = load i32, i32* %n1si2, align 4, !tbaa !8
  %call576 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %482, i32 %483)
  %484 = load double, double* %call576, align 8, !tbaa !6
  %add577 = fadd double %484, %481
  store double %add577, double* %call576, align 8, !tbaa !6
  %arrayidx578 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 2
  %485 = load double, double* %arrayidx578, align 16, !tbaa !6
  %486 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %487 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call579 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %486, i32 %487)
  %488 = load double, double* %call579, align 8, !tbaa !6
  %add580 = fadd double %488, %485
  store double %add580, double* %call579, align 8, !tbaa !6
  %arrayidx581 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 2
  %489 = load double, double* %arrayidx581, align 16, !tbaa !6
  %490 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %491 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call582 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %490, i32 %491)
  %492 = load double, double* %call582, align 8, !tbaa !6
  %add583 = fadd double %492, %489
  store double %add583, double* %call582, align 8, !tbaa !6
  %arrayidx584 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 2
  %493 = load double, double* %arrayidx584, align 16, !tbaa !6
  %494 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %495 = load i32, i32* %n2si2, align 4, !tbaa !8
  %call585 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %494, i32 %495)
  %496 = load double, double* %call585, align 8, !tbaa !6
  %add586 = fadd double %496, %493
  store double %add586, double* %call585, align 8, !tbaa !6
  %arrayidx587 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 3
  %497 = load double, double* %arrayidx587, align 8, !tbaa !6
  %498 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %499 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call588 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %498, i32 %499)
  %500 = load double, double* %call588, align 8, !tbaa !6
  %add589 = fadd double %500, %497
  store double %add589, double* %call588, align 8, !tbaa !6
  %arrayidx590 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 3
  %501 = load double, double* %arrayidx590, align 8, !tbaa !6
  %502 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %503 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call591 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %502, i32 %503)
  %504 = load double, double* %call591, align 8, !tbaa !6
  %add592 = fadd double %504, %501
  store double %add592, double* %call591, align 8, !tbaa !6
  %arrayidx593 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 3
  %505 = load double, double* %arrayidx593, align 8, !tbaa !6
  %506 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %507 = load i32, i32* %n3si2, align 4, !tbaa !8
  %call594 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %506, i32 %507)
  %508 = load double, double* %call594, align 8, !tbaa !6
  %add595 = fadd double %508, %505
  store double %add595, double* %call594, align 8, !tbaa !6
  %arrayidx596 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 4
  %509 = load double, double* %arrayidx596, align 16, !tbaa !6
  %510 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %511 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call597 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %510, i32 %511)
  %512 = load double, double* %call597, align 8, !tbaa !6
  %add598 = fadd double %512, %509
  store double %add598, double* %call597, align 8, !tbaa !6
  %arrayidx599 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 4
  %513 = load double, double* %arrayidx599, align 16, !tbaa !6
  %514 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %515 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call600 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %514, i32 %515)
  %516 = load double, double* %call600, align 8, !tbaa !6
  %add601 = fadd double %516, %513
  store double %add601, double* %call600, align 8, !tbaa !6
  %arrayidx602 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 4
  %517 = load double, double* %arrayidx602, align 16, !tbaa !6
  %518 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %519 = load i32, i32* %n4si2, align 4, !tbaa !8
  %call603 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %518, i32 %519)
  %520 = load double, double* %call603, align 8, !tbaa !6
  %add604 = fadd double %520, %517
  store double %add604, double* %call603, align 8, !tbaa !6
  %arrayidx605 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 5
  %521 = load double, double* %arrayidx605, align 8, !tbaa !6
  %522 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %523 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call606 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %522, i32 %523)
  %524 = load double, double* %call606, align 8, !tbaa !6
  %add607 = fadd double %524, %521
  store double %add607, double* %call606, align 8, !tbaa !6
  %arrayidx608 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 5
  %525 = load double, double* %arrayidx608, align 8, !tbaa !6
  %526 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %527 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call609 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %526, i32 %527)
  %528 = load double, double* %call609, align 8, !tbaa !6
  %add610 = fadd double %528, %525
  store double %add610, double* %call609, align 8, !tbaa !6
  %arrayidx611 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 5
  %529 = load double, double* %arrayidx611, align 8, !tbaa !6
  %530 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %531 = load i32, i32* %n5si2, align 4, !tbaa !8
  %call612 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %530, i32 %531)
  %532 = load double, double* %call612, align 8, !tbaa !6
  %add613 = fadd double %532, %529
  store double %add613, double* %call612, align 8, !tbaa !6
  %arrayidx614 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 6
  %533 = load double, double* %arrayidx614, align 16, !tbaa !6
  %534 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %535 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call615 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %534, i32 %535)
  %536 = load double, double* %call615, align 8, !tbaa !6
  %add616 = fadd double %536, %533
  store double %add616, double* %call615, align 8, !tbaa !6
  %arrayidx617 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 6
  %537 = load double, double* %arrayidx617, align 16, !tbaa !6
  %538 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %539 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call618 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %538, i32 %539)
  %540 = load double, double* %call618, align 8, !tbaa !6
  %add619 = fadd double %540, %537
  store double %add619, double* %call618, align 8, !tbaa !6
  %arrayidx620 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 6
  %541 = load double, double* %arrayidx620, align 16, !tbaa !6
  %542 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %543 = load i32, i32* %n6si2, align 4, !tbaa !8
  %call621 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %542, i32 %543)
  %544 = load double, double* %call621, align 8, !tbaa !6
  %add622 = fadd double %544, %541
  store double %add622, double* %call621, align 8, !tbaa !6
  %arrayidx623 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 7
  %545 = load double, double* %arrayidx623, align 8, !tbaa !6
  %546 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %547 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call624 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %546, i32 %547)
  %548 = load double, double* %call624, align 8, !tbaa !6
  %add625 = fadd double %548, %545
  store double %add625, double* %call624, align 8, !tbaa !6
  %arrayidx626 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 7
  %549 = load double, double* %arrayidx626, align 8, !tbaa !6
  %550 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %551 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call627 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %550, i32 %551)
  %552 = load double, double* %call627, align 8, !tbaa !6
  %add628 = fadd double %552, %549
  store double %add628, double* %call627, align 8, !tbaa !6
  %arrayidx629 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 7
  %553 = load double, double* %arrayidx629, align 8, !tbaa !6
  %554 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %555 = load i32, i32* %n7si2, align 4, !tbaa !8
  %call630 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %554, i32 %555)
  %556 = load double, double* %call630, align 8, !tbaa !6
  %add631 = fadd double %556, %553
  store double %add631, double* %call630, align 8, !tbaa !6
  br label %if.end632

if.end632:                                        ; preds = %if.else, %if.then505
  %557 = bitcast i32* %n7si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %557) #3
  %558 = bitcast i32* %n6si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %558) #3
  %559 = bitcast i32* %n5si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %559) #3
  %560 = bitcast i32* %n4si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %560) #3
  %561 = bitcast i32* %n3si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %561) #3
  %562 = bitcast i32* %n2si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %562) #3
  %563 = bitcast i32* %n1si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %563) #3
  %564 = bitcast i32* %n0si2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %564) #3
  %565 = bitcast double* %volume13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %565) #3
  %566 = bitcast double* %mass1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %566) #3
  %567 = bitcast double* %ss1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %567) #3
  %568 = bitcast double* %volinv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %568) #3
  %569 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %569) #3
  %570 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %570) #3
  %571 = bitcast [8 x double]* %zd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %571) #3
  %572 = bitcast [8 x double]* %yd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %572) #3
  %573 = bitcast [8 x double]* %xd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %573) #3
  %574 = bitcast [8 x [4 x double]]* %hourgam to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %574) #3
  %575 = bitcast double* %coefficient to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %575) #3
  %576 = bitcast [8 x double]* %hgfz to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %576) #3
  %577 = bitcast [8 x double]* %hgfy to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %577) #3
  %578 = bitcast [8 x double]* %hgfx to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %578) #3
  %579 = bitcast double** %fz_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %579) #3
  %580 = bitcast double** %fy_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %580) #3
  %581 = bitcast double** %fx_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %581) #3
  br label %for.inc633

for.inc633:                                       ; preds = %if.end632
  %582 = load i32, i32* %i2, align 4, !tbaa !8
  %inc634 = add nsw i32 %582, 1
  store i32 %inc634, i32* %i2, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !69

for.end635:                                       ; preds = %for.cond.cleanup
  %583 = load i32, i32* %numthreads, align 4, !tbaa !8
  %cmp636 = icmp sgt i32 %583, 1
  br i1 %cmp636, label %if.then637, label %if.end671

if.then637:                                       ; preds = %for.end635
  %584 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %584) #3
  store i32 0, i32* %gnode, align 4, !tbaa !8
  br label %for.cond638

for.cond638:                                      ; preds = %for.inc668, %if.then637
  %585 = load i32, i32* %gnode, align 4, !tbaa !8
  %586 = load i32, i32* %numNode.addr, align 4, !tbaa !8
  %cmp639 = icmp slt i32 %585, %586
  br i1 %cmp639, label %for.body641, label %for.cond.cleanup640

for.cond.cleanup640:                              ; preds = %for.cond638
  store i32 8, i32* %cleanup.dest.slot, align 4
  %587 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %587) #3
  br label %for.end670

for.body641:                                      ; preds = %for.cond638
  %588 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %588) #3
  %589 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %590 = load i32, i32* %gnode, align 4, !tbaa !8
  %call642 = call i32 @_ZN6Domain13nodeElemCountEi(%class.Domain* %589, i32 %590)
  store i32 %call642, i32* %count, align 4, !tbaa !8
  %591 = bitcast i32** %cornerList to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %591) #3
  %592 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %593 = load i32, i32* %gnode, align 4, !tbaa !8
  %call643 = call i32* @_ZN6Domain18nodeElemCornerListEi(%class.Domain* %592, i32 %593)
  store i32* %call643, i32** %cornerList, align 8, !tbaa !2
  %594 = bitcast double* %fx_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %594) #3
  store double 0.000000e+00, double* %fx_tmp, align 8, !tbaa !6
  %595 = bitcast double* %fy_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %595) #3
  store double 0.000000e+00, double* %fy_tmp, align 8, !tbaa !6
  %596 = bitcast double* %fz_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %596) #3
  store double 0.000000e+00, double* %fz_tmp, align 8, !tbaa !6
  %597 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %597) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond644

for.cond644:                                      ; preds = %for.inc659, %for.body641
  %598 = load i32, i32* %i, align 4, !tbaa !8
  %599 = load i32, i32* %count, align 4, !tbaa !8
  %cmp645 = icmp slt i32 %598, %599
  br i1 %cmp645, label %for.body647, label %for.cond.cleanup646

for.cond.cleanup646:                              ; preds = %for.cond644
  store i32 11, i32* %cleanup.dest.slot, align 4
  %600 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %600) #3
  br label %for.end661

for.body647:                                      ; preds = %for.cond644
  %601 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %601) #3
  %602 = load i32*, i32** %cornerList, align 8, !tbaa !2
  %603 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom648 = sext i32 %603 to i64
  %arrayidx649 = getelementptr inbounds i32, i32* %602, i64 %idxprom648
  %604 = load i32, i32* %arrayidx649, align 4, !tbaa !8
  store i32 %604, i32* %ielem, align 4, !tbaa !8
  %605 = load double*, double** %fx_elem, align 8, !tbaa !2
  %606 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom650 = sext i32 %606 to i64
  %arrayidx651 = getelementptr inbounds double, double* %605, i64 %idxprom650
  %607 = load double, double* %arrayidx651, align 8, !tbaa !6
  %608 = load double, double* %fx_tmp, align 8, !tbaa !6
  %add652 = fadd double %608, %607
  store double %add652, double* %fx_tmp, align 8, !tbaa !6
  %609 = load double*, double** %fy_elem, align 8, !tbaa !2
  %610 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom653 = sext i32 %610 to i64
  %arrayidx654 = getelementptr inbounds double, double* %609, i64 %idxprom653
  %611 = load double, double* %arrayidx654, align 8, !tbaa !6
  %612 = load double, double* %fy_tmp, align 8, !tbaa !6
  %add655 = fadd double %612, %611
  store double %add655, double* %fy_tmp, align 8, !tbaa !6
  %613 = load double*, double** %fz_elem, align 8, !tbaa !2
  %614 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom656 = sext i32 %614 to i64
  %arrayidx657 = getelementptr inbounds double, double* %613, i64 %idxprom656
  %615 = load double, double* %arrayidx657, align 8, !tbaa !6
  %616 = load double, double* %fz_tmp, align 8, !tbaa !6
  %add658 = fadd double %616, %615
  store double %add658, double* %fz_tmp, align 8, !tbaa !6
  %617 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %617) #3
  br label %for.inc659

for.inc659:                                       ; preds = %for.body647
  %618 = load i32, i32* %i, align 4, !tbaa !8
  %inc660 = add nsw i32 %618, 1
  store i32 %inc660, i32* %i, align 4, !tbaa !8
  br label %for.cond644, !llvm.loop !70

for.end661:                                       ; preds = %for.cond.cleanup646
  %619 = load double, double* %fx_tmp, align 8, !tbaa !6
  %620 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %621 = load i32, i32* %gnode, align 4, !tbaa !8
  %call662 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %620, i32 %621)
  %622 = load double, double* %call662, align 8, !tbaa !6
  %add663 = fadd double %622, %619
  store double %add663, double* %call662, align 8, !tbaa !6
  %623 = load double, double* %fy_tmp, align 8, !tbaa !6
  %624 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %625 = load i32, i32* %gnode, align 4, !tbaa !8
  %call664 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %624, i32 %625)
  %626 = load double, double* %call664, align 8, !tbaa !6
  %add665 = fadd double %626, %623
  store double %add665, double* %call664, align 8, !tbaa !6
  %627 = load double, double* %fz_tmp, align 8, !tbaa !6
  %628 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %629 = load i32, i32* %gnode, align 4, !tbaa !8
  %call666 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %628, i32 %629)
  %630 = load double, double* %call666, align 8, !tbaa !6
  %add667 = fadd double %630, %627
  store double %add667, double* %call666, align 8, !tbaa !6
  %631 = bitcast double* %fz_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %631) #3
  %632 = bitcast double* %fy_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %632) #3
  %633 = bitcast double* %fx_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %633) #3
  %634 = bitcast i32** %cornerList to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %634) #3
  %635 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %635) #3
  br label %for.inc668

for.inc668:                                       ; preds = %for.end661
  %636 = load i32, i32* %gnode, align 4, !tbaa !8
  %inc669 = add nsw i32 %636, 1
  store i32 %inc669, i32* %gnode, align 4, !tbaa !8
  br label %for.cond638, !llvm.loop !71

for.end670:                                       ; preds = %for.cond.cleanup640
  call void @_Z7ReleaseIdEvPPT_(double** %fz_elem)
  call void @_Z7ReleaseIdEvPPT_(double** %fy_elem)
  call void @_Z7ReleaseIdEvPPT_(double** %fx_elem)
  br label %if.end671

if.end671:                                        ; preds = %for.end670, %for.end635
  %637 = bitcast [4 x [8 x double]]* %gamma to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %637) #3
  %638 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %638) #3
  %639 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %639) #3
  %640 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %640) #3
  %641 = bitcast i32* %numElem8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %641) #3
  %642 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %642) #3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double* %dvdx, double* %dvdy, double* %dvdz) #4 {
entry:
  %x0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %x4.addr = alloca double, align 8
  %x5.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %y4.addr = alloca double, align 8
  %y5.addr = alloca double, align 8
  %z0.addr = alloca double, align 8
  %z1.addr = alloca double, align 8
  %z2.addr = alloca double, align 8
  %z3.addr = alloca double, align 8
  %z4.addr = alloca double, align 8
  %z5.addr = alloca double, align 8
  %dvdx.addr = alloca double*, align 8
  %dvdy.addr = alloca double*, align 8
  %dvdz.addr = alloca double*, align 8
  %twelfth = alloca double, align 8
  store double %x0, double* %x0.addr, align 8, !tbaa !6
  store double %x1, double* %x1.addr, align 8, !tbaa !6
  store double %x2, double* %x2.addr, align 8, !tbaa !6
  store double %x3, double* %x3.addr, align 8, !tbaa !6
  store double %x4, double* %x4.addr, align 8, !tbaa !6
  store double %x5, double* %x5.addr, align 8, !tbaa !6
  store double %y0, double* %y0.addr, align 8, !tbaa !6
  store double %y1, double* %y1.addr, align 8, !tbaa !6
  store double %y2, double* %y2.addr, align 8, !tbaa !6
  store double %y3, double* %y3.addr, align 8, !tbaa !6
  store double %y4, double* %y4.addr, align 8, !tbaa !6
  store double %y5, double* %y5.addr, align 8, !tbaa !6
  store double %z0, double* %z0.addr, align 8, !tbaa !6
  store double %z1, double* %z1.addr, align 8, !tbaa !6
  store double %z2, double* %z2.addr, align 8, !tbaa !6
  store double %z3, double* %z3.addr, align 8, !tbaa !6
  store double %z4, double* %z4.addr, align 8, !tbaa !6
  store double %z5, double* %z5.addr, align 8, !tbaa !6
  store double* %dvdx, double** %dvdx.addr, align 8, !tbaa !2
  store double* %dvdy, double** %dvdy.addr, align 8, !tbaa !2
  store double* %dvdz, double** %dvdz.addr, align 8, !tbaa !2
  %0 = bitcast double* %twelfth to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  store double 0x3FB5555555555555, double* %twelfth, align 8, !tbaa !6
  %1 = load double, double* %y1.addr, align 8, !tbaa !6
  %2 = load double, double* %y2.addr, align 8, !tbaa !6
  %add = fadd double %1, %2
  %3 = load double, double* %z0.addr, align 8, !tbaa !6
  %4 = load double, double* %z1.addr, align 8, !tbaa !6
  %add1 = fadd double %3, %4
  %mul = fmul double %add, %add1
  %5 = load double, double* %y0.addr, align 8, !tbaa !6
  %6 = load double, double* %y1.addr, align 8, !tbaa !6
  %add2 = fadd double %5, %6
  %7 = load double, double* %z1.addr, align 8, !tbaa !6
  %8 = load double, double* %z2.addr, align 8, !tbaa !6
  %add3 = fadd double %7, %8
  %mul4 = fmul double %add2, %add3
  %sub = fsub double %mul, %mul4
  %9 = load double, double* %y0.addr, align 8, !tbaa !6
  %10 = load double, double* %y4.addr, align 8, !tbaa !6
  %add5 = fadd double %9, %10
  %11 = load double, double* %z3.addr, align 8, !tbaa !6
  %12 = load double, double* %z4.addr, align 8, !tbaa !6
  %add6 = fadd double %11, %12
  %mul7 = fmul double %add5, %add6
  %add8 = fadd double %sub, %mul7
  %13 = load double, double* %y3.addr, align 8, !tbaa !6
  %14 = load double, double* %y4.addr, align 8, !tbaa !6
  %add9 = fadd double %13, %14
  %15 = load double, double* %z0.addr, align 8, !tbaa !6
  %16 = load double, double* %z4.addr, align 8, !tbaa !6
  %add10 = fadd double %15, %16
  %mul11 = fmul double %add9, %add10
  %sub12 = fsub double %add8, %mul11
  %17 = load double, double* %y2.addr, align 8, !tbaa !6
  %18 = load double, double* %y5.addr, align 8, !tbaa !6
  %add13 = fadd double %17, %18
  %19 = load double, double* %z3.addr, align 8, !tbaa !6
  %20 = load double, double* %z5.addr, align 8, !tbaa !6
  %add14 = fadd double %19, %20
  %mul15 = fmul double %add13, %add14
  %sub16 = fsub double %sub12, %mul15
  %21 = load double, double* %y3.addr, align 8, !tbaa !6
  %22 = load double, double* %y5.addr, align 8, !tbaa !6
  %add17 = fadd double %21, %22
  %23 = load double, double* %z2.addr, align 8, !tbaa !6
  %24 = load double, double* %z5.addr, align 8, !tbaa !6
  %add18 = fadd double %23, %24
  %mul19 = fmul double %add17, %add18
  %add20 = fadd double %sub16, %mul19
  %25 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  store double %add20, double* %25, align 8, !tbaa !6
  %26 = load double, double* %x1.addr, align 8, !tbaa !6
  %27 = load double, double* %x2.addr, align 8, !tbaa !6
  %add21 = fadd double %26, %27
  %fneg = fneg double %add21
  %28 = load double, double* %z0.addr, align 8, !tbaa !6
  %29 = load double, double* %z1.addr, align 8, !tbaa !6
  %add22 = fadd double %28, %29
  %mul23 = fmul double %fneg, %add22
  %30 = load double, double* %x0.addr, align 8, !tbaa !6
  %31 = load double, double* %x1.addr, align 8, !tbaa !6
  %add24 = fadd double %30, %31
  %32 = load double, double* %z1.addr, align 8, !tbaa !6
  %33 = load double, double* %z2.addr, align 8, !tbaa !6
  %add25 = fadd double %32, %33
  %mul26 = fmul double %add24, %add25
  %add27 = fadd double %mul23, %mul26
  %34 = load double, double* %x0.addr, align 8, !tbaa !6
  %35 = load double, double* %x4.addr, align 8, !tbaa !6
  %add28 = fadd double %34, %35
  %36 = load double, double* %z3.addr, align 8, !tbaa !6
  %37 = load double, double* %z4.addr, align 8, !tbaa !6
  %add29 = fadd double %36, %37
  %mul30 = fmul double %add28, %add29
  %sub31 = fsub double %add27, %mul30
  %38 = load double, double* %x3.addr, align 8, !tbaa !6
  %39 = load double, double* %x4.addr, align 8, !tbaa !6
  %add32 = fadd double %38, %39
  %40 = load double, double* %z0.addr, align 8, !tbaa !6
  %41 = load double, double* %z4.addr, align 8, !tbaa !6
  %add33 = fadd double %40, %41
  %mul34 = fmul double %add32, %add33
  %add35 = fadd double %sub31, %mul34
  %42 = load double, double* %x2.addr, align 8, !tbaa !6
  %43 = load double, double* %x5.addr, align 8, !tbaa !6
  %add36 = fadd double %42, %43
  %44 = load double, double* %z3.addr, align 8, !tbaa !6
  %45 = load double, double* %z5.addr, align 8, !tbaa !6
  %add37 = fadd double %44, %45
  %mul38 = fmul double %add36, %add37
  %add39 = fadd double %add35, %mul38
  %46 = load double, double* %x3.addr, align 8, !tbaa !6
  %47 = load double, double* %x5.addr, align 8, !tbaa !6
  %add40 = fadd double %46, %47
  %48 = load double, double* %z2.addr, align 8, !tbaa !6
  %49 = load double, double* %z5.addr, align 8, !tbaa !6
  %add41 = fadd double %48, %49
  %mul42 = fmul double %add40, %add41
  %sub43 = fsub double %add39, %mul42
  %50 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  store double %sub43, double* %50, align 8, !tbaa !6
  %51 = load double, double* %y1.addr, align 8, !tbaa !6
  %52 = load double, double* %y2.addr, align 8, !tbaa !6
  %add44 = fadd double %51, %52
  %fneg45 = fneg double %add44
  %53 = load double, double* %x0.addr, align 8, !tbaa !6
  %54 = load double, double* %x1.addr, align 8, !tbaa !6
  %add46 = fadd double %53, %54
  %mul47 = fmul double %fneg45, %add46
  %55 = load double, double* %y0.addr, align 8, !tbaa !6
  %56 = load double, double* %y1.addr, align 8, !tbaa !6
  %add48 = fadd double %55, %56
  %57 = load double, double* %x1.addr, align 8, !tbaa !6
  %58 = load double, double* %x2.addr, align 8, !tbaa !6
  %add49 = fadd double %57, %58
  %mul50 = fmul double %add48, %add49
  %add51 = fadd double %mul47, %mul50
  %59 = load double, double* %y0.addr, align 8, !tbaa !6
  %60 = load double, double* %y4.addr, align 8, !tbaa !6
  %add52 = fadd double %59, %60
  %61 = load double, double* %x3.addr, align 8, !tbaa !6
  %62 = load double, double* %x4.addr, align 8, !tbaa !6
  %add53 = fadd double %61, %62
  %mul54 = fmul double %add52, %add53
  %sub55 = fsub double %add51, %mul54
  %63 = load double, double* %y3.addr, align 8, !tbaa !6
  %64 = load double, double* %y4.addr, align 8, !tbaa !6
  %add56 = fadd double %63, %64
  %65 = load double, double* %x0.addr, align 8, !tbaa !6
  %66 = load double, double* %x4.addr, align 8, !tbaa !6
  %add57 = fadd double %65, %66
  %mul58 = fmul double %add56, %add57
  %add59 = fadd double %sub55, %mul58
  %67 = load double, double* %y2.addr, align 8, !tbaa !6
  %68 = load double, double* %y5.addr, align 8, !tbaa !6
  %add60 = fadd double %67, %68
  %69 = load double, double* %x3.addr, align 8, !tbaa !6
  %70 = load double, double* %x5.addr, align 8, !tbaa !6
  %add61 = fadd double %69, %70
  %mul62 = fmul double %add60, %add61
  %add63 = fadd double %add59, %mul62
  %71 = load double, double* %y3.addr, align 8, !tbaa !6
  %72 = load double, double* %y5.addr, align 8, !tbaa !6
  %add64 = fadd double %71, %72
  %73 = load double, double* %x2.addr, align 8, !tbaa !6
  %74 = load double, double* %x5.addr, align 8, !tbaa !6
  %add65 = fadd double %73, %74
  %mul66 = fmul double %add64, %add65
  %sub67 = fsub double %add63, %mul66
  %75 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  store double %sub67, double* %75, align 8, !tbaa !6
  %76 = load double*, double** %dvdx.addr, align 8, !tbaa !2
  %77 = load double, double* %76, align 8, !tbaa !6
  %mul68 = fmul double %77, 0x3FB5555555555555
  store double %mul68, double* %76, align 8, !tbaa !6
  %78 = load double*, double** %dvdy.addr, align 8, !tbaa !2
  %79 = load double, double* %78, align 8, !tbaa !6
  %mul69 = fmul double %79, 0x3FB5555555555555
  store double %mul69, double* %78, align 8, !tbaa !6
  %80 = load double*, double** %dvdz.addr, align 8, !tbaa !2
  %81 = load double, double* %80, align 8, !tbaa !6
  %mul70 = fmul double %81, 0x3FB5555555555555
  store double %mul70, double* %80, align 8, !tbaa !6
  %82 = bitcast double* %twelfth to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ss, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_elemMass, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4CBRTd(double %arg) #4 comdat {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8, !tbaa !6
  %0 = load double, double* %arg.addr, align 8, !tbaa !6
  %call = call double @cbrt(double %0) #17
  ret double %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* %xd, double* %yd, double* %zd, [4 x double]* %hourgam, double %coefficient, double* %hgfx, double* %hgfy, double* %hgfz) #4 {
entry:
  %xd.addr = alloca double*, align 8
  %yd.addr = alloca double*, align 8
  %zd.addr = alloca double*, align 8
  %hourgam.addr = alloca [4 x double]*, align 8
  %coefficient.addr = alloca double, align 8
  %hgfx.addr = alloca double*, align 8
  %hgfy.addr = alloca double*, align 8
  %hgfz.addr = alloca double*, align 8
  %hxx = alloca [4 x double], align 16
  %i = alloca i32, align 4
  %i46 = alloca i32, align 4
  %i80 = alloca i32, align 4
  %i137 = alloca i32, align 4
  %i171 = alloca i32, align 4
  %i228 = alloca i32, align 4
  store double* %xd, double** %xd.addr, align 8, !tbaa !2
  store double* %yd, double** %yd.addr, align 8, !tbaa !2
  store double* %zd, double** %zd.addr, align 8, !tbaa !2
  store [4 x double]* %hourgam, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  store double %coefficient, double* %coefficient.addr, align 8, !tbaa !6
  store double* %hgfx, double** %hgfx.addr, align 8, !tbaa !2
  store double* %hgfy, double** %hgfy.addr, align 8, !tbaa !2
  store double* %hgfz, double** %hgfz.addr, align 8, !tbaa !2
  %0 = bitcast [4 x double]* %hxx to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 %idxprom
  %6 = load double, double* %arrayidx1, align 8, !tbaa !6
  %7 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx2, align 8, !tbaa !6
  %mul = fmul double %6, %8
  %9 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 1
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx3, i64 0, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8, !tbaa !6
  %12 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx6, align 8, !tbaa !6
  %mul7 = fmul double %11, %13
  %add = fadd double %mul, %mul7
  %14 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 2
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx8, i64 0, i64 %idxprom9
  %16 = load double, double* %arrayidx10, align 8, !tbaa !6
  %17 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds double, double* %17, i64 2
  %18 = load double, double* %arrayidx11, align 8, !tbaa !6
  %mul12 = fmul double %16, %18
  %add13 = fadd double %add, %mul12
  %19 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 3
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8, !tbaa !6
  %22 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds double, double* %22, i64 3
  %23 = load double, double* %arrayidx17, align 8, !tbaa !6
  %mul18 = fmul double %21, %23
  %add19 = fadd double %add13, %mul18
  %24 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 4
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx20, i64 0, i64 %idxprom21
  %26 = load double, double* %arrayidx22, align 8, !tbaa !6
  %27 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds double, double* %27, i64 4
  %28 = load double, double* %arrayidx23, align 8, !tbaa !6
  %mul24 = fmul double %26, %28
  %add25 = fadd double %add19, %mul24
  %29 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %29, i64 5
  %30 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx26, i64 0, i64 %idxprom27
  %31 = load double, double* %arrayidx28, align 8, !tbaa !6
  %32 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds double, double* %32, i64 5
  %33 = load double, double* %arrayidx29, align 8, !tbaa !6
  %mul30 = fmul double %31, %33
  %add31 = fadd double %add25, %mul30
  %34 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds [4 x double], [4 x double]* %34, i64 6
  %35 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx32, i64 0, i64 %idxprom33
  %36 = load double, double* %arrayidx34, align 8, !tbaa !6
  %37 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds double, double* %37, i64 6
  %38 = load double, double* %arrayidx35, align 8, !tbaa !6
  %mul36 = fmul double %36, %38
  %add37 = fadd double %add31, %mul36
  %39 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %39, i64 7
  %40 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx38, i64 0, i64 %idxprom39
  %41 = load double, double* %arrayidx40, align 8, !tbaa !6
  %42 = load double*, double** %xd.addr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds double, double* %42, i64 7
  %43 = load double, double* %arrayidx41, align 8, !tbaa !6
  %mul42 = fmul double %41, %43
  %add43 = fadd double %add37, %mul42
  %44 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom44
  store double %add43, double* %arrayidx45, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond.cleanup
  %46 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #3
  store i32 0, i32* %i46, align 4, !tbaa !8
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc77, %for.end
  %47 = load i32, i32* %i46, align 4, !tbaa !8
  %cmp48 = icmp slt i32 %47, 8
  br i1 %cmp48, label %for.body50, label %for.cond.cleanup49

for.cond.cleanup49:                               ; preds = %for.cond47
  %48 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  br label %for.end79

for.body50:                                       ; preds = %for.cond47
  %49 = load double, double* %coefficient.addr, align 8, !tbaa !6
  %50 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %51 = load i32, i32* %i46, align 4, !tbaa !8
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %50, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx52, i64 0, i64 0
  %52 = load double, double* %arrayidx53, align 8, !tbaa !6
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %53 = load double, double* %arrayidx54, align 16, !tbaa !6
  %mul55 = fmul double %52, %53
  %54 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %55 = load i32, i32* %i46, align 4, !tbaa !8
  %idxprom56 = sext i32 %55 to i64
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %54, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx57, i64 0, i64 1
  %56 = load double, double* %arrayidx58, align 8, !tbaa !6
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %57 = load double, double* %arrayidx59, align 8, !tbaa !6
  %mul60 = fmul double %56, %57
  %add61 = fadd double %mul55, %mul60
  %58 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %59 = load i32, i32* %i46, align 4, !tbaa !8
  %idxprom62 = sext i32 %59 to i64
  %arrayidx63 = getelementptr inbounds [4 x double], [4 x double]* %58, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx63, i64 0, i64 2
  %60 = load double, double* %arrayidx64, align 8, !tbaa !6
  %arrayidx65 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %61 = load double, double* %arrayidx65, align 16, !tbaa !6
  %mul66 = fmul double %60, %61
  %add67 = fadd double %add61, %mul66
  %62 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %63 = load i32, i32* %i46, align 4, !tbaa !8
  %idxprom68 = sext i32 %63 to i64
  %arrayidx69 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx69, i64 0, i64 3
  %64 = load double, double* %arrayidx70, align 8, !tbaa !6
  %arrayidx71 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %65 = load double, double* %arrayidx71, align 8, !tbaa !6
  %mul72 = fmul double %64, %65
  %add73 = fadd double %add67, %mul72
  %mul74 = fmul double %49, %add73
  %66 = load double*, double** %hgfx.addr, align 8, !tbaa !2
  %67 = load i32, i32* %i46, align 4, !tbaa !8
  %idxprom75 = sext i32 %67 to i64
  %arrayidx76 = getelementptr inbounds double, double* %66, i64 %idxprom75
  store double %mul74, double* %arrayidx76, align 8, !tbaa !6
  br label %for.inc77

for.inc77:                                        ; preds = %for.body50
  %68 = load i32, i32* %i46, align 4, !tbaa !8
  %inc78 = add nsw i32 %68, 1
  store i32 %inc78, i32* %i46, align 4, !tbaa !8
  br label %for.cond47, !llvm.loop !73

for.end79:                                        ; preds = %for.cond.cleanup49
  %69 = bitcast i32* %i80 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %69) #3
  store i32 0, i32* %i80, align 4, !tbaa !8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc134, %for.end79
  %70 = load i32, i32* %i80, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %70, 4
  br i1 %cmp82, label %for.body84, label %for.cond.cleanup83

for.cond.cleanup83:                               ; preds = %for.cond81
  %71 = bitcast i32* %i80 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  br label %for.end136

for.body84:                                       ; preds = %for.cond81
  %72 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds [4 x double], [4 x double]* %72, i64 0
  %73 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom86 = sext i32 %73 to i64
  %arrayidx87 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx85, i64 0, i64 %idxprom86
  %74 = load double, double* %arrayidx87, align 8, !tbaa !6
  %75 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds double, double* %75, i64 0
  %76 = load double, double* %arrayidx88, align 8, !tbaa !6
  %mul89 = fmul double %74, %76
  %77 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds [4 x double], [4 x double]* %77, i64 1
  %78 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom91 = sext i32 %78 to i64
  %arrayidx92 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx90, i64 0, i64 %idxprom91
  %79 = load double, double* %arrayidx92, align 8, !tbaa !6
  %80 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds double, double* %80, i64 1
  %81 = load double, double* %arrayidx93, align 8, !tbaa !6
  %mul94 = fmul double %79, %81
  %add95 = fadd double %mul89, %mul94
  %82 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds [4 x double], [4 x double]* %82, i64 2
  %83 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom97 = sext i32 %83 to i64
  %arrayidx98 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx96, i64 0, i64 %idxprom97
  %84 = load double, double* %arrayidx98, align 8, !tbaa !6
  %85 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds double, double* %85, i64 2
  %86 = load double, double* %arrayidx99, align 8, !tbaa !6
  %mul100 = fmul double %84, %86
  %add101 = fadd double %add95, %mul100
  %87 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds [4 x double], [4 x double]* %87, i64 3
  %88 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom103 = sext i32 %88 to i64
  %arrayidx104 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx102, i64 0, i64 %idxprom103
  %89 = load double, double* %arrayidx104, align 8, !tbaa !6
  %90 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds double, double* %90, i64 3
  %91 = load double, double* %arrayidx105, align 8, !tbaa !6
  %mul106 = fmul double %89, %91
  %add107 = fadd double %add101, %mul106
  %92 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds [4 x double], [4 x double]* %92, i64 4
  %93 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom109 = sext i32 %93 to i64
  %arrayidx110 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx108, i64 0, i64 %idxprom109
  %94 = load double, double* %arrayidx110, align 8, !tbaa !6
  %95 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds double, double* %95, i64 4
  %96 = load double, double* %arrayidx111, align 8, !tbaa !6
  %mul112 = fmul double %94, %96
  %add113 = fadd double %add107, %mul112
  %97 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %97, i64 5
  %98 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom115 = sext i32 %98 to i64
  %arrayidx116 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx114, i64 0, i64 %idxprom115
  %99 = load double, double* %arrayidx116, align 8, !tbaa !6
  %100 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds double, double* %100, i64 5
  %101 = load double, double* %arrayidx117, align 8, !tbaa !6
  %mul118 = fmul double %99, %101
  %add119 = fadd double %add113, %mul118
  %102 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds [4 x double], [4 x double]* %102, i64 6
  %103 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom121 = sext i32 %103 to i64
  %arrayidx122 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx120, i64 0, i64 %idxprom121
  %104 = load double, double* %arrayidx122, align 8, !tbaa !6
  %105 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds double, double* %105, i64 6
  %106 = load double, double* %arrayidx123, align 8, !tbaa !6
  %mul124 = fmul double %104, %106
  %add125 = fadd double %add119, %mul124
  %107 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %107, i64 7
  %108 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom127 = sext i32 %108 to i64
  %arrayidx128 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx126, i64 0, i64 %idxprom127
  %109 = load double, double* %arrayidx128, align 8, !tbaa !6
  %110 = load double*, double** %yd.addr, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds double, double* %110, i64 7
  %111 = load double, double* %arrayidx129, align 8, !tbaa !6
  %mul130 = fmul double %109, %111
  %add131 = fadd double %add125, %mul130
  %112 = load i32, i32* %i80, align 4, !tbaa !8
  %idxprom132 = sext i32 %112 to i64
  %arrayidx133 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom132
  store double %add131, double* %arrayidx133, align 8, !tbaa !6
  br label %for.inc134

for.inc134:                                       ; preds = %for.body84
  %113 = load i32, i32* %i80, align 4, !tbaa !8
  %inc135 = add nsw i32 %113, 1
  store i32 %inc135, i32* %i80, align 4, !tbaa !8
  br label %for.cond81, !llvm.loop !74

for.end136:                                       ; preds = %for.cond.cleanup83
  %114 = bitcast i32* %i137 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %114) #3
  store i32 0, i32* %i137, align 4, !tbaa !8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc168, %for.end136
  %115 = load i32, i32* %i137, align 4, !tbaa !8
  %cmp139 = icmp slt i32 %115, 8
  br i1 %cmp139, label %for.body141, label %for.cond.cleanup140

for.cond.cleanup140:                              ; preds = %for.cond138
  %116 = bitcast i32* %i137 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %116) #3
  br label %for.end170

for.body141:                                      ; preds = %for.cond138
  %117 = load double, double* %coefficient.addr, align 8, !tbaa !6
  %118 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %119 = load i32, i32* %i137, align 4, !tbaa !8
  %idxprom142 = sext i32 %119 to i64
  %arrayidx143 = getelementptr inbounds [4 x double], [4 x double]* %118, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx143, i64 0, i64 0
  %120 = load double, double* %arrayidx144, align 8, !tbaa !6
  %arrayidx145 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %121 = load double, double* %arrayidx145, align 16, !tbaa !6
  %mul146 = fmul double %120, %121
  %122 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %123 = load i32, i32* %i137, align 4, !tbaa !8
  %idxprom147 = sext i32 %123 to i64
  %arrayidx148 = getelementptr inbounds [4 x double], [4 x double]* %122, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx148, i64 0, i64 1
  %124 = load double, double* %arrayidx149, align 8, !tbaa !6
  %arrayidx150 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %125 = load double, double* %arrayidx150, align 8, !tbaa !6
  %mul151 = fmul double %124, %125
  %add152 = fadd double %mul146, %mul151
  %126 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %127 = load i32, i32* %i137, align 4, !tbaa !8
  %idxprom153 = sext i32 %127 to i64
  %arrayidx154 = getelementptr inbounds [4 x double], [4 x double]* %126, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx154, i64 0, i64 2
  %128 = load double, double* %arrayidx155, align 8, !tbaa !6
  %arrayidx156 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %129 = load double, double* %arrayidx156, align 16, !tbaa !6
  %mul157 = fmul double %128, %129
  %add158 = fadd double %add152, %mul157
  %130 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %131 = load i32, i32* %i137, align 4, !tbaa !8
  %idxprom159 = sext i32 %131 to i64
  %arrayidx160 = getelementptr inbounds [4 x double], [4 x double]* %130, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx160, i64 0, i64 3
  %132 = load double, double* %arrayidx161, align 8, !tbaa !6
  %arrayidx162 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %133 = load double, double* %arrayidx162, align 8, !tbaa !6
  %mul163 = fmul double %132, %133
  %add164 = fadd double %add158, %mul163
  %mul165 = fmul double %117, %add164
  %134 = load double*, double** %hgfy.addr, align 8, !tbaa !2
  %135 = load i32, i32* %i137, align 4, !tbaa !8
  %idxprom166 = sext i32 %135 to i64
  %arrayidx167 = getelementptr inbounds double, double* %134, i64 %idxprom166
  store double %mul165, double* %arrayidx167, align 8, !tbaa !6
  br label %for.inc168

for.inc168:                                       ; preds = %for.body141
  %136 = load i32, i32* %i137, align 4, !tbaa !8
  %inc169 = add nsw i32 %136, 1
  store i32 %inc169, i32* %i137, align 4, !tbaa !8
  br label %for.cond138, !llvm.loop !75

for.end170:                                       ; preds = %for.cond.cleanup140
  %137 = bitcast i32* %i171 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %137) #3
  store i32 0, i32* %i171, align 4, !tbaa !8
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc225, %for.end170
  %138 = load i32, i32* %i171, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %138, 4
  br i1 %cmp173, label %for.body175, label %for.cond.cleanup174

for.cond.cleanup174:                              ; preds = %for.cond172
  %139 = bitcast i32* %i171 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #3
  br label %for.end227

for.body175:                                      ; preds = %for.cond172
  %140 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx176 = getelementptr inbounds [4 x double], [4 x double]* %140, i64 0
  %141 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom177 = sext i32 %141 to i64
  %arrayidx178 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx176, i64 0, i64 %idxprom177
  %142 = load double, double* %arrayidx178, align 8, !tbaa !6
  %143 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx179 = getelementptr inbounds double, double* %143, i64 0
  %144 = load double, double* %arrayidx179, align 8, !tbaa !6
  %mul180 = fmul double %142, %144
  %145 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx181 = getelementptr inbounds [4 x double], [4 x double]* %145, i64 1
  %146 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom182 = sext i32 %146 to i64
  %arrayidx183 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx181, i64 0, i64 %idxprom182
  %147 = load double, double* %arrayidx183, align 8, !tbaa !6
  %148 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds double, double* %148, i64 1
  %149 = load double, double* %arrayidx184, align 8, !tbaa !6
  %mul185 = fmul double %147, %149
  %add186 = fadd double %mul180, %mul185
  %150 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx187 = getelementptr inbounds [4 x double], [4 x double]* %150, i64 2
  %151 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom188 = sext i32 %151 to i64
  %arrayidx189 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx187, i64 0, i64 %idxprom188
  %152 = load double, double* %arrayidx189, align 8, !tbaa !6
  %153 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds double, double* %153, i64 2
  %154 = load double, double* %arrayidx190, align 8, !tbaa !6
  %mul191 = fmul double %152, %154
  %add192 = fadd double %add186, %mul191
  %155 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx193 = getelementptr inbounds [4 x double], [4 x double]* %155, i64 3
  %156 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom194 = sext i32 %156 to i64
  %arrayidx195 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx193, i64 0, i64 %idxprom194
  %157 = load double, double* %arrayidx195, align 8, !tbaa !6
  %158 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx196 = getelementptr inbounds double, double* %158, i64 3
  %159 = load double, double* %arrayidx196, align 8, !tbaa !6
  %mul197 = fmul double %157, %159
  %add198 = fadd double %add192, %mul197
  %160 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx199 = getelementptr inbounds [4 x double], [4 x double]* %160, i64 4
  %161 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom200 = sext i32 %161 to i64
  %arrayidx201 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx199, i64 0, i64 %idxprom200
  %162 = load double, double* %arrayidx201, align 8, !tbaa !6
  %163 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds double, double* %163, i64 4
  %164 = load double, double* %arrayidx202, align 8, !tbaa !6
  %mul203 = fmul double %162, %164
  %add204 = fadd double %add198, %mul203
  %165 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx205 = getelementptr inbounds [4 x double], [4 x double]* %165, i64 5
  %166 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom206 = sext i32 %166 to i64
  %arrayidx207 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx205, i64 0, i64 %idxprom206
  %167 = load double, double* %arrayidx207, align 8, !tbaa !6
  %168 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx208 = getelementptr inbounds double, double* %168, i64 5
  %169 = load double, double* %arrayidx208, align 8, !tbaa !6
  %mul209 = fmul double %167, %169
  %add210 = fadd double %add204, %mul209
  %170 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx211 = getelementptr inbounds [4 x double], [4 x double]* %170, i64 6
  %171 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom212 = sext i32 %171 to i64
  %arrayidx213 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx211, i64 0, i64 %idxprom212
  %172 = load double, double* %arrayidx213, align 8, !tbaa !6
  %173 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx214 = getelementptr inbounds double, double* %173, i64 6
  %174 = load double, double* %arrayidx214, align 8, !tbaa !6
  %mul215 = fmul double %172, %174
  %add216 = fadd double %add210, %mul215
  %175 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %arrayidx217 = getelementptr inbounds [4 x double], [4 x double]* %175, i64 7
  %176 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom218 = sext i32 %176 to i64
  %arrayidx219 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx217, i64 0, i64 %idxprom218
  %177 = load double, double* %arrayidx219, align 8, !tbaa !6
  %178 = load double*, double** %zd.addr, align 8, !tbaa !2
  %arrayidx220 = getelementptr inbounds double, double* %178, i64 7
  %179 = load double, double* %arrayidx220, align 8, !tbaa !6
  %mul221 = fmul double %177, %179
  %add222 = fadd double %add216, %mul221
  %180 = load i32, i32* %i171, align 4, !tbaa !8
  %idxprom223 = sext i32 %180 to i64
  %arrayidx224 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom223
  store double %add222, double* %arrayidx224, align 8, !tbaa !6
  br label %for.inc225

for.inc225:                                       ; preds = %for.body175
  %181 = load i32, i32* %i171, align 4, !tbaa !8
  %inc226 = add nsw i32 %181, 1
  store i32 %inc226, i32* %i171, align 4, !tbaa !8
  br label %for.cond172, !llvm.loop !76

for.end227:                                       ; preds = %for.cond.cleanup174
  %182 = bitcast i32* %i228 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %182) #3
  store i32 0, i32* %i228, align 4, !tbaa !8
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc259, %for.end227
  %183 = load i32, i32* %i228, align 4, !tbaa !8
  %cmp230 = icmp slt i32 %183, 8
  br i1 %cmp230, label %for.body232, label %for.cond.cleanup231

for.cond.cleanup231:                              ; preds = %for.cond229
  %184 = bitcast i32* %i228 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %184) #3
  br label %for.end261

for.body232:                                      ; preds = %for.cond229
  %185 = load double, double* %coefficient.addr, align 8, !tbaa !6
  %186 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %187 = load i32, i32* %i228, align 4, !tbaa !8
  %idxprom233 = sext i32 %187 to i64
  %arrayidx234 = getelementptr inbounds [4 x double], [4 x double]* %186, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx234, i64 0, i64 0
  %188 = load double, double* %arrayidx235, align 8, !tbaa !6
  %arrayidx236 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %189 = load double, double* %arrayidx236, align 16, !tbaa !6
  %mul237 = fmul double %188, %189
  %190 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %191 = load i32, i32* %i228, align 4, !tbaa !8
  %idxprom238 = sext i32 %191 to i64
  %arrayidx239 = getelementptr inbounds [4 x double], [4 x double]* %190, i64 %idxprom238
  %arrayidx240 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx239, i64 0, i64 1
  %192 = load double, double* %arrayidx240, align 8, !tbaa !6
  %arrayidx241 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %193 = load double, double* %arrayidx241, align 8, !tbaa !6
  %mul242 = fmul double %192, %193
  %add243 = fadd double %mul237, %mul242
  %194 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %195 = load i32, i32* %i228, align 4, !tbaa !8
  %idxprom244 = sext i32 %195 to i64
  %arrayidx245 = getelementptr inbounds [4 x double], [4 x double]* %194, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx245, i64 0, i64 2
  %196 = load double, double* %arrayidx246, align 8, !tbaa !6
  %arrayidx247 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %197 = load double, double* %arrayidx247, align 16, !tbaa !6
  %mul248 = fmul double %196, %197
  %add249 = fadd double %add243, %mul248
  %198 = load [4 x double]*, [4 x double]** %hourgam.addr, align 8, !tbaa !2
  %199 = load i32, i32* %i228, align 4, !tbaa !8
  %idxprom250 = sext i32 %199 to i64
  %arrayidx251 = getelementptr inbounds [4 x double], [4 x double]* %198, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx251, i64 0, i64 3
  %200 = load double, double* %arrayidx252, align 8, !tbaa !6
  %arrayidx253 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %201 = load double, double* %arrayidx253, align 8, !tbaa !6
  %mul254 = fmul double %200, %201
  %add255 = fadd double %add249, %mul254
  %mul256 = fmul double %185, %add255
  %202 = load double*, double** %hgfz.addr, align 8, !tbaa !2
  %203 = load i32, i32* %i228, align 4, !tbaa !8
  %idxprom257 = sext i32 %203 to i64
  %arrayidx258 = getelementptr inbounds double, double* %202, i64 %idxprom257
  store double %mul256, double* %arrayidx258, align 8, !tbaa !6
  br label %for.inc259

for.inc259:                                       ; preds = %for.body232
  %204 = load i32, i32* %i228, align 4, !tbaa !8
  %inc260 = add nsw i32 %204, 1
  store i32 %inc260, i32* %i228, align 4, !tbaa !8
  br label %for.cond229, !llvm.loop !77

for.end261:                                       ; preds = %for.cond.cleanup231
  %205 = bitcast [4 x double]* %hxx to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %205) #3
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local double @cbrt(double) #12

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_nodalMass, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xdd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ydd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zdd, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 85
  ret i32* %m_sizeX
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmX) #3
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmXEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmX, i64 %conv) #3
  %1 = load i32, i32* %call, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmY) #3
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmYEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmY, i64 %conv) #3
  %1 = load i32, i32* %call, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmZ) #3
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmZEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmZ, i64 %conv) #3
  %1 = load i32, i32* %call, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %call = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #3
  %call3 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this1) #3
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0
  store i32* %call3, i32** %coerce.dive4, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp2) #3
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #3
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #3
  ret i1 %call5
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !2
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !2
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !2
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load i32*, i32** %call, align 8, !tbaa !2
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !2
  %call1 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load i32*, i32** %call1, align 8, !tbaa !2
  %cmp = icmp eq i32* %1, %3
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** nonnull align 8 dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** nonnull align 8 dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i32** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !2
  store i32** %__i, i32*** %__i.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8, !tbaa !2
  %1 = load i32*, i32** %0, align 8, !tbaa !2
  store i32* %1, i32** %_M_current, align 8, !tbaa !78
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4FABSd(double %arg) #4 comdat {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8, !tbaa !6
  %0 = load double, double* %arg.addr, align 8, !tbaa !6
  %1 = call double @llvm.fabs.f64(double %0)
  ret double %1
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #13

; Function Attrs: inlinehint uwtable
define internal void @_ZL20CalcLagrangeElementsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem = alloca i32, align 4
  %deltatime = alloca double, align 8
  %k = alloca i32, align 4
  %vdov = alloca double, align 8
  %vdovthird = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %4 = bitcast double* %deltatime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %5)
  %6 = load double, double* %call1, align 8, !tbaa !6
  store double %6, double* %deltatime, align 8, !tbaa !6
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %8 = load i32, i32* %numElem, align 4, !tbaa !8
  call void @_ZN6Domain15AllocateStrainsEi(%class.Domain* %7, i32 %8)
  %9 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %10 = load double, double* %deltatime, align 8, !tbaa !6
  %11 = load i32, i32* %numElem, align 4, !tbaa !8
  call void @_Z22CalcKinematicsForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %9, double %10, i32 %11)
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %k, align 4, !tbaa !8
  %14 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %13, %14
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %15 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast double* %vdov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  %17 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %18 = load i32, i32* %k, align 4, !tbaa !8
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %17, i32 %18)
  %19 = load double, double* %call3, align 8, !tbaa !6
  %20 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %21 = load i32, i32* %k, align 4, !tbaa !8
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %20, i32 %21)
  %22 = load double, double* %call4, align 8, !tbaa !6
  %add = fadd double %19, %22
  %23 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %24 = load i32, i32* %k, align 4, !tbaa !8
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %23, i32 %24)
  %25 = load double, double* %call5, align 8, !tbaa !6
  %add6 = fadd double %add, %25
  store double %add6, double* %vdov, align 8, !tbaa !6
  %26 = bitcast double* %vdovthird to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #3
  %27 = load double, double* %vdov, align 8, !tbaa !6
  %div = fdiv double %27, 3.000000e+00
  store double %div, double* %vdovthird, align 8, !tbaa !6
  %28 = load double, double* %vdov, align 8, !tbaa !6
  %29 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %30 = load i32, i32* %k, align 4, !tbaa !8
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %29, i32 %30)
  store double %28, double* %call7, align 8, !tbaa !6
  %31 = load double, double* %vdovthird, align 8, !tbaa !6
  %32 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %33 = load i32, i32* %k, align 4, !tbaa !8
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %32, i32 %33)
  %34 = load double, double* %call8, align 8, !tbaa !6
  %sub = fsub double %34, %31
  store double %sub, double* %call8, align 8, !tbaa !6
  %35 = load double, double* %vdovthird, align 8, !tbaa !6
  %36 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %37 = load i32, i32* %k, align 4, !tbaa !8
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %36, i32 %37)
  %38 = load double, double* %call9, align 8, !tbaa !6
  %sub10 = fsub double %38, %35
  store double %sub10, double* %call9, align 8, !tbaa !6
  %39 = load double, double* %vdovthird, align 8, !tbaa !6
  %40 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %41 = load i32, i32* %k, align 4, !tbaa !8
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %40, i32 %41)
  %42 = load double, double* %call11, align 8, !tbaa !6
  %sub12 = fsub double %42, %39
  store double %sub12, double* %call11, align 8, !tbaa !6
  %43 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %44 = load i32, i32* %k, align 4, !tbaa !8
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %43, i32 %44)
  %45 = load double, double* %call13, align 8, !tbaa !6
  %cmp14 = fcmp ole double %45, 0.000000e+00
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.body
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %for.body
  %46 = bitcast double* %vdovthird to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #3
  %47 = bitcast double* %vdov to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %48 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond.cleanup
  %49 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* %49)
  %50 = bitcast double* %deltatime to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #3
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry
  %51 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL13CalcQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem = alloca i32, align 4
  %allElem = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %allElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = load i32, i32* %numElem, align 4, !tbaa !8
  %6 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %6)
  %7 = load i32, i32* %call1, align 4, !tbaa !8
  %mul = mul nsw i32 2, %7
  %8 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %8)
  %9 = load i32, i32* %call2, align 4, !tbaa !8
  %mul3 = mul nsw i32 %mul, %9
  %add = add nsw i32 %5, %mul3
  %10 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %10)
  %11 = load i32, i32* %call4, align 4, !tbaa !8
  %mul5 = mul nsw i32 2, %11
  %12 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %12)
  %13 = load i32, i32* %call6, align 4, !tbaa !8
  %mul7 = mul nsw i32 %mul5, %13
  %add8 = add nsw i32 %add, %mul7
  %14 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call9 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %14)
  %15 = load i32, i32* %call9, align 4, !tbaa !8
  %mul10 = mul nsw i32 2, %15
  %16 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %16)
  %17 = load i32, i32* %call11, align 4, !tbaa !8
  %mul12 = mul nsw i32 %mul10, %17
  %add13 = add nsw i32 %add8, %mul12
  store i32 %add13, i32* %allElem, align 4, !tbaa !8
  %18 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %19 = load i32, i32* %numElem, align 4, !tbaa !8
  %20 = load i32, i32* %allElem, align 4, !tbaa !8
  call void @_ZN6Domain17AllocateGradientsEii(%class.Domain* %18, i32 %19, i32 %20)
  %21 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL31CalcMonotonicQGradientsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %21)
  %22 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZL22CalcMonotonicQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %22)
  %23 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  call void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* %23)
  %24 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  store i32 -1, i32* %idx, align 4, !tbaa !8
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i32, i32* %i, align 4, !tbaa !8
  %27 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %26, %27
  br i1 %cmp14, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %28 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %28, i32 %29)
  %30 = load double, double* %call15, align 8, !tbaa !6
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call16 = call double @_ZNK6Domain5qstopEv(%class.Domain* %31)
  %cmp17 = fcmp ogt double %30, %call16
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !8
  store i32 %32, i32* %idx, align 4, !tbaa !8
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !81

cleanup:                                          ; preds = %if.then18, %for.cond.cleanup
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  br label %for.end

for.end:                                          ; preds = %cleanup
  %35 = load i32, i32* %idx, align 4, !tbaa !8
  %cmp19 = icmp sge i32 %35, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @exit(i32 -2) #16
  unreachable

if.end21:                                         ; preds = %for.end
  %36 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %allElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  %38 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL31ApplyMaterialPropertiesForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem = alloca i32, align 4
  %eosvmin = alloca double, align 8
  %eosvmax = alloca double, align 8
  %vnewc = alloca double*, align 8
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i25 = alloca i32, align 4
  %i41 = alloca i32, align 4
  %vc = alloca double, align 8
  %r = alloca i32, align 4
  %numElemReg = alloca i32, align 4
  %regElemList = alloca i32*, align 8
  %rep = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end90

if.then:                                          ; preds = %entry
  %4 = bitcast double* %eosvmin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call double @_ZNK6Domain7eosvminEv(%class.Domain* %5)
  store double %call1, double* %eosvmin, align 8, !tbaa !6
  %6 = bitcast double* %eosvmax to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call double @_ZNK6Domain7eosvmaxEv(%class.Domain* %7)
  store double %call2, double* %eosvmax, align 8, !tbaa !6
  %8 = bitcast double** %vnewc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load i32, i32* %numElem, align 4, !tbaa !8
  %conv = sext i32 %9 to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call3, double** %vnewc, align 8, !tbaa !2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %12 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %14, i32 %15)
  %16 = load double, double* %call5, align 8, !tbaa !6
  %17 = load double*, double** %vnewc, align 8, !tbaa !2
  %18 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds double, double* %17, i64 %idxprom
  store double %16, double* %arrayidx, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond.cleanup
  %20 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp6 = fcmp une double %20, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end22

if.then7:                                         ; preds = %for.end
  %21 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  store i32 0, i32* %i8, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %if.then7
  %22 = load i32, i32* %i8, align 4, !tbaa !8
  %23 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %22, %23
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  %24 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  br label %for.end21

for.body12:                                       ; preds = %for.cond9
  %25 = load double*, double** %vnewc, align 8, !tbaa !2
  %26 = load i32, i32* %i8, align 4, !tbaa !8
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds double, double* %25, i64 %idxprom13
  %27 = load double, double* %arrayidx14, align 8, !tbaa !6
  %28 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp15 = fcmp olt double %27, %28
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body12
  %29 = load double, double* %eosvmin, align 8, !tbaa !6
  %30 = load double*, double** %vnewc, align 8, !tbaa !2
  %31 = load i32, i32* %i8, align 4, !tbaa !8
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 %idxprom17
  store double %29, double* %arrayidx18, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then16, %for.body12
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %32 = load i32, i32* %i8, align 4, !tbaa !8
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* %i8, align 4, !tbaa !8
  br label %for.cond9, !llvm.loop !83

for.end21:                                        ; preds = %for.cond.cleanup11
  br label %if.end22

if.end22:                                         ; preds = %for.end21, %for.end
  %33 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp23 = fcmp une double %33, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %if.end22
  %34 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #3
  store i32 0, i32* %i25, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc37, %if.then24
  %35 = load i32, i32* %i25, align 4, !tbaa !8
  %36 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %35, %36
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  %37 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  br label %for.end39

for.body29:                                       ; preds = %for.cond26
  %38 = load double*, double** %vnewc, align 8, !tbaa !2
  %39 = load i32, i32* %i25, align 4, !tbaa !8
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds double, double* %38, i64 %idxprom30
  %40 = load double, double* %arrayidx31, align 8, !tbaa !6
  %41 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp32 = fcmp ogt double %40, %41
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.body29
  %42 = load double, double* %eosvmax, align 8, !tbaa !6
  %43 = load double*, double** %vnewc, align 8, !tbaa !2
  %44 = load i32, i32* %i25, align 4, !tbaa !8
  %idxprom34 = sext i32 %44 to i64
  %arrayidx35 = getelementptr inbounds double, double* %43, i64 %idxprom34
  store double %42, double* %arrayidx35, align 8, !tbaa !6
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %for.body29
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %45 = load i32, i32* %i25, align 4, !tbaa !8
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %i25, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !84

for.end39:                                        ; preds = %for.cond.cleanup28
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.end22
  %46 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #3
  store i32 0, i32* %i41, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc62, %if.end40
  %47 = load i32, i32* %i41, align 4, !tbaa !8
  %48 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp43 = icmp slt i32 %47, %48
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44

for.cond.cleanup44:                               ; preds = %for.cond42
  %49 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  br label %for.end64

for.body45:                                       ; preds = %for.cond42
  %50 = bitcast double* %vc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %50) #3
  %51 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %52 = load i32, i32* %i41, align 4, !tbaa !8
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %51, i32 %52)
  %53 = load double, double* %call46, align 8, !tbaa !6
  store double %53, double* %vc, align 8, !tbaa !6
  %54 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp47 = fcmp une double %54, 0.000000e+00
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %for.body45
  %55 = load double, double* %vc, align 8, !tbaa !6
  %56 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp49 = fcmp olt double %55, %56
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  %57 = load double, double* %eosvmin, align 8, !tbaa !6
  store double %57, double* %vc, align 8, !tbaa !6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.body45
  %58 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp53 = fcmp une double %58, 0.000000e+00
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end52
  %59 = load double, double* %vc, align 8, !tbaa !6
  %60 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp55 = fcmp ogt double %59, %60
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  %61 = load double, double* %eosvmax, align 8, !tbaa !6
  store double %61, double* %vc, align 8, !tbaa !6
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then54
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end52
  %62 = load double, double* %vc, align 8, !tbaa !6
  %cmp59 = fcmp ole double %62, 0.000000e+00
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @exit(i32 -1) #16
  unreachable

if.end61:                                         ; preds = %if.end58
  %63 = bitcast double* %vc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #3
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %64 = load i32, i32* %i41, align 4, !tbaa !8
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %i41, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !85

for.end64:                                        ; preds = %for.cond.cleanup44
  %65 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %65) #3
  store i32 0, i32* %r, align 4, !tbaa !8
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc87, %for.end64
  %66 = load i32, i32* %r, align 4, !tbaa !8
  %67 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call66 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %67)
  %68 = load i32, i32* %call66, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %66, %68
  br i1 %cmp67, label %for.body69, label %for.cond.cleanup68

for.cond.cleanup68:                               ; preds = %for.cond65
  %69 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  br label %for.end89

for.body69:                                       ; preds = %for.cond65
  %70 = bitcast i32* %numElemReg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %70) #3
  %71 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %72 = load i32, i32* %r, align 4, !tbaa !8
  %call70 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %71, i32 %72)
  %73 = load i32, i32* %call70, align 4, !tbaa !8
  store i32 %73, i32* %numElemReg, align 4, !tbaa !8
  %74 = bitcast i32** %regElemList to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %74) #3
  %75 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %76 = load i32, i32* %r, align 4, !tbaa !8
  %call71 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %75, i32 %76)
  store i32* %call71, i32** %regElemList, align 8, !tbaa !2
  %77 = bitcast i32* %rep to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %77) #3
  %78 = load i32, i32* %r, align 4, !tbaa !8
  %79 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call72 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %79)
  %80 = load i32, i32* %call72, align 4, !tbaa !8
  %div = sdiv i32 %80, 2
  %cmp73 = icmp slt i32 %78, %div
  br i1 %cmp73, label %if.then74, label %if.else

if.then74:                                        ; preds = %for.body69
  store i32 1, i32* %rep, align 4, !tbaa !8
  br label %if.end86

if.else:                                          ; preds = %for.body69
  %81 = load i32, i32* %r, align 4, !tbaa !8
  %82 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call75 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %82)
  %83 = load i32, i32* %call75, align 4, !tbaa !8
  %84 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call76 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %84)
  %85 = load i32, i32* %call76, align 4, !tbaa !8
  %add = add nsw i32 %85, 15
  %div77 = sdiv i32 %add, 20
  %sub = sub nsw i32 %83, %div77
  %cmp78 = icmp slt i32 %81, %sub
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %if.else
  %86 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call80 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %86)
  %87 = load i32, i32* %call80, align 4, !tbaa !8
  %add81 = add nsw i32 1, %87
  store i32 %add81, i32* %rep, align 4, !tbaa !8
  br label %if.end85

if.else82:                                        ; preds = %if.else
  %88 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call83 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %88)
  %89 = load i32, i32* %call83, align 4, !tbaa !8
  %add84 = add nsw i32 1, %89
  %mul = mul nsw i32 10, %add84
  store i32 %mul, i32* %rep, align 4, !tbaa !8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then74
  %90 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %91 = load double*, double** %vnewc, align 8, !tbaa !2
  %92 = load i32, i32* %numElemReg, align 4, !tbaa !8
  %93 = load i32*, i32** %regElemList, align 8, !tbaa !2
  %94 = load i32, i32* %rep, align 4, !tbaa !8
  call void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nonnull align 8 dereferenceable(1312) %90, double* %91, i32 %92, i32* %93, i32 %94)
  %95 = bitcast i32* %rep to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #3
  %96 = bitcast i32** %regElemList to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #3
  %97 = bitcast i32* %numElemReg to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #3
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86
  %98 = load i32, i32* %r, align 4, !tbaa !8
  %inc88 = add nsw i32 %98, 1
  store i32 %inc88, i32* %r, align 4, !tbaa !8
  br label %for.cond65, !llvm.loop !86

for.end89:                                        ; preds = %for.cond.cleanup68
  call void @_Z7ReleaseIdEvPPT_(double** %vnewc)
  %99 = bitcast double** %vnewc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #3
  %100 = bitcast double* %eosvmax to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %100) #3
  %101 = bitcast double* %eosvmin to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #3
  br label %if.end90

if.end90:                                         ; preds = %for.end89, %entry
  %102 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL21UpdateVolumesForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %v_cut, i32 %length) #4 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %v_cut.addr = alloca double, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmpV = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double %v_cut, double* %v_cut.addr, align 8, !tbaa !6
  store i32 %length, i32* %length.addr, align 4, !tbaa !8
  %0 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !tbaa !8
  %3 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast double* %tmpV to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3
  %6 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %6, i32 %7)
  %8 = load double, double* %call, align 8, !tbaa !6
  store double %8, double* %tmpV, align 8, !tbaa !6
  %9 = load double, double* %tmpV, align 8, !tbaa !6
  %sub = fsub double %9, 1.000000e+00
  %call2 = call double @_Z4FABSd(double %sub)
  %10 = load double, double* %v_cut.addr, align 8, !tbaa !6
  %cmp3 = fcmp olt double %call2, %10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  store double 1.000000e+00, double* %tmpV, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %11 = load double, double* %tmpV, align 8, !tbaa !6
  %12 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %12, i32 %13)
  store double %11, double* %call5, align 8, !tbaa !6
  %14 = bitcast double* %tmpV to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5v_cutEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_v_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 54
  %0 = load double, double* %m_v_cut, align 8, !tbaa !88
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain15AllocateStrainsEi(%class.Domain* %this, i32 %numElem) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numElem.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 29
  store double* %call, double** %m_dxx, align 8, !tbaa !14
  %1 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv2 = sext i32 %1 to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 30
  store double* %call3, double** %m_dyy, align 8, !tbaa !18
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv4 = sext i32 %2 to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 31
  store double* %call5, double** %m_dzz, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 47
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_vdov, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 31
  call void @_Z7ReleaseIdEvPPT_(double** %m_dzz)
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 30
  call void @_Z7ReleaseIdEvPPT_(double** %m_dyy)
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 29
  call void @_Z7ReleaseIdEvPPT_(double** %m_dxx)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 86
  ret i32* %m_sizeY
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 87
  ret i32* %m_sizeZ
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain17AllocateGradientsEii(%class.Domain* %this, i32 %numElem, i32 %allElem) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numElem.addr = alloca i32, align 4
  %allElem.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !8
  store i32 %allElem, i32* %allElem.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 35
  store double* %call, double** %m_delx_xi, align 8, !tbaa !89
  %1 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv2 = sext i32 %1 to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 36
  store double* %call3, double** %m_delx_eta, align 8, !tbaa !90
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !8
  %conv4 = sext i32 %2 to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 37
  store double* %call5, double** %m_delx_zeta, align 8, !tbaa !91
  %3 = load i32, i32* %allElem.addr, align 4, !tbaa !8
  %conv6 = sext i32 %3 to i64
  %call7 = call double* @_Z8AllocateIdEPT_m(i64 %conv6)
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 32
  store double* %call7, double** %m_delv_xi, align 8, !tbaa !92
  %4 = load i32, i32* %allElem.addr, align 4, !tbaa !8
  %conv8 = sext i32 %4 to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv8)
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 33
  store double* %call9, double** %m_delv_eta, align 8, !tbaa !93
  %5 = load i32, i32* %allElem.addr, align 4, !tbaa !8
  %conv10 = sext i32 %5 to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 34
  store double* %call11, double** %m_delv_zeta, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL31CalcMonotonicQGradientsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %numElem = alloca i32, align 4
  %i = alloca i32, align 4
  %ptiny = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %az = alloca double, align 8
  %dxv = alloca double, align 8
  %dyv = alloca double, align 8
  %dzv = alloca double, align 8
  %elemToNode = alloca i32*, align 8
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n3 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %n5 = alloca i32, align 4
  %n6 = alloca i32, align 4
  %n7 = alloca i32, align 4
  %x0 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %x5 = alloca double, align 8
  %x6 = alloca double, align 8
  %x7 = alloca double, align 8
  %y0 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  %y5 = alloca double, align 8
  %y6 = alloca double, align 8
  %y7 = alloca double, align 8
  %z0 = alloca double, align 8
  %z1 = alloca double, align 8
  %z2 = alloca double, align 8
  %z3 = alloca double, align 8
  %z4 = alloca double, align 8
  %z5 = alloca double, align 8
  %z6 = alloca double, align 8
  %z7 = alloca double, align 8
  %xv0 = alloca double, align 8
  %xv1 = alloca double, align 8
  %xv2 = alloca double, align 8
  %xv3 = alloca double, align 8
  %xv4 = alloca double, align 8
  %xv5 = alloca double, align 8
  %xv6 = alloca double, align 8
  %xv7 = alloca double, align 8
  %yv0 = alloca double, align 8
  %yv1 = alloca double, align 8
  %yv2 = alloca double, align 8
  %yv3 = alloca double, align 8
  %yv4 = alloca double, align 8
  %yv5 = alloca double, align 8
  %yv6 = alloca double, align 8
  %yv7 = alloca double, align 8
  %zv0 = alloca double, align 8
  %zv1 = alloca double, align 8
  %zv2 = alloca double, align 8
  %zv3 = alloca double, align 8
  %zv4 = alloca double, align 8
  %zv5 = alloca double, align 8
  %zv6 = alloca double, align 8
  %zv7 = alloca double, align 8
  %vol = alloca double, align 8
  %norm = alloca double, align 8
  %dxj = alloca double, align 8
  %dyj = alloca double, align 8
  %dzj = alloca double, align 8
  %dxi = alloca double, align 8
  %dyi = alloca double, align 8
  %dzi = alloca double, align 8
  %dxk = alloca double, align 8
  %dyk = alloca double, align 8
  %dzk = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %1)
  %2 = load i32, i32* %call, align 4, !tbaa !8
  store i32 %2, i32* %numElem, align 4, !tbaa !8
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !8
  %5 = load i32, i32* %numElem, align 4, !tbaa !8
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast double* %ptiny to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  store double 0x38754484932D2E72, double* %ptiny, align 8, !tbaa !6
  %8 = bitcast double* %ax to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast double* %ay to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = bitcast double* %az to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = bitcast double* %dxv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  %12 = bitcast double* %dyv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = bitcast double* %dzv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  %14 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !8
  %call1 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %15, i32 %16)
  store i32* %call1, i32** %elemToNode, align 8, !tbaa !2
  %17 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %19, i32* %n0, align 4, !tbaa !8
  %20 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx2, align 4, !tbaa !8
  store i32 %22, i32* %n1, align 4, !tbaa !8
  %23 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3
  %24 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i32, i32* %24, i64 2
  %25 = load i32, i32* %arrayidx3, align 4, !tbaa !8
  store i32 %25, i32* %n2, align 4, !tbaa !8
  %26 = bitcast i32* %n3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  %27 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i32, i32* %27, i64 3
  %28 = load i32, i32* %arrayidx4, align 4, !tbaa !8
  store i32 %28, i32* %n3, align 4, !tbaa !8
  %29 = bitcast i32* %n4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  %30 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i32, i32* %30, i64 4
  %31 = load i32, i32* %arrayidx5, align 4, !tbaa !8
  store i32 %31, i32* %n4, align 4, !tbaa !8
  %32 = bitcast i32* %n5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #3
  %33 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i32, i32* %33, i64 5
  %34 = load i32, i32* %arrayidx6, align 4, !tbaa !8
  store i32 %34, i32* %n5, align 4, !tbaa !8
  %35 = bitcast i32* %n6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #3
  %36 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i32, i32* %36, i64 6
  %37 = load i32, i32* %arrayidx7, align 4, !tbaa !8
  store i32 %37, i32* %n6, align 4, !tbaa !8
  %38 = bitcast i32* %n7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3
  %39 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i32, i32* %39, i64 7
  %40 = load i32, i32* %arrayidx8, align 4, !tbaa !8
  store i32 %40, i32* %n7, align 4, !tbaa !8
  %41 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #3
  %42 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %43 = load i32, i32* %n0, align 4, !tbaa !8
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %42, i32 %43)
  %44 = load double, double* %call9, align 8, !tbaa !6
  store double %44, double* %x0, align 8, !tbaa !6
  %45 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %45) #3
  %46 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %47 = load i32, i32* %n1, align 4, !tbaa !8
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %46, i32 %47)
  %48 = load double, double* %call10, align 8, !tbaa !6
  store double %48, double* %x1, align 8, !tbaa !6
  %49 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %49) #3
  %50 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %51 = load i32, i32* %n2, align 4, !tbaa !8
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %50, i32 %51)
  %52 = load double, double* %call11, align 8, !tbaa !6
  store double %52, double* %x2, align 8, !tbaa !6
  %53 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %53) #3
  %54 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %55 = load i32, i32* %n3, align 4, !tbaa !8
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %54, i32 %55)
  %56 = load double, double* %call12, align 8, !tbaa !6
  store double %56, double* %x3, align 8, !tbaa !6
  %57 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %57) #3
  %58 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %59 = load i32, i32* %n4, align 4, !tbaa !8
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %58, i32 %59)
  %60 = load double, double* %call13, align 8, !tbaa !6
  store double %60, double* %x4, align 8, !tbaa !6
  %61 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61) #3
  %62 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %63 = load i32, i32* %n5, align 4, !tbaa !8
  %call14 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %62, i32 %63)
  %64 = load double, double* %call14, align 8, !tbaa !6
  store double %64, double* %x5, align 8, !tbaa !6
  %65 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %65) #3
  %66 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %67 = load i32, i32* %n6, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %66, i32 %67)
  %68 = load double, double* %call15, align 8, !tbaa !6
  store double %68, double* %x6, align 8, !tbaa !6
  %69 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69) #3
  %70 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %71 = load i32, i32* %n7, align 4, !tbaa !8
  %call16 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %70, i32 %71)
  %72 = load double, double* %call16, align 8, !tbaa !6
  store double %72, double* %x7, align 8, !tbaa !6
  %73 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %73) #3
  %74 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %75 = load i32, i32* %n0, align 4, !tbaa !8
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %74, i32 %75)
  %76 = load double, double* %call17, align 8, !tbaa !6
  store double %76, double* %y0, align 8, !tbaa !6
  %77 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %77) #3
  %78 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %79 = load i32, i32* %n1, align 4, !tbaa !8
  %call18 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %78, i32 %79)
  %80 = load double, double* %call18, align 8, !tbaa !6
  store double %80, double* %y1, align 8, !tbaa !6
  %81 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %81) #3
  %82 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %83 = load i32, i32* %n2, align 4, !tbaa !8
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %82, i32 %83)
  %84 = load double, double* %call19, align 8, !tbaa !6
  store double %84, double* %y2, align 8, !tbaa !6
  %85 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85) #3
  %86 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %87 = load i32, i32* %n3, align 4, !tbaa !8
  %call20 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %86, i32 %87)
  %88 = load double, double* %call20, align 8, !tbaa !6
  store double %88, double* %y3, align 8, !tbaa !6
  %89 = bitcast double* %y4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %89) #3
  %90 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %91 = load i32, i32* %n4, align 4, !tbaa !8
  %call21 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %90, i32 %91)
  %92 = load double, double* %call21, align 8, !tbaa !6
  store double %92, double* %y4, align 8, !tbaa !6
  %93 = bitcast double* %y5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %93) #3
  %94 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %95 = load i32, i32* %n5, align 4, !tbaa !8
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %94, i32 %95)
  %96 = load double, double* %call22, align 8, !tbaa !6
  store double %96, double* %y5, align 8, !tbaa !6
  %97 = bitcast double* %y6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %97) #3
  %98 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %99 = load i32, i32* %n6, align 4, !tbaa !8
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %98, i32 %99)
  %100 = load double, double* %call23, align 8, !tbaa !6
  store double %100, double* %y6, align 8, !tbaa !6
  %101 = bitcast double* %y7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %101) #3
  %102 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %103 = load i32, i32* %n7, align 4, !tbaa !8
  %call24 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %102, i32 %103)
  %104 = load double, double* %call24, align 8, !tbaa !6
  store double %104, double* %y7, align 8, !tbaa !6
  %105 = bitcast double* %z0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %105) #3
  %106 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %107 = load i32, i32* %n0, align 4, !tbaa !8
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %106, i32 %107)
  %108 = load double, double* %call25, align 8, !tbaa !6
  store double %108, double* %z0, align 8, !tbaa !6
  %109 = bitcast double* %z1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %109) #3
  %110 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %111 = load i32, i32* %n1, align 4, !tbaa !8
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %110, i32 %111)
  %112 = load double, double* %call26, align 8, !tbaa !6
  store double %112, double* %z1, align 8, !tbaa !6
  %113 = bitcast double* %z2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %113) #3
  %114 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %115 = load i32, i32* %n2, align 4, !tbaa !8
  %call27 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %114, i32 %115)
  %116 = load double, double* %call27, align 8, !tbaa !6
  store double %116, double* %z2, align 8, !tbaa !6
  %117 = bitcast double* %z3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %117) #3
  %118 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %119 = load i32, i32* %n3, align 4, !tbaa !8
  %call28 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %118, i32 %119)
  %120 = load double, double* %call28, align 8, !tbaa !6
  store double %120, double* %z3, align 8, !tbaa !6
  %121 = bitcast double* %z4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %121) #3
  %122 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %123 = load i32, i32* %n4, align 4, !tbaa !8
  %call29 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %122, i32 %123)
  %124 = load double, double* %call29, align 8, !tbaa !6
  store double %124, double* %z4, align 8, !tbaa !6
  %125 = bitcast double* %z5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %125) #3
  %126 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %127 = load i32, i32* %n5, align 4, !tbaa !8
  %call30 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %126, i32 %127)
  %128 = load double, double* %call30, align 8, !tbaa !6
  store double %128, double* %z5, align 8, !tbaa !6
  %129 = bitcast double* %z6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %129) #3
  %130 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %131 = load i32, i32* %n6, align 4, !tbaa !8
  %call31 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %130, i32 %131)
  %132 = load double, double* %call31, align 8, !tbaa !6
  store double %132, double* %z6, align 8, !tbaa !6
  %133 = bitcast double* %z7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %133) #3
  %134 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %135 = load i32, i32* %n7, align 4, !tbaa !8
  %call32 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %134, i32 %135)
  %136 = load double, double* %call32, align 8, !tbaa !6
  store double %136, double* %z7, align 8, !tbaa !6
  %137 = bitcast double* %xv0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %137) #3
  %138 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %139 = load i32, i32* %n0, align 4, !tbaa !8
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %138, i32 %139)
  %140 = load double, double* %call33, align 8, !tbaa !6
  store double %140, double* %xv0, align 8, !tbaa !6
  %141 = bitcast double* %xv1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %141) #3
  %142 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %143 = load i32, i32* %n1, align 4, !tbaa !8
  %call34 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %142, i32 %143)
  %144 = load double, double* %call34, align 8, !tbaa !6
  store double %144, double* %xv1, align 8, !tbaa !6
  %145 = bitcast double* %xv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %145) #3
  %146 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %147 = load i32, i32* %n2, align 4, !tbaa !8
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %146, i32 %147)
  %148 = load double, double* %call35, align 8, !tbaa !6
  store double %148, double* %xv2, align 8, !tbaa !6
  %149 = bitcast double* %xv3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %149) #3
  %150 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %151 = load i32, i32* %n3, align 4, !tbaa !8
  %call36 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %150, i32 %151)
  %152 = load double, double* %call36, align 8, !tbaa !6
  store double %152, double* %xv3, align 8, !tbaa !6
  %153 = bitcast double* %xv4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %153) #3
  %154 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %155 = load i32, i32* %n4, align 4, !tbaa !8
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %154, i32 %155)
  %156 = load double, double* %call37, align 8, !tbaa !6
  store double %156, double* %xv4, align 8, !tbaa !6
  %157 = bitcast double* %xv5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %157) #3
  %158 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %159 = load i32, i32* %n5, align 4, !tbaa !8
  %call38 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %158, i32 %159)
  %160 = load double, double* %call38, align 8, !tbaa !6
  store double %160, double* %xv5, align 8, !tbaa !6
  %161 = bitcast double* %xv6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %161) #3
  %162 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %163 = load i32, i32* %n6, align 4, !tbaa !8
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %162, i32 %163)
  %164 = load double, double* %call39, align 8, !tbaa !6
  store double %164, double* %xv6, align 8, !tbaa !6
  %165 = bitcast double* %xv7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %165) #3
  %166 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %167 = load i32, i32* %n7, align 4, !tbaa !8
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %166, i32 %167)
  %168 = load double, double* %call40, align 8, !tbaa !6
  store double %168, double* %xv7, align 8, !tbaa !6
  %169 = bitcast double* %yv0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %169) #3
  %170 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %171 = load i32, i32* %n0, align 4, !tbaa !8
  %call41 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %170, i32 %171)
  %172 = load double, double* %call41, align 8, !tbaa !6
  store double %172, double* %yv0, align 8, !tbaa !6
  %173 = bitcast double* %yv1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %173) #3
  %174 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %175 = load i32, i32* %n1, align 4, !tbaa !8
  %call42 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %174, i32 %175)
  %176 = load double, double* %call42, align 8, !tbaa !6
  store double %176, double* %yv1, align 8, !tbaa !6
  %177 = bitcast double* %yv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %177) #3
  %178 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %179 = load i32, i32* %n2, align 4, !tbaa !8
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %178, i32 %179)
  %180 = load double, double* %call43, align 8, !tbaa !6
  store double %180, double* %yv2, align 8, !tbaa !6
  %181 = bitcast double* %yv3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %181) #3
  %182 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %183 = load i32, i32* %n3, align 4, !tbaa !8
  %call44 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %182, i32 %183)
  %184 = load double, double* %call44, align 8, !tbaa !6
  store double %184, double* %yv3, align 8, !tbaa !6
  %185 = bitcast double* %yv4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185) #3
  %186 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %187 = load i32, i32* %n4, align 4, !tbaa !8
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %186, i32 %187)
  %188 = load double, double* %call45, align 8, !tbaa !6
  store double %188, double* %yv4, align 8, !tbaa !6
  %189 = bitcast double* %yv5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %189) #3
  %190 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %191 = load i32, i32* %n5, align 4, !tbaa !8
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %190, i32 %191)
  %192 = load double, double* %call46, align 8, !tbaa !6
  store double %192, double* %yv5, align 8, !tbaa !6
  %193 = bitcast double* %yv6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %193) #3
  %194 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %195 = load i32, i32* %n6, align 4, !tbaa !8
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %194, i32 %195)
  %196 = load double, double* %call47, align 8, !tbaa !6
  store double %196, double* %yv6, align 8, !tbaa !6
  %197 = bitcast double* %yv7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %197) #3
  %198 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %199 = load i32, i32* %n7, align 4, !tbaa !8
  %call48 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %198, i32 %199)
  %200 = load double, double* %call48, align 8, !tbaa !6
  store double %200, double* %yv7, align 8, !tbaa !6
  %201 = bitcast double* %zv0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %201) #3
  %202 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %203 = load i32, i32* %n0, align 4, !tbaa !8
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %202, i32 %203)
  %204 = load double, double* %call49, align 8, !tbaa !6
  store double %204, double* %zv0, align 8, !tbaa !6
  %205 = bitcast double* %zv1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %205) #3
  %206 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %207 = load i32, i32* %n1, align 4, !tbaa !8
  %call50 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %206, i32 %207)
  %208 = load double, double* %call50, align 8, !tbaa !6
  store double %208, double* %zv1, align 8, !tbaa !6
  %209 = bitcast double* %zv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %209) #3
  %210 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %211 = load i32, i32* %n2, align 4, !tbaa !8
  %call51 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %210, i32 %211)
  %212 = load double, double* %call51, align 8, !tbaa !6
  store double %212, double* %zv2, align 8, !tbaa !6
  %213 = bitcast double* %zv3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %213) #3
  %214 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %215 = load i32, i32* %n3, align 4, !tbaa !8
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %214, i32 %215)
  %216 = load double, double* %call52, align 8, !tbaa !6
  store double %216, double* %zv3, align 8, !tbaa !6
  %217 = bitcast double* %zv4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %217) #3
  %218 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %219 = load i32, i32* %n4, align 4, !tbaa !8
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %218, i32 %219)
  %220 = load double, double* %call53, align 8, !tbaa !6
  store double %220, double* %zv4, align 8, !tbaa !6
  %221 = bitcast double* %zv5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %221) #3
  %222 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %223 = load i32, i32* %n5, align 4, !tbaa !8
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %222, i32 %223)
  %224 = load double, double* %call54, align 8, !tbaa !6
  store double %224, double* %zv5, align 8, !tbaa !6
  %225 = bitcast double* %zv6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %225) #3
  %226 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %227 = load i32, i32* %n6, align 4, !tbaa !8
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %226, i32 %227)
  %228 = load double, double* %call55, align 8, !tbaa !6
  store double %228, double* %zv6, align 8, !tbaa !6
  %229 = bitcast double* %zv7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %229) #3
  %230 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %231 = load i32, i32* %n7, align 4, !tbaa !8
  %call56 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %230, i32 %231)
  %232 = load double, double* %call56, align 8, !tbaa !6
  store double %232, double* %zv7, align 8, !tbaa !6
  %233 = bitcast double* %vol to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %233) #3
  %234 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %235 = load i32, i32* %i, align 4, !tbaa !8
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %234, i32 %235)
  %236 = load double, double* %call57, align 8, !tbaa !6
  %237 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %238 = load i32, i32* %i, align 4, !tbaa !8
  %call58 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %237, i32 %238)
  %239 = load double, double* %call58, align 8, !tbaa !6
  %mul = fmul double %236, %239
  store double %mul, double* %vol, align 8, !tbaa !6
  %240 = bitcast double* %norm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %240) #3
  %241 = load double, double* %vol, align 8, !tbaa !6
  %add = fadd double %241, 0x38754484932D2E72
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %norm, align 8, !tbaa !6
  %242 = bitcast double* %dxj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %242) #3
  %243 = load double, double* %x0, align 8, !tbaa !6
  %244 = load double, double* %x1, align 8, !tbaa !6
  %add59 = fadd double %243, %244
  %245 = load double, double* %x5, align 8, !tbaa !6
  %add60 = fadd double %add59, %245
  %246 = load double, double* %x4, align 8, !tbaa !6
  %add61 = fadd double %add60, %246
  %247 = load double, double* %x3, align 8, !tbaa !6
  %248 = load double, double* %x2, align 8, !tbaa !6
  %add62 = fadd double %247, %248
  %249 = load double, double* %x6, align 8, !tbaa !6
  %add63 = fadd double %add62, %249
  %250 = load double, double* %x7, align 8, !tbaa !6
  %add64 = fadd double %add63, %250
  %sub = fsub double %add61, %add64
  %mul65 = fmul double -2.500000e-01, %sub
  store double %mul65, double* %dxj, align 8, !tbaa !6
  %251 = bitcast double* %dyj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %251) #3
  %252 = load double, double* %y0, align 8, !tbaa !6
  %253 = load double, double* %y1, align 8, !tbaa !6
  %add66 = fadd double %252, %253
  %254 = load double, double* %y5, align 8, !tbaa !6
  %add67 = fadd double %add66, %254
  %255 = load double, double* %y4, align 8, !tbaa !6
  %add68 = fadd double %add67, %255
  %256 = load double, double* %y3, align 8, !tbaa !6
  %257 = load double, double* %y2, align 8, !tbaa !6
  %add69 = fadd double %256, %257
  %258 = load double, double* %y6, align 8, !tbaa !6
  %add70 = fadd double %add69, %258
  %259 = load double, double* %y7, align 8, !tbaa !6
  %add71 = fadd double %add70, %259
  %sub72 = fsub double %add68, %add71
  %mul73 = fmul double -2.500000e-01, %sub72
  store double %mul73, double* %dyj, align 8, !tbaa !6
  %260 = bitcast double* %dzj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %260) #3
  %261 = load double, double* %z0, align 8, !tbaa !6
  %262 = load double, double* %z1, align 8, !tbaa !6
  %add74 = fadd double %261, %262
  %263 = load double, double* %z5, align 8, !tbaa !6
  %add75 = fadd double %add74, %263
  %264 = load double, double* %z4, align 8, !tbaa !6
  %add76 = fadd double %add75, %264
  %265 = load double, double* %z3, align 8, !tbaa !6
  %266 = load double, double* %z2, align 8, !tbaa !6
  %add77 = fadd double %265, %266
  %267 = load double, double* %z6, align 8, !tbaa !6
  %add78 = fadd double %add77, %267
  %268 = load double, double* %z7, align 8, !tbaa !6
  %add79 = fadd double %add78, %268
  %sub80 = fsub double %add76, %add79
  %mul81 = fmul double -2.500000e-01, %sub80
  store double %mul81, double* %dzj, align 8, !tbaa !6
  %269 = bitcast double* %dxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %269) #3
  %270 = load double, double* %x1, align 8, !tbaa !6
  %271 = load double, double* %x2, align 8, !tbaa !6
  %add82 = fadd double %270, %271
  %272 = load double, double* %x6, align 8, !tbaa !6
  %add83 = fadd double %add82, %272
  %273 = load double, double* %x5, align 8, !tbaa !6
  %add84 = fadd double %add83, %273
  %274 = load double, double* %x0, align 8, !tbaa !6
  %275 = load double, double* %x3, align 8, !tbaa !6
  %add85 = fadd double %274, %275
  %276 = load double, double* %x7, align 8, !tbaa !6
  %add86 = fadd double %add85, %276
  %277 = load double, double* %x4, align 8, !tbaa !6
  %add87 = fadd double %add86, %277
  %sub88 = fsub double %add84, %add87
  %mul89 = fmul double 2.500000e-01, %sub88
  store double %mul89, double* %dxi, align 8, !tbaa !6
  %278 = bitcast double* %dyi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %278) #3
  %279 = load double, double* %y1, align 8, !tbaa !6
  %280 = load double, double* %y2, align 8, !tbaa !6
  %add90 = fadd double %279, %280
  %281 = load double, double* %y6, align 8, !tbaa !6
  %add91 = fadd double %add90, %281
  %282 = load double, double* %y5, align 8, !tbaa !6
  %add92 = fadd double %add91, %282
  %283 = load double, double* %y0, align 8, !tbaa !6
  %284 = load double, double* %y3, align 8, !tbaa !6
  %add93 = fadd double %283, %284
  %285 = load double, double* %y7, align 8, !tbaa !6
  %add94 = fadd double %add93, %285
  %286 = load double, double* %y4, align 8, !tbaa !6
  %add95 = fadd double %add94, %286
  %sub96 = fsub double %add92, %add95
  %mul97 = fmul double 2.500000e-01, %sub96
  store double %mul97, double* %dyi, align 8, !tbaa !6
  %287 = bitcast double* %dzi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %287) #3
  %288 = load double, double* %z1, align 8, !tbaa !6
  %289 = load double, double* %z2, align 8, !tbaa !6
  %add98 = fadd double %288, %289
  %290 = load double, double* %z6, align 8, !tbaa !6
  %add99 = fadd double %add98, %290
  %291 = load double, double* %z5, align 8, !tbaa !6
  %add100 = fadd double %add99, %291
  %292 = load double, double* %z0, align 8, !tbaa !6
  %293 = load double, double* %z3, align 8, !tbaa !6
  %add101 = fadd double %292, %293
  %294 = load double, double* %z7, align 8, !tbaa !6
  %add102 = fadd double %add101, %294
  %295 = load double, double* %z4, align 8, !tbaa !6
  %add103 = fadd double %add102, %295
  %sub104 = fsub double %add100, %add103
  %mul105 = fmul double 2.500000e-01, %sub104
  store double %mul105, double* %dzi, align 8, !tbaa !6
  %296 = bitcast double* %dxk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %296) #3
  %297 = load double, double* %x4, align 8, !tbaa !6
  %298 = load double, double* %x5, align 8, !tbaa !6
  %add106 = fadd double %297, %298
  %299 = load double, double* %x6, align 8, !tbaa !6
  %add107 = fadd double %add106, %299
  %300 = load double, double* %x7, align 8, !tbaa !6
  %add108 = fadd double %add107, %300
  %301 = load double, double* %x0, align 8, !tbaa !6
  %302 = load double, double* %x1, align 8, !tbaa !6
  %add109 = fadd double %301, %302
  %303 = load double, double* %x2, align 8, !tbaa !6
  %add110 = fadd double %add109, %303
  %304 = load double, double* %x3, align 8, !tbaa !6
  %add111 = fadd double %add110, %304
  %sub112 = fsub double %add108, %add111
  %mul113 = fmul double 2.500000e-01, %sub112
  store double %mul113, double* %dxk, align 8, !tbaa !6
  %305 = bitcast double* %dyk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %305) #3
  %306 = load double, double* %y4, align 8, !tbaa !6
  %307 = load double, double* %y5, align 8, !tbaa !6
  %add114 = fadd double %306, %307
  %308 = load double, double* %y6, align 8, !tbaa !6
  %add115 = fadd double %add114, %308
  %309 = load double, double* %y7, align 8, !tbaa !6
  %add116 = fadd double %add115, %309
  %310 = load double, double* %y0, align 8, !tbaa !6
  %311 = load double, double* %y1, align 8, !tbaa !6
  %add117 = fadd double %310, %311
  %312 = load double, double* %y2, align 8, !tbaa !6
  %add118 = fadd double %add117, %312
  %313 = load double, double* %y3, align 8, !tbaa !6
  %add119 = fadd double %add118, %313
  %sub120 = fsub double %add116, %add119
  %mul121 = fmul double 2.500000e-01, %sub120
  store double %mul121, double* %dyk, align 8, !tbaa !6
  %314 = bitcast double* %dzk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %314) #3
  %315 = load double, double* %z4, align 8, !tbaa !6
  %316 = load double, double* %z5, align 8, !tbaa !6
  %add122 = fadd double %315, %316
  %317 = load double, double* %z6, align 8, !tbaa !6
  %add123 = fadd double %add122, %317
  %318 = load double, double* %z7, align 8, !tbaa !6
  %add124 = fadd double %add123, %318
  %319 = load double, double* %z0, align 8, !tbaa !6
  %320 = load double, double* %z1, align 8, !tbaa !6
  %add125 = fadd double %319, %320
  %321 = load double, double* %z2, align 8, !tbaa !6
  %add126 = fadd double %add125, %321
  %322 = load double, double* %z3, align 8, !tbaa !6
  %add127 = fadd double %add126, %322
  %sub128 = fsub double %add124, %add127
  %mul129 = fmul double 2.500000e-01, %sub128
  store double %mul129, double* %dzk, align 8, !tbaa !6
  %323 = load double, double* %dyi, align 8, !tbaa !6
  %324 = load double, double* %dzj, align 8, !tbaa !6
  %mul130 = fmul double %323, %324
  %325 = load double, double* %dzi, align 8, !tbaa !6
  %326 = load double, double* %dyj, align 8, !tbaa !6
  %mul131 = fmul double %325, %326
  %sub132 = fsub double %mul130, %mul131
  store double %sub132, double* %ax, align 8, !tbaa !6
  %327 = load double, double* %dzi, align 8, !tbaa !6
  %328 = load double, double* %dxj, align 8, !tbaa !6
  %mul133 = fmul double %327, %328
  %329 = load double, double* %dxi, align 8, !tbaa !6
  %330 = load double, double* %dzj, align 8, !tbaa !6
  %mul134 = fmul double %329, %330
  %sub135 = fsub double %mul133, %mul134
  store double %sub135, double* %ay, align 8, !tbaa !6
  %331 = load double, double* %dxi, align 8, !tbaa !6
  %332 = load double, double* %dyj, align 8, !tbaa !6
  %mul136 = fmul double %331, %332
  %333 = load double, double* %dyi, align 8, !tbaa !6
  %334 = load double, double* %dxj, align 8, !tbaa !6
  %mul137 = fmul double %333, %334
  %sub138 = fsub double %mul136, %mul137
  store double %sub138, double* %az, align 8, !tbaa !6
  %335 = load double, double* %vol, align 8, !tbaa !6
  %336 = load double, double* %ax, align 8, !tbaa !6
  %337 = load double, double* %ax, align 8, !tbaa !6
  %mul139 = fmul double %336, %337
  %338 = load double, double* %ay, align 8, !tbaa !6
  %339 = load double, double* %ay, align 8, !tbaa !6
  %mul140 = fmul double %338, %339
  %add141 = fadd double %mul139, %mul140
  %340 = load double, double* %az, align 8, !tbaa !6
  %341 = load double, double* %az, align 8, !tbaa !6
  %mul142 = fmul double %340, %341
  %add143 = fadd double %add141, %mul142
  %add144 = fadd double %add143, 0x38754484932D2E72
  %call145 = call double @_Z4SQRTd(double %add144)
  %div146 = fdiv double %335, %call145
  %342 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %343 = load i32, i32* %i, align 4, !tbaa !8
  %call147 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %342, i32 %343)
  store double %div146, double* %call147, align 8, !tbaa !6
  %344 = load double, double* %norm, align 8, !tbaa !6
  %345 = load double, double* %ax, align 8, !tbaa !6
  %mul148 = fmul double %345, %344
  store double %mul148, double* %ax, align 8, !tbaa !6
  %346 = load double, double* %norm, align 8, !tbaa !6
  %347 = load double, double* %ay, align 8, !tbaa !6
  %mul149 = fmul double %347, %346
  store double %mul149, double* %ay, align 8, !tbaa !6
  %348 = load double, double* %norm, align 8, !tbaa !6
  %349 = load double, double* %az, align 8, !tbaa !6
  %mul150 = fmul double %349, %348
  store double %mul150, double* %az, align 8, !tbaa !6
  %350 = load double, double* %xv4, align 8, !tbaa !6
  %351 = load double, double* %xv5, align 8, !tbaa !6
  %add151 = fadd double %350, %351
  %352 = load double, double* %xv6, align 8, !tbaa !6
  %add152 = fadd double %add151, %352
  %353 = load double, double* %xv7, align 8, !tbaa !6
  %add153 = fadd double %add152, %353
  %354 = load double, double* %xv0, align 8, !tbaa !6
  %355 = load double, double* %xv1, align 8, !tbaa !6
  %add154 = fadd double %354, %355
  %356 = load double, double* %xv2, align 8, !tbaa !6
  %add155 = fadd double %add154, %356
  %357 = load double, double* %xv3, align 8, !tbaa !6
  %add156 = fadd double %add155, %357
  %sub157 = fsub double %add153, %add156
  %mul158 = fmul double 2.500000e-01, %sub157
  store double %mul158, double* %dxv, align 8, !tbaa !6
  %358 = load double, double* %yv4, align 8, !tbaa !6
  %359 = load double, double* %yv5, align 8, !tbaa !6
  %add159 = fadd double %358, %359
  %360 = load double, double* %yv6, align 8, !tbaa !6
  %add160 = fadd double %add159, %360
  %361 = load double, double* %yv7, align 8, !tbaa !6
  %add161 = fadd double %add160, %361
  %362 = load double, double* %yv0, align 8, !tbaa !6
  %363 = load double, double* %yv1, align 8, !tbaa !6
  %add162 = fadd double %362, %363
  %364 = load double, double* %yv2, align 8, !tbaa !6
  %add163 = fadd double %add162, %364
  %365 = load double, double* %yv3, align 8, !tbaa !6
  %add164 = fadd double %add163, %365
  %sub165 = fsub double %add161, %add164
  %mul166 = fmul double 2.500000e-01, %sub165
  store double %mul166, double* %dyv, align 8, !tbaa !6
  %366 = load double, double* %zv4, align 8, !tbaa !6
  %367 = load double, double* %zv5, align 8, !tbaa !6
  %add167 = fadd double %366, %367
  %368 = load double, double* %zv6, align 8, !tbaa !6
  %add168 = fadd double %add167, %368
  %369 = load double, double* %zv7, align 8, !tbaa !6
  %add169 = fadd double %add168, %369
  %370 = load double, double* %zv0, align 8, !tbaa !6
  %371 = load double, double* %zv1, align 8, !tbaa !6
  %add170 = fadd double %370, %371
  %372 = load double, double* %zv2, align 8, !tbaa !6
  %add171 = fadd double %add170, %372
  %373 = load double, double* %zv3, align 8, !tbaa !6
  %add172 = fadd double %add171, %373
  %sub173 = fsub double %add169, %add172
  %mul174 = fmul double 2.500000e-01, %sub173
  store double %mul174, double* %dzv, align 8, !tbaa !6
  %374 = load double, double* %ax, align 8, !tbaa !6
  %375 = load double, double* %dxv, align 8, !tbaa !6
  %mul175 = fmul double %374, %375
  %376 = load double, double* %ay, align 8, !tbaa !6
  %377 = load double, double* %dyv, align 8, !tbaa !6
  %mul176 = fmul double %376, %377
  %add177 = fadd double %mul175, %mul176
  %378 = load double, double* %az, align 8, !tbaa !6
  %379 = load double, double* %dzv, align 8, !tbaa !6
  %mul178 = fmul double %378, %379
  %add179 = fadd double %add177, %mul178
  %380 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %381 = load i32, i32* %i, align 4, !tbaa !8
  %call180 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %380, i32 %381)
  store double %add179, double* %call180, align 8, !tbaa !6
  %382 = load double, double* %dyj, align 8, !tbaa !6
  %383 = load double, double* %dzk, align 8, !tbaa !6
  %mul181 = fmul double %382, %383
  %384 = load double, double* %dzj, align 8, !tbaa !6
  %385 = load double, double* %dyk, align 8, !tbaa !6
  %mul182 = fmul double %384, %385
  %sub183 = fsub double %mul181, %mul182
  store double %sub183, double* %ax, align 8, !tbaa !6
  %386 = load double, double* %dzj, align 8, !tbaa !6
  %387 = load double, double* %dxk, align 8, !tbaa !6
  %mul184 = fmul double %386, %387
  %388 = load double, double* %dxj, align 8, !tbaa !6
  %389 = load double, double* %dzk, align 8, !tbaa !6
  %mul185 = fmul double %388, %389
  %sub186 = fsub double %mul184, %mul185
  store double %sub186, double* %ay, align 8, !tbaa !6
  %390 = load double, double* %dxj, align 8, !tbaa !6
  %391 = load double, double* %dyk, align 8, !tbaa !6
  %mul187 = fmul double %390, %391
  %392 = load double, double* %dyj, align 8, !tbaa !6
  %393 = load double, double* %dxk, align 8, !tbaa !6
  %mul188 = fmul double %392, %393
  %sub189 = fsub double %mul187, %mul188
  store double %sub189, double* %az, align 8, !tbaa !6
  %394 = load double, double* %vol, align 8, !tbaa !6
  %395 = load double, double* %ax, align 8, !tbaa !6
  %396 = load double, double* %ax, align 8, !tbaa !6
  %mul190 = fmul double %395, %396
  %397 = load double, double* %ay, align 8, !tbaa !6
  %398 = load double, double* %ay, align 8, !tbaa !6
  %mul191 = fmul double %397, %398
  %add192 = fadd double %mul190, %mul191
  %399 = load double, double* %az, align 8, !tbaa !6
  %400 = load double, double* %az, align 8, !tbaa !6
  %mul193 = fmul double %399, %400
  %add194 = fadd double %add192, %mul193
  %add195 = fadd double %add194, 0x38754484932D2E72
  %call196 = call double @_Z4SQRTd(double %add195)
  %div197 = fdiv double %394, %call196
  %401 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %402 = load i32, i32* %i, align 4, !tbaa !8
  %call198 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %401, i32 %402)
  store double %div197, double* %call198, align 8, !tbaa !6
  %403 = load double, double* %norm, align 8, !tbaa !6
  %404 = load double, double* %ax, align 8, !tbaa !6
  %mul199 = fmul double %404, %403
  store double %mul199, double* %ax, align 8, !tbaa !6
  %405 = load double, double* %norm, align 8, !tbaa !6
  %406 = load double, double* %ay, align 8, !tbaa !6
  %mul200 = fmul double %406, %405
  store double %mul200, double* %ay, align 8, !tbaa !6
  %407 = load double, double* %norm, align 8, !tbaa !6
  %408 = load double, double* %az, align 8, !tbaa !6
  %mul201 = fmul double %408, %407
  store double %mul201, double* %az, align 8, !tbaa !6
  %409 = load double, double* %xv1, align 8, !tbaa !6
  %410 = load double, double* %xv2, align 8, !tbaa !6
  %add202 = fadd double %409, %410
  %411 = load double, double* %xv6, align 8, !tbaa !6
  %add203 = fadd double %add202, %411
  %412 = load double, double* %xv5, align 8, !tbaa !6
  %add204 = fadd double %add203, %412
  %413 = load double, double* %xv0, align 8, !tbaa !6
  %414 = load double, double* %xv3, align 8, !tbaa !6
  %add205 = fadd double %413, %414
  %415 = load double, double* %xv7, align 8, !tbaa !6
  %add206 = fadd double %add205, %415
  %416 = load double, double* %xv4, align 8, !tbaa !6
  %add207 = fadd double %add206, %416
  %sub208 = fsub double %add204, %add207
  %mul209 = fmul double 2.500000e-01, %sub208
  store double %mul209, double* %dxv, align 8, !tbaa !6
  %417 = load double, double* %yv1, align 8, !tbaa !6
  %418 = load double, double* %yv2, align 8, !tbaa !6
  %add210 = fadd double %417, %418
  %419 = load double, double* %yv6, align 8, !tbaa !6
  %add211 = fadd double %add210, %419
  %420 = load double, double* %yv5, align 8, !tbaa !6
  %add212 = fadd double %add211, %420
  %421 = load double, double* %yv0, align 8, !tbaa !6
  %422 = load double, double* %yv3, align 8, !tbaa !6
  %add213 = fadd double %421, %422
  %423 = load double, double* %yv7, align 8, !tbaa !6
  %add214 = fadd double %add213, %423
  %424 = load double, double* %yv4, align 8, !tbaa !6
  %add215 = fadd double %add214, %424
  %sub216 = fsub double %add212, %add215
  %mul217 = fmul double 2.500000e-01, %sub216
  store double %mul217, double* %dyv, align 8, !tbaa !6
  %425 = load double, double* %zv1, align 8, !tbaa !6
  %426 = load double, double* %zv2, align 8, !tbaa !6
  %add218 = fadd double %425, %426
  %427 = load double, double* %zv6, align 8, !tbaa !6
  %add219 = fadd double %add218, %427
  %428 = load double, double* %zv5, align 8, !tbaa !6
  %add220 = fadd double %add219, %428
  %429 = load double, double* %zv0, align 8, !tbaa !6
  %430 = load double, double* %zv3, align 8, !tbaa !6
  %add221 = fadd double %429, %430
  %431 = load double, double* %zv7, align 8, !tbaa !6
  %add222 = fadd double %add221, %431
  %432 = load double, double* %zv4, align 8, !tbaa !6
  %add223 = fadd double %add222, %432
  %sub224 = fsub double %add220, %add223
  %mul225 = fmul double 2.500000e-01, %sub224
  store double %mul225, double* %dzv, align 8, !tbaa !6
  %433 = load double, double* %ax, align 8, !tbaa !6
  %434 = load double, double* %dxv, align 8, !tbaa !6
  %mul226 = fmul double %433, %434
  %435 = load double, double* %ay, align 8, !tbaa !6
  %436 = load double, double* %dyv, align 8, !tbaa !6
  %mul227 = fmul double %435, %436
  %add228 = fadd double %mul226, %mul227
  %437 = load double, double* %az, align 8, !tbaa !6
  %438 = load double, double* %dzv, align 8, !tbaa !6
  %mul229 = fmul double %437, %438
  %add230 = fadd double %add228, %mul229
  %439 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %440 = load i32, i32* %i, align 4, !tbaa !8
  %call231 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %439, i32 %440)
  store double %add230, double* %call231, align 8, !tbaa !6
  %441 = load double, double* %dyk, align 8, !tbaa !6
  %442 = load double, double* %dzi, align 8, !tbaa !6
  %mul232 = fmul double %441, %442
  %443 = load double, double* %dzk, align 8, !tbaa !6
  %444 = load double, double* %dyi, align 8, !tbaa !6
  %mul233 = fmul double %443, %444
  %sub234 = fsub double %mul232, %mul233
  store double %sub234, double* %ax, align 8, !tbaa !6
  %445 = load double, double* %dzk, align 8, !tbaa !6
  %446 = load double, double* %dxi, align 8, !tbaa !6
  %mul235 = fmul double %445, %446
  %447 = load double, double* %dxk, align 8, !tbaa !6
  %448 = load double, double* %dzi, align 8, !tbaa !6
  %mul236 = fmul double %447, %448
  %sub237 = fsub double %mul235, %mul236
  store double %sub237, double* %ay, align 8, !tbaa !6
  %449 = load double, double* %dxk, align 8, !tbaa !6
  %450 = load double, double* %dyi, align 8, !tbaa !6
  %mul238 = fmul double %449, %450
  %451 = load double, double* %dyk, align 8, !tbaa !6
  %452 = load double, double* %dxi, align 8, !tbaa !6
  %mul239 = fmul double %451, %452
  %sub240 = fsub double %mul238, %mul239
  store double %sub240, double* %az, align 8, !tbaa !6
  %453 = load double, double* %vol, align 8, !tbaa !6
  %454 = load double, double* %ax, align 8, !tbaa !6
  %455 = load double, double* %ax, align 8, !tbaa !6
  %mul241 = fmul double %454, %455
  %456 = load double, double* %ay, align 8, !tbaa !6
  %457 = load double, double* %ay, align 8, !tbaa !6
  %mul242 = fmul double %456, %457
  %add243 = fadd double %mul241, %mul242
  %458 = load double, double* %az, align 8, !tbaa !6
  %459 = load double, double* %az, align 8, !tbaa !6
  %mul244 = fmul double %458, %459
  %add245 = fadd double %add243, %mul244
  %add246 = fadd double %add245, 0x38754484932D2E72
  %call247 = call double @_Z4SQRTd(double %add246)
  %div248 = fdiv double %453, %call247
  %460 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %461 = load i32, i32* %i, align 4, !tbaa !8
  %call249 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %460, i32 %461)
  store double %div248, double* %call249, align 8, !tbaa !6
  %462 = load double, double* %norm, align 8, !tbaa !6
  %463 = load double, double* %ax, align 8, !tbaa !6
  %mul250 = fmul double %463, %462
  store double %mul250, double* %ax, align 8, !tbaa !6
  %464 = load double, double* %norm, align 8, !tbaa !6
  %465 = load double, double* %ay, align 8, !tbaa !6
  %mul251 = fmul double %465, %464
  store double %mul251, double* %ay, align 8, !tbaa !6
  %466 = load double, double* %norm, align 8, !tbaa !6
  %467 = load double, double* %az, align 8, !tbaa !6
  %mul252 = fmul double %467, %466
  store double %mul252, double* %az, align 8, !tbaa !6
  %468 = load double, double* %xv0, align 8, !tbaa !6
  %469 = load double, double* %xv1, align 8, !tbaa !6
  %add253 = fadd double %468, %469
  %470 = load double, double* %xv5, align 8, !tbaa !6
  %add254 = fadd double %add253, %470
  %471 = load double, double* %xv4, align 8, !tbaa !6
  %add255 = fadd double %add254, %471
  %472 = load double, double* %xv3, align 8, !tbaa !6
  %473 = load double, double* %xv2, align 8, !tbaa !6
  %add256 = fadd double %472, %473
  %474 = load double, double* %xv6, align 8, !tbaa !6
  %add257 = fadd double %add256, %474
  %475 = load double, double* %xv7, align 8, !tbaa !6
  %add258 = fadd double %add257, %475
  %sub259 = fsub double %add255, %add258
  %mul260 = fmul double -2.500000e-01, %sub259
  store double %mul260, double* %dxv, align 8, !tbaa !6
  %476 = load double, double* %yv0, align 8, !tbaa !6
  %477 = load double, double* %yv1, align 8, !tbaa !6
  %add261 = fadd double %476, %477
  %478 = load double, double* %yv5, align 8, !tbaa !6
  %add262 = fadd double %add261, %478
  %479 = load double, double* %yv4, align 8, !tbaa !6
  %add263 = fadd double %add262, %479
  %480 = load double, double* %yv3, align 8, !tbaa !6
  %481 = load double, double* %yv2, align 8, !tbaa !6
  %add264 = fadd double %480, %481
  %482 = load double, double* %yv6, align 8, !tbaa !6
  %add265 = fadd double %add264, %482
  %483 = load double, double* %yv7, align 8, !tbaa !6
  %add266 = fadd double %add265, %483
  %sub267 = fsub double %add263, %add266
  %mul268 = fmul double -2.500000e-01, %sub267
  store double %mul268, double* %dyv, align 8, !tbaa !6
  %484 = load double, double* %zv0, align 8, !tbaa !6
  %485 = load double, double* %zv1, align 8, !tbaa !6
  %add269 = fadd double %484, %485
  %486 = load double, double* %zv5, align 8, !tbaa !6
  %add270 = fadd double %add269, %486
  %487 = load double, double* %zv4, align 8, !tbaa !6
  %add271 = fadd double %add270, %487
  %488 = load double, double* %zv3, align 8, !tbaa !6
  %489 = load double, double* %zv2, align 8, !tbaa !6
  %add272 = fadd double %488, %489
  %490 = load double, double* %zv6, align 8, !tbaa !6
  %add273 = fadd double %add272, %490
  %491 = load double, double* %zv7, align 8, !tbaa !6
  %add274 = fadd double %add273, %491
  %sub275 = fsub double %add271, %add274
  %mul276 = fmul double -2.500000e-01, %sub275
  store double %mul276, double* %dzv, align 8, !tbaa !6
  %492 = load double, double* %ax, align 8, !tbaa !6
  %493 = load double, double* %dxv, align 8, !tbaa !6
  %mul277 = fmul double %492, %493
  %494 = load double, double* %ay, align 8, !tbaa !6
  %495 = load double, double* %dyv, align 8, !tbaa !6
  %mul278 = fmul double %494, %495
  %add279 = fadd double %mul277, %mul278
  %496 = load double, double* %az, align 8, !tbaa !6
  %497 = load double, double* %dzv, align 8, !tbaa !6
  %mul280 = fmul double %496, %497
  %add281 = fadd double %add279, %mul280
  %498 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %499 = load i32, i32* %i, align 4, !tbaa !8
  %call282 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %498, i32 %499)
  store double %add281, double* %call282, align 8, !tbaa !6
  %500 = bitcast double* %dzk to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %500) #3
  %501 = bitcast double* %dyk to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %501) #3
  %502 = bitcast double* %dxk to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %502) #3
  %503 = bitcast double* %dzi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %503) #3
  %504 = bitcast double* %dyi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %504) #3
  %505 = bitcast double* %dxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %505) #3
  %506 = bitcast double* %dzj to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %506) #3
  %507 = bitcast double* %dyj to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %507) #3
  %508 = bitcast double* %dxj to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %508) #3
  %509 = bitcast double* %norm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %509) #3
  %510 = bitcast double* %vol to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %510) #3
  %511 = bitcast double* %zv7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %511) #3
  %512 = bitcast double* %zv6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %512) #3
  %513 = bitcast double* %zv5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %513) #3
  %514 = bitcast double* %zv4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %514) #3
  %515 = bitcast double* %zv3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %515) #3
  %516 = bitcast double* %zv2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %516) #3
  %517 = bitcast double* %zv1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %517) #3
  %518 = bitcast double* %zv0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %518) #3
  %519 = bitcast double* %yv7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %519) #3
  %520 = bitcast double* %yv6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %520) #3
  %521 = bitcast double* %yv5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %521) #3
  %522 = bitcast double* %yv4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %522) #3
  %523 = bitcast double* %yv3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %523) #3
  %524 = bitcast double* %yv2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %524) #3
  %525 = bitcast double* %yv1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %525) #3
  %526 = bitcast double* %yv0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %526) #3
  %527 = bitcast double* %xv7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %527) #3
  %528 = bitcast double* %xv6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %528) #3
  %529 = bitcast double* %xv5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %529) #3
  %530 = bitcast double* %xv4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %530) #3
  %531 = bitcast double* %xv3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %531) #3
  %532 = bitcast double* %xv2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %532) #3
  %533 = bitcast double* %xv1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %533) #3
  %534 = bitcast double* %xv0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %534) #3
  %535 = bitcast double* %z7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %535) #3
  %536 = bitcast double* %z6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %536) #3
  %537 = bitcast double* %z5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %537) #3
  %538 = bitcast double* %z4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %538) #3
  %539 = bitcast double* %z3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %539) #3
  %540 = bitcast double* %z2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %540) #3
  %541 = bitcast double* %z1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %541) #3
  %542 = bitcast double* %z0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %542) #3
  %543 = bitcast double* %y7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %543) #3
  %544 = bitcast double* %y6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %544) #3
  %545 = bitcast double* %y5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %545) #3
  %546 = bitcast double* %y4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %546) #3
  %547 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %547) #3
  %548 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %548) #3
  %549 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %549) #3
  %550 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %550) #3
  %551 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %551) #3
  %552 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %552) #3
  %553 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %553) #3
  %554 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %554) #3
  %555 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %555) #3
  %556 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %556) #3
  %557 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %557) #3
  %558 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %558) #3
  %559 = bitcast i32* %n7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %559) #3
  %560 = bitcast i32* %n6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %560) #3
  %561 = bitcast i32* %n5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %561) #3
  %562 = bitcast i32* %n4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %562) #3
  %563 = bitcast i32* %n3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %563) #3
  %564 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %564) #3
  %565 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %565) #3
  %566 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %566) #3
  %567 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %567) #3
  %568 = bitcast double* %dzv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %568) #3
  %569 = bitcast double* %dyv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %569) #3
  %570 = bitcast double* %dxv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %570) #3
  %571 = bitcast double* %az to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %571) #3
  %572 = bitcast double* %ay to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %572) #3
  %573 = bitcast double* %ax to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %573) #3
  %574 = bitcast double* %ptiny to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %574) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %575 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %575, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond.cleanup
  %576 = bitcast i32* %numElem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %576) #3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL22CalcMonotonicQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %ptiny = alloca double, align 8
  %r = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  %0 = bitcast double* %ptiny to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  store double 0x38754484932D2E72, double* %ptiny, align 8, !tbaa !6
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  store i32 0, i32* %r, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %r, align 4, !tbaa !8
  %3 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %3)
  %4 = load i32, i32* %call, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %5 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %7 = load i32, i32* %r, align 4, !tbaa !8
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %6, i32 %7)
  %8 = load i32, i32* %call1, align 4, !tbaa !8
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %10 = load i32, i32* %r, align 4, !tbaa !8
  call void @_ZL28CalcMonotonicQRegionForElemsR6Domainid(%class.Domain* nonnull align 8 dereferenceable(1312) %9, i32 %10, double 0x38754484932D2E72)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %r, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %r, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !96

for.end:                                          ; preds = %for.cond.cleanup
  %12 = bitcast double* %ptiny to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 37
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_zeta)
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 36
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_eta)
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 35
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_xi)
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 34
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_zeta)
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 33
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_eta)
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 32
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_xi)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5qstopEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_qstop = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 58
  %0 = load double, double* %m_qstop, align 8, !tbaa !97
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 37
  %0 = load double*, double** %m_delx_zeta, align 8, !tbaa !91
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 34
  %0 = load double*, double** %m_delv_zeta, align 8, !tbaa !94
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 35
  %0 = load double*, double** %m_delx_xi, align 8, !tbaa !89
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 32
  %0 = load double*, double** %m_delv_xi, align 8, !tbaa !92
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 36
  %0 = load double*, double** %m_delx_eta, align 8, !tbaa !90
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 33
  %0 = load double*, double** %m_delv_eta, align 8, !tbaa !93
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numReg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 16
  ret i32* %m_numReg
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 18
  %0 = load i32*, i32** %m_regElemSize, align 8, !tbaa !98
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  ret i32* %arrayidx
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcMonotonicQRegionForElemsR6Domainid(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %r, double %ptiny) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %r.addr = alloca i32, align 4
  %ptiny.addr = alloca double, align 8
  %monoq_limiter_mult = alloca double, align 8
  %monoq_max_slope = alloca double, align 8
  %qlc_monoq = alloca double, align 8
  %qqc_monoq = alloca double, align 8
  %i = alloca i32, align 4
  %ielem = alloca i32, align 4
  %qlin = alloca double, align 8
  %qquad = alloca double, align 8
  %phixi = alloca double, align 8
  %phieta = alloca double, align 8
  %phizeta = alloca double, align 8
  %bcMask = alloca i32, align 4
  %delvm = alloca double, align 8
  %delvp = alloca double, align 8
  %norm = alloca double, align 8
  %delvxxi = alloca double, align 8
  %delvxeta = alloca double, align 8
  %delvxzeta = alloca double, align 8
  %rho = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32 %r, i32* %r.addr, align 4, !tbaa !8
  store double %ptiny, double* %ptiny.addr, align 8, !tbaa !6
  %0 = bitcast double* %monoq_limiter_mult to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* %1)
  store double %call, double* %monoq_limiter_mult, align 8, !tbaa !6
  %2 = bitcast double* %monoq_max_slope to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* %3)
  store double %call1, double* %monoq_max_slope, align 8, !tbaa !6
  %4 = bitcast double* %qlc_monoq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call double @_ZNK6Domain9qlc_monoqEv(%class.Domain* %5)
  store double %call2, double* %qlc_monoq, align 8, !tbaa !6
  %6 = bitcast double* %qqc_monoq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call3 = call double @_ZNK6Domain9qqc_monoqEv(%class.Domain* %7)
  store double %call3, double* %qqc_monoq, align 8, !tbaa !6
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %10 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %11 = load i32, i32* %r.addr, align 4, !tbaa !8
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %10, i32 %11)
  %12 = load i32, i32* %call4, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, %12
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %16 = load i32, i32* %r.addr, align 4, !tbaa !8
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %15, i32 %16, i32 %17)
  %18 = load i32, i32* %call5, align 4, !tbaa !8
  store i32 %18, i32* %ielem, align 4, !tbaa !8
  %19 = bitcast double* %qlin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #3
  %20 = bitcast double* %qquad to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  %21 = bitcast double* %phixi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #3
  %22 = bitcast double* %phieta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #3
  %23 = bitcast double* %phizeta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #3
  %24 = bitcast i32* %bcMask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %26 = load i32, i32* %ielem, align 4, !tbaa !8
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %25, i32 %26)
  %27 = load i32, i32* %call6, align 4, !tbaa !8
  store i32 %27, i32* %bcMask, align 4, !tbaa !8
  %28 = bitcast double* %delvm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  %29 = bitcast double* %delvp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #3
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  %30 = bitcast double* %norm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %32 = load i32, i32* %ielem, align 4, !tbaa !8
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %31, i32 %32)
  %33 = load double, double* %call7, align 8, !tbaa !6
  %34 = load double, double* %ptiny.addr, align 8, !tbaa !6
  %add = fadd double %33, %34
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %norm, align 8, !tbaa !6
  %35 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and = and i32 %35, 7
  switch i32 %and, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %36 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %37 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %38 = load i32, i32* %ielem, align 4, !tbaa !8
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %37, i32 %38)
  %39 = load i32, i32* %call8, align 4, !tbaa !8
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %36, i32 %39)
  %40 = load double, double* %call9, align 8, !tbaa !6
  store double %40, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %41 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %42 = load i32, i32* %ielem, align 4, !tbaa !8
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %41, i32 %42)
  %43 = load double, double* %call11, align 8, !tbaa !6
  store double %43, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1787)
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb
  %45 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and14 = and i32 %45, 56
  switch i32 %and14, label %sw.default21 [
    i32 32, label %sw.bb15
    i32 0, label %sw.bb15
    i32 8, label %sw.bb18
    i32 16, label %sw.bb20
  ]

sw.bb15:                                          ; preds = %sw.epilog, %sw.epilog
  %46 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %47 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %48 = load i32, i32* %ielem, align 4, !tbaa !8
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %47, i32 %48)
  %49 = load i32, i32* %call16, align 4, !tbaa !8
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %46, i32 %49)
  %50 = load double, double* %call17, align 8, !tbaa !6
  store double %50, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog23

sw.bb18:                                          ; preds = %sw.epilog
  %51 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %52 = load i32, i32* %ielem, align 4, !tbaa !8
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %51, i32 %52)
  %53 = load double, double* %call19, align 8, !tbaa !6
  store double %53, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog23

sw.bb20:                                          ; preds = %sw.epilog
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog23

sw.default21:                                     ; preds = %sw.epilog
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1797)
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.default21, %sw.bb20, %sw.bb18, %sw.bb15
  %55 = load double, double* %delvm, align 8, !tbaa !6
  %56 = load double, double* %norm, align 8, !tbaa !6
  %mul = fmul double %55, %56
  store double %mul, double* %delvm, align 8, !tbaa !6
  %57 = load double, double* %delvp, align 8, !tbaa !6
  %58 = load double, double* %norm, align 8, !tbaa !6
  %mul24 = fmul double %57, %58
  store double %mul24, double* %delvp, align 8, !tbaa !6
  %59 = load double, double* %delvm, align 8, !tbaa !6
  %60 = load double, double* %delvp, align 8, !tbaa !6
  %add25 = fadd double %59, %60
  %mul26 = fmul double 5.000000e-01, %add25
  store double %mul26, double* %phixi, align 8, !tbaa !6
  %61 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %62 = load double, double* %delvm, align 8, !tbaa !6
  %mul27 = fmul double %62, %61
  store double %mul27, double* %delvm, align 8, !tbaa !6
  %63 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %64 = load double, double* %delvp, align 8, !tbaa !6
  %mul28 = fmul double %64, %63
  store double %mul28, double* %delvp, align 8, !tbaa !6
  %65 = load double, double* %delvm, align 8, !tbaa !6
  %66 = load double, double* %phixi, align 8, !tbaa !6
  %cmp29 = fcmp olt double %65, %66
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog23
  %67 = load double, double* %delvm, align 8, !tbaa !6
  store double %67, double* %phixi, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog23
  %68 = load double, double* %delvp, align 8, !tbaa !6
  %69 = load double, double* %phixi, align 8, !tbaa !6
  %cmp30 = fcmp olt double %68, %69
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end
  %70 = load double, double* %delvp, align 8, !tbaa !6
  store double %70, double* %phixi, align 8, !tbaa !6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %71 = load double, double* %phixi, align 8, !tbaa !6
  %cmp33 = fcmp olt double %71, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  store double 0.000000e+00, double* %phixi, align 8, !tbaa !6
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %72 = load double, double* %phixi, align 8, !tbaa !6
  %73 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  %cmp36 = fcmp ogt double %72, %73
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  %74 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  store double %74, double* %phixi, align 8, !tbaa !6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  %75 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %76 = load i32, i32* %ielem, align 4, !tbaa !8
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %75, i32 %76)
  %77 = load double, double* %call39, align 8, !tbaa !6
  %78 = load double, double* %ptiny.addr, align 8, !tbaa !6
  %add40 = fadd double %77, %78
  %div41 = fdiv double 1.000000e+00, %add40
  store double %div41, double* %norm, align 8, !tbaa !6
  %79 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and42 = and i32 %79, 448
  switch i32 %and42, label %sw.default49 [
    i32 256, label %sw.bb43
    i32 0, label %sw.bb43
    i32 64, label %sw.bb46
    i32 128, label %sw.bb48
  ]

sw.bb43:                                          ; preds = %if.end38, %if.end38
  %80 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %81 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %82 = load i32, i32* %ielem, align 4, !tbaa !8
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %81, i32 %82)
  %83 = load i32, i32* %call44, align 4, !tbaa !8
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %80, i32 %83)
  %84 = load double, double* %call45, align 8, !tbaa !6
  store double %84, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog51

sw.bb46:                                          ; preds = %if.end38
  %85 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %86 = load i32, i32* %ielem, align 4, !tbaa !8
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %85, i32 %86)
  %87 = load double, double* %call47, align 8, !tbaa !6
  store double %87, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog51

sw.bb48:                                          ; preds = %if.end38
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog51

sw.default49:                                     ; preds = %if.end38
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1825)
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.default49, %sw.bb48, %sw.bb46, %sw.bb43
  %89 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and52 = and i32 %89, 3584
  switch i32 %and52, label %sw.default59 [
    i32 2048, label %sw.bb53
    i32 0, label %sw.bb53
    i32 512, label %sw.bb56
    i32 1024, label %sw.bb58
  ]

sw.bb53:                                          ; preds = %sw.epilog51, %sw.epilog51
  %90 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %91 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %92 = load i32, i32* %ielem, align 4, !tbaa !8
  %call54 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %91, i32 %92)
  %93 = load i32, i32* %call54, align 4, !tbaa !8
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %90, i32 %93)
  %94 = load double, double* %call55, align 8, !tbaa !6
  store double %94, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog61

sw.bb56:                                          ; preds = %sw.epilog51
  %95 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %96 = load i32, i32* %ielem, align 4, !tbaa !8
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %95, i32 %96)
  %97 = load double, double* %call57, align 8, !tbaa !6
  store double %97, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog61

sw.bb58:                                          ; preds = %sw.epilog51
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog61

sw.default59:                                     ; preds = %sw.epilog51
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1835)
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default59, %sw.bb58, %sw.bb56, %sw.bb53
  %99 = load double, double* %delvm, align 8, !tbaa !6
  %100 = load double, double* %norm, align 8, !tbaa !6
  %mul62 = fmul double %99, %100
  store double %mul62, double* %delvm, align 8, !tbaa !6
  %101 = load double, double* %delvp, align 8, !tbaa !6
  %102 = load double, double* %norm, align 8, !tbaa !6
  %mul63 = fmul double %101, %102
  store double %mul63, double* %delvp, align 8, !tbaa !6
  %103 = load double, double* %delvm, align 8, !tbaa !6
  %104 = load double, double* %delvp, align 8, !tbaa !6
  %add64 = fadd double %103, %104
  %mul65 = fmul double 5.000000e-01, %add64
  store double %mul65, double* %phieta, align 8, !tbaa !6
  %105 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %106 = load double, double* %delvm, align 8, !tbaa !6
  %mul66 = fmul double %106, %105
  store double %mul66, double* %delvm, align 8, !tbaa !6
  %107 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %108 = load double, double* %delvp, align 8, !tbaa !6
  %mul67 = fmul double %108, %107
  store double %mul67, double* %delvp, align 8, !tbaa !6
  %109 = load double, double* %delvm, align 8, !tbaa !6
  %110 = load double, double* %phieta, align 8, !tbaa !6
  %cmp68 = fcmp olt double %109, %110
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.epilog61
  %111 = load double, double* %delvm, align 8, !tbaa !6
  store double %111, double* %phieta, align 8, !tbaa !6
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %sw.epilog61
  %112 = load double, double* %delvp, align 8, !tbaa !6
  %113 = load double, double* %phieta, align 8, !tbaa !6
  %cmp71 = fcmp olt double %112, %113
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  %114 = load double, double* %delvp, align 8, !tbaa !6
  store double %114, double* %phieta, align 8, !tbaa !6
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  %115 = load double, double* %phieta, align 8, !tbaa !6
  %cmp74 = fcmp olt double %115, 0.000000e+00
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end73
  store double 0.000000e+00, double* %phieta, align 8, !tbaa !6
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73
  %116 = load double, double* %phieta, align 8, !tbaa !6
  %117 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  %cmp77 = fcmp ogt double %116, %117
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end76
  %118 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  store double %118, double* %phieta, align 8, !tbaa !6
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76
  %119 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %120 = load i32, i32* %ielem, align 4, !tbaa !8
  %call80 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %119, i32 %120)
  %121 = load double, double* %call80, align 8, !tbaa !6
  %122 = load double, double* %ptiny.addr, align 8, !tbaa !6
  %add81 = fadd double %121, %122
  %div82 = fdiv double 1.000000e+00, %add81
  store double %div82, double* %norm, align 8, !tbaa !6
  %123 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and83 = and i32 %123, 28672
  switch i32 %and83, label %sw.default90 [
    i32 16384, label %sw.bb84
    i32 0, label %sw.bb84
    i32 4096, label %sw.bb87
    i32 8192, label %sw.bb89
  ]

sw.bb84:                                          ; preds = %if.end79, %if.end79
  %124 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %125 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %126 = load i32, i32* %ielem, align 4, !tbaa !8
  %call85 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %125, i32 %126)
  %127 = load i32, i32* %call85, align 4, !tbaa !8
  %call86 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %124, i32 %127)
  %128 = load double, double* %call86, align 8, !tbaa !6
  store double %128, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog92

sw.bb87:                                          ; preds = %if.end79
  %129 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %130 = load i32, i32* %ielem, align 4, !tbaa !8
  %call88 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %129, i32 %130)
  %131 = load double, double* %call88, align 8, !tbaa !6
  store double %131, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog92

sw.bb89:                                          ; preds = %if.end79
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.end79
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1862)
  store double 0.000000e+00, double* %delvm, align 8, !tbaa !6
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb89, %sw.bb87, %sw.bb84
  %133 = load i32, i32* %bcMask, align 4, !tbaa !8
  %and93 = and i32 %133, 229376
  switch i32 %and93, label %sw.default100 [
    i32 131072, label %sw.bb94
    i32 0, label %sw.bb94
    i32 32768, label %sw.bb97
    i32 65536, label %sw.bb99
  ]

sw.bb94:                                          ; preds = %sw.epilog92, %sw.epilog92
  %134 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %135 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %136 = load i32, i32* %ielem, align 4, !tbaa !8
  %call95 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %135, i32 %136)
  %137 = load i32, i32* %call95, align 4, !tbaa !8
  %call96 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %134, i32 %137)
  %138 = load double, double* %call96, align 8, !tbaa !6
  store double %138, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog102

sw.bb97:                                          ; preds = %sw.epilog92
  %139 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %140 = load i32, i32* %ielem, align 4, !tbaa !8
  %call98 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %139, i32 %140)
  %141 = load double, double* %call98, align 8, !tbaa !6
  store double %141, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog102

sw.bb99:                                          ; preds = %sw.epilog92
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog102

sw.default100:                                    ; preds = %sw.epilog92
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1872)
  store double 0.000000e+00, double* %delvp, align 8, !tbaa !6
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.default100, %sw.bb99, %sw.bb97, %sw.bb94
  %143 = load double, double* %delvm, align 8, !tbaa !6
  %144 = load double, double* %norm, align 8, !tbaa !6
  %mul103 = fmul double %143, %144
  store double %mul103, double* %delvm, align 8, !tbaa !6
  %145 = load double, double* %delvp, align 8, !tbaa !6
  %146 = load double, double* %norm, align 8, !tbaa !6
  %mul104 = fmul double %145, %146
  store double %mul104, double* %delvp, align 8, !tbaa !6
  %147 = load double, double* %delvm, align 8, !tbaa !6
  %148 = load double, double* %delvp, align 8, !tbaa !6
  %add105 = fadd double %147, %148
  %mul106 = fmul double 5.000000e-01, %add105
  store double %mul106, double* %phizeta, align 8, !tbaa !6
  %149 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %150 = load double, double* %delvm, align 8, !tbaa !6
  %mul107 = fmul double %150, %149
  store double %mul107, double* %delvm, align 8, !tbaa !6
  %151 = load double, double* %monoq_limiter_mult, align 8, !tbaa !6
  %152 = load double, double* %delvp, align 8, !tbaa !6
  %mul108 = fmul double %152, %151
  store double %mul108, double* %delvp, align 8, !tbaa !6
  %153 = load double, double* %delvm, align 8, !tbaa !6
  %154 = load double, double* %phizeta, align 8, !tbaa !6
  %cmp109 = fcmp olt double %153, %154
  br i1 %cmp109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %sw.epilog102
  %155 = load double, double* %delvm, align 8, !tbaa !6
  store double %155, double* %phizeta, align 8, !tbaa !6
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %sw.epilog102
  %156 = load double, double* %delvp, align 8, !tbaa !6
  %157 = load double, double* %phizeta, align 8, !tbaa !6
  %cmp112 = fcmp olt double %156, %157
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end111
  %158 = load double, double* %delvp, align 8, !tbaa !6
  store double %158, double* %phizeta, align 8, !tbaa !6
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end111
  %159 = load double, double* %phizeta, align 8, !tbaa !6
  %cmp115 = fcmp olt double %159, 0.000000e+00
  br i1 %cmp115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end114
  store double 0.000000e+00, double* %phizeta, align 8, !tbaa !6
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end114
  %160 = load double, double* %phizeta, align 8, !tbaa !6
  %161 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  %cmp118 = fcmp ogt double %160, %161
  br i1 %cmp118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end117
  %162 = load double, double* %monoq_max_slope, align 8, !tbaa !6
  store double %162, double* %phizeta, align 8, !tbaa !6
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end117
  %163 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %164 = load i32, i32* %ielem, align 4, !tbaa !8
  %call121 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %163, i32 %164)
  %165 = load double, double* %call121, align 8, !tbaa !6
  %cmp122 = fcmp ogt double %165, 0.000000e+00
  br i1 %cmp122, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.end120
  store double 0.000000e+00, double* %qlin, align 8, !tbaa !6
  store double 0.000000e+00, double* %qquad, align 8, !tbaa !6
  br label %if.end172

if.else:                                          ; preds = %if.end120
  %166 = bitcast double* %delvxxi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %166) #3
  %167 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %168 = load i32, i32* %ielem, align 4, !tbaa !8
  %call124 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %167, i32 %168)
  %169 = load double, double* %call124, align 8, !tbaa !6
  %170 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %171 = load i32, i32* %ielem, align 4, !tbaa !8
  %call125 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %170, i32 %171)
  %172 = load double, double* %call125, align 8, !tbaa !6
  %mul126 = fmul double %169, %172
  store double %mul126, double* %delvxxi, align 8, !tbaa !6
  %173 = bitcast double* %delvxeta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %173) #3
  %174 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %175 = load i32, i32* %ielem, align 4, !tbaa !8
  %call127 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %174, i32 %175)
  %176 = load double, double* %call127, align 8, !tbaa !6
  %177 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %178 = load i32, i32* %ielem, align 4, !tbaa !8
  %call128 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %177, i32 %178)
  %179 = load double, double* %call128, align 8, !tbaa !6
  %mul129 = fmul double %176, %179
  store double %mul129, double* %delvxeta, align 8, !tbaa !6
  %180 = bitcast double* %delvxzeta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %180) #3
  %181 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %182 = load i32, i32* %ielem, align 4, !tbaa !8
  %call130 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %181, i32 %182)
  %183 = load double, double* %call130, align 8, !tbaa !6
  %184 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %185 = load i32, i32* %ielem, align 4, !tbaa !8
  %call131 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %184, i32 %185)
  %186 = load double, double* %call131, align 8, !tbaa !6
  %mul132 = fmul double %183, %186
  store double %mul132, double* %delvxzeta, align 8, !tbaa !6
  %187 = load double, double* %delvxxi, align 8, !tbaa !6
  %cmp133 = fcmp ogt double %187, 0.000000e+00
  br i1 %cmp133, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.else
  store double 0.000000e+00, double* %delvxxi, align 8, !tbaa !6
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.else
  %188 = load double, double* %delvxeta, align 8, !tbaa !6
  %cmp136 = fcmp ogt double %188, 0.000000e+00
  br i1 %cmp136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end135
  store double 0.000000e+00, double* %delvxeta, align 8, !tbaa !6
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end135
  %189 = load double, double* %delvxzeta, align 8, !tbaa !6
  %cmp139 = fcmp ogt double %189, 0.000000e+00
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end138
  store double 0.000000e+00, double* %delvxzeta, align 8, !tbaa !6
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end138
  %190 = bitcast double* %rho to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %190) #3
  %191 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %192 = load i32, i32* %ielem, align 4, !tbaa !8
  %call142 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %191, i32 %192)
  %193 = load double, double* %call142, align 8, !tbaa !6
  %194 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %195 = load i32, i32* %ielem, align 4, !tbaa !8
  %call143 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %194, i32 %195)
  %196 = load double, double* %call143, align 8, !tbaa !6
  %197 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %198 = load i32, i32* %ielem, align 4, !tbaa !8
  %call144 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %197, i32 %198)
  %199 = load double, double* %call144, align 8, !tbaa !6
  %mul145 = fmul double %196, %199
  %div146 = fdiv double %193, %mul145
  store double %div146, double* %rho, align 8, !tbaa !6
  %200 = load double, double* %qlc_monoq, align 8, !tbaa !6
  %fneg = fneg double %200
  %201 = load double, double* %rho, align 8, !tbaa !6
  %mul147 = fmul double %fneg, %201
  %202 = load double, double* %delvxxi, align 8, !tbaa !6
  %203 = load double, double* %phixi, align 8, !tbaa !6
  %sub = fsub double 1.000000e+00, %203
  %mul148 = fmul double %202, %sub
  %204 = load double, double* %delvxeta, align 8, !tbaa !6
  %205 = load double, double* %phieta, align 8, !tbaa !6
  %sub149 = fsub double 1.000000e+00, %205
  %mul150 = fmul double %204, %sub149
  %add151 = fadd double %mul148, %mul150
  %206 = load double, double* %delvxzeta, align 8, !tbaa !6
  %207 = load double, double* %phizeta, align 8, !tbaa !6
  %sub152 = fsub double 1.000000e+00, %207
  %mul153 = fmul double %206, %sub152
  %add154 = fadd double %add151, %mul153
  %mul155 = fmul double %mul147, %add154
  store double %mul155, double* %qlin, align 8, !tbaa !6
  %208 = load double, double* %qqc_monoq, align 8, !tbaa !6
  %209 = load double, double* %rho, align 8, !tbaa !6
  %mul156 = fmul double %208, %209
  %210 = load double, double* %delvxxi, align 8, !tbaa !6
  %211 = load double, double* %delvxxi, align 8, !tbaa !6
  %mul157 = fmul double %210, %211
  %212 = load double, double* %phixi, align 8, !tbaa !6
  %213 = load double, double* %phixi, align 8, !tbaa !6
  %mul158 = fmul double %212, %213
  %sub159 = fsub double 1.000000e+00, %mul158
  %mul160 = fmul double %mul157, %sub159
  %214 = load double, double* %delvxeta, align 8, !tbaa !6
  %215 = load double, double* %delvxeta, align 8, !tbaa !6
  %mul161 = fmul double %214, %215
  %216 = load double, double* %phieta, align 8, !tbaa !6
  %217 = load double, double* %phieta, align 8, !tbaa !6
  %mul162 = fmul double %216, %217
  %sub163 = fsub double 1.000000e+00, %mul162
  %mul164 = fmul double %mul161, %sub163
  %add165 = fadd double %mul160, %mul164
  %218 = load double, double* %delvxzeta, align 8, !tbaa !6
  %219 = load double, double* %delvxzeta, align 8, !tbaa !6
  %mul166 = fmul double %218, %219
  %220 = load double, double* %phizeta, align 8, !tbaa !6
  %221 = load double, double* %phizeta, align 8, !tbaa !6
  %mul167 = fmul double %220, %221
  %sub168 = fsub double 1.000000e+00, %mul167
  %mul169 = fmul double %mul166, %sub168
  %add170 = fadd double %add165, %mul169
  %mul171 = fmul double %mul156, %add170
  store double %mul171, double* %qquad, align 8, !tbaa !6
  %222 = bitcast double* %rho to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %222) #3
  %223 = bitcast double* %delvxzeta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %223) #3
  %224 = bitcast double* %delvxeta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %224) #3
  %225 = bitcast double* %delvxxi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %225) #3
  br label %if.end172

if.end172:                                        ; preds = %if.end141, %if.then123
  %226 = load double, double* %qquad, align 8, !tbaa !6
  %227 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %228 = load i32, i32* %ielem, align 4, !tbaa !8
  %call173 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %227, i32 %228)
  store double %226, double* %call173, align 8, !tbaa !6
  %229 = load double, double* %qlin, align 8, !tbaa !6
  %230 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %231 = load i32, i32* %ielem, align 4, !tbaa !8
  %call174 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %230, i32 %231)
  store double %229, double* %call174, align 8, !tbaa !6
  %232 = bitcast double* %norm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %232) #3
  %233 = bitcast double* %delvp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %233) #3
  %234 = bitcast double* %delvm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %234) #3
  %235 = bitcast i32* %bcMask to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %235) #3
  %236 = bitcast double* %phizeta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %236) #3
  %237 = bitcast double* %phieta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %237) #3
  %238 = bitcast double* %phixi to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #3
  %239 = bitcast double* %qquad to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %239) #3
  %240 = bitcast double* %qlin to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %240) #3
  %241 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %241) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end172
  %242 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %242, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond.cleanup
  %243 = bitcast double* %qqc_monoq to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %243) #3
  %244 = bitcast double* %qlc_monoq to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %244) #3
  %245 = bitcast double* %monoq_max_slope to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %245) #3
  %246 = bitcast double* %monoq_limiter_mult to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %246) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_monoq_limiter_mult = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 60
  %0 = load double, double* %m_monoq_limiter_mult, align 8, !tbaa !100
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_monoq_max_slope = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 59
  %0 = load double, double* %m_monoq_max_slope, align 8, !tbaa !101
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain9qlc_monoqEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_qlc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 61
  %0 = load double, double* %m_qlc_monoq, align 8, !tbaa !102
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain9qqc_monoqEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_qqc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 62
  %0 = load double, double* %m_qqc_monoq, align 8, !tbaa !103
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this, i32 %r, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %r.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %r, i32* %r.addr, align 4, !tbaa !8
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %0 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !104
  %1 = load i32, i32* %r.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8, !tbaa !2
  %3 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %2, i64 %idxprom2
  ret i32* %arrayidx3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_elemBC, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxim, i64 %conv) #3
  ret i32* %call
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxip, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letam, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letap, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetam, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetap, i64 %conv) #3
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 42
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_qq, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 41
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ql, i64 %conv) #3
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7eosvminEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_eosvmin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 65
  %0 = load double, double* %m_eosvmin, align 8, !tbaa !105
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7eosvmaxEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_eosvmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 64
  %0 = load double, double* %m_eosvmax, align 8, !tbaa !106
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain11regElemlistEi(%class.Domain* %this, i32 %r) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %r.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %r, i32* %r.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %0 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !104
  %1 = load i32, i32* %r.addr, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8, !tbaa !2
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_cost = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 17
  ret i32* %m_cost
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %vnewc, i32 %numElemReg, i32* %regElemList, i32 %rep) #7 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %vnewc.addr = alloca double*, align 8
  %numElemReg.addr = alloca i32, align 4
  %regElemList.addr = alloca i32*, align 8
  %rep.addr = alloca i32, align 4
  %e_cut = alloca double, align 8
  %p_cut = alloca double, align 8
  %ss4o3 = alloca double, align 8
  %q_cut = alloca double, align 8
  %eosvmax = alloca double, align 8
  %eosvmin = alloca double, align 8
  %pmin = alloca double, align 8
  %emin = alloca double, align 8
  %rho0 = alloca double, align 8
  %e_old = alloca double*, align 8
  %delvc = alloca double*, align 8
  %p_old = alloca double*, align 8
  %q_old = alloca double*, align 8
  %compression = alloca double*, align 8
  %compHalfStep = alloca double*, align 8
  %qq_old = alloca double*, align 8
  %ql_old = alloca double*, align 8
  %work = alloca double*, align 8
  %p_new = alloca double*, align 8
  %e_new = alloca double*, align 8
  %q_new = alloca double*, align 8
  %bvc = alloca double*, align 8
  %pbvc = alloca double*, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %ielem = alloca i32, align 4
  %i58 = alloca i32, align 4
  %ielem63 = alloca i32, align 4
  %vchalf = alloca double, align 8
  %i83 = alloca i32, align 4
  %ielem88 = alloca i32, align 4
  %i105 = alloca i32, align 4
  %ielem110 = alloca i32, align 4
  %i128 = alloca i32, align 4
  %i141 = alloca i32, align 4
  %ielem146 = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %vnewc, double** %vnewc.addr, align 8, !tbaa !2
  store i32 %numElemReg, i32* %numElemReg.addr, align 4, !tbaa !8
  store i32* %regElemList, i32** %regElemList.addr, align 8, !tbaa !2
  store i32 %rep, i32* %rep.addr, align 4, !tbaa !8
  %0 = bitcast double* %e_cut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call = call double @_ZNK6Domain5e_cutEv(%class.Domain* %1)
  store double %call, double* %e_cut, align 8, !tbaa !6
  %2 = bitcast double* %p_cut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call1 = call double @_ZNK6Domain5p_cutEv(%class.Domain* %3)
  store double %call1, double* %p_cut, align 8, !tbaa !6
  %4 = bitcast double* %ss4o3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  %5 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call2 = call double @_ZNK6Domain5ss4o3Ev(%class.Domain* %5)
  store double %call2, double* %ss4o3, align 8, !tbaa !6
  %6 = bitcast double* %q_cut to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call3 = call double @_ZNK6Domain5q_cutEv(%class.Domain* %7)
  store double %call3, double* %q_cut, align 8, !tbaa !6
  %8 = bitcast double* %eosvmax to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call4 = call double @_ZNK6Domain7eosvmaxEv(%class.Domain* %9)
  store double %call4, double* %eosvmax, align 8, !tbaa !6
  %10 = bitcast double* %eosvmin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call5 = call double @_ZNK6Domain7eosvminEv(%class.Domain* %11)
  store double %call5, double* %eosvmin, align 8, !tbaa !6
  %12 = bitcast double* %pmin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call6 = call double @_ZNK6Domain4pminEv(%class.Domain* %13)
  store double %call6, double* %pmin, align 8, !tbaa !6
  %14 = bitcast double* %emin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  %15 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call7 = call double @_ZNK6Domain4eminEv(%class.Domain* %15)
  store double %call7, double* %emin, align 8, !tbaa !6
  %16 = bitcast double* %rho0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  %17 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %call8 = call double @_ZNK6Domain7refdensEv(%class.Domain* %17)
  store double %call8, double* %rho0, align 8, !tbaa !6
  %18 = bitcast double** %e_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #3
  %19 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv = sext i32 %19 to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call9, double** %e_old, align 8, !tbaa !2
  %20 = bitcast double** %delvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #3
  %21 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv10 = sext i32 %21 to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  store double* %call11, double** %delvc, align 8, !tbaa !2
  %22 = bitcast double** %p_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #3
  %23 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv12 = sext i32 %23 to i64
  %call13 = call double* @_Z8AllocateIdEPT_m(i64 %conv12)
  store double* %call13, double** %p_old, align 8, !tbaa !2
  %24 = bitcast double** %q_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #3
  %25 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv14 = sext i32 %25 to i64
  %call15 = call double* @_Z8AllocateIdEPT_m(i64 %conv14)
  store double* %call15, double** %q_old, align 8, !tbaa !2
  %26 = bitcast double** %compression to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #3
  %27 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv16 = sext i32 %27 to i64
  %call17 = call double* @_Z8AllocateIdEPT_m(i64 %conv16)
  store double* %call17, double** %compression, align 8, !tbaa !2
  %28 = bitcast double** %compHalfStep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #3
  %29 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv18 = sext i32 %29 to i64
  %call19 = call double* @_Z8AllocateIdEPT_m(i64 %conv18)
  store double* %call19, double** %compHalfStep, align 8, !tbaa !2
  %30 = bitcast double** %qq_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv20 = sext i32 %31 to i64
  %call21 = call double* @_Z8AllocateIdEPT_m(i64 %conv20)
  store double* %call21, double** %qq_old, align 8, !tbaa !2
  %32 = bitcast double** %ql_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #3
  %33 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv22 = sext i32 %33 to i64
  %call23 = call double* @_Z8AllocateIdEPT_m(i64 %conv22)
  store double* %call23, double** %ql_old, align 8, !tbaa !2
  %34 = bitcast double** %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #3
  %35 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv24 = sext i32 %35 to i64
  %call25 = call double* @_Z8AllocateIdEPT_m(i64 %conv24)
  store double* %call25, double** %work, align 8, !tbaa !2
  %36 = bitcast double** %p_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #3
  %37 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv26 = sext i32 %37 to i64
  %call27 = call double* @_Z8AllocateIdEPT_m(i64 %conv26)
  store double* %call27, double** %p_new, align 8, !tbaa !2
  %38 = bitcast double** %e_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %38) #3
  %39 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv28 = sext i32 %39 to i64
  %call29 = call double* @_Z8AllocateIdEPT_m(i64 %conv28)
  store double* %call29, double** %e_new, align 8, !tbaa !2
  %40 = bitcast double** %q_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %40) #3
  %41 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv30 = sext i32 %41 to i64
  %call31 = call double* @_Z8AllocateIdEPT_m(i64 %conv30)
  store double* %call31, double** %q_new, align 8, !tbaa !2
  %42 = bitcast double** %bvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %42) #3
  %43 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv32 = sext i32 %43 to i64
  %call33 = call double* @_Z8AllocateIdEPT_m(i64 %conv32)
  store double* %call33, double** %bvc, align 8, !tbaa !2
  %44 = bitcast double** %pbvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %44) #3
  %45 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %conv34 = sext i32 %45 to i64
  %call35 = call double* @_Z8AllocateIdEPT_m(i64 %conv34)
  store double* %call35, double** %pbvc, align 8, !tbaa !2
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #3
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %47 = load i32, i32* %j, align 4, !tbaa !8
  %48 = load i32, i32* %rep.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %47, %48
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  br label %for.end140

for.body:                                         ; preds = %for.cond
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !8
  %52 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp37 = icmp slt i32 %51, %52
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond36
  store i32 5, i32* %cleanup.dest.slot, align 4
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3
  br label %for.end

for.body39:                                       ; preds = %for.cond36
  %54 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #3
  %55 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %56 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %56 to i64
  %arrayidx = getelementptr inbounds i32, i32* %55, i64 %idxprom
  %57 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %57, i32* %ielem, align 4, !tbaa !8
  %58 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %59 = load i32, i32* %ielem, align 4, !tbaa !8
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %58, i32 %59)
  %60 = load double, double* %call40, align 8, !tbaa !6
  %61 = load double*, double** %e_old, align 8, !tbaa !2
  %62 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom41 = sext i32 %62 to i64
  %arrayidx42 = getelementptr inbounds double, double* %61, i64 %idxprom41
  store double %60, double* %arrayidx42, align 8, !tbaa !6
  %63 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %64 = load i32, i32* %ielem, align 4, !tbaa !8
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %63, i32 %64)
  %65 = load double, double* %call43, align 8, !tbaa !6
  %66 = load double*, double** %delvc, align 8, !tbaa !2
  %67 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom44 = sext i32 %67 to i64
  %arrayidx45 = getelementptr inbounds double, double* %66, i64 %idxprom44
  store double %65, double* %arrayidx45, align 8, !tbaa !6
  %68 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %69 = load i32, i32* %ielem, align 4, !tbaa !8
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %68, i32 %69)
  %70 = load double, double* %call46, align 8, !tbaa !6
  %71 = load double*, double** %p_old, align 8, !tbaa !2
  %72 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom47 = sext i32 %72 to i64
  %arrayidx48 = getelementptr inbounds double, double* %71, i64 %idxprom47
  store double %70, double* %arrayidx48, align 8, !tbaa !6
  %73 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %74 = load i32, i32* %ielem, align 4, !tbaa !8
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %73, i32 %74)
  %75 = load double, double* %call49, align 8, !tbaa !6
  %76 = load double*, double** %q_old, align 8, !tbaa !2
  %77 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom50 = sext i32 %77 to i64
  %arrayidx51 = getelementptr inbounds double, double* %76, i64 %idxprom50
  store double %75, double* %arrayidx51, align 8, !tbaa !6
  %78 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %79 = load i32, i32* %ielem, align 4, !tbaa !8
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %78, i32 %79)
  %80 = load double, double* %call52, align 8, !tbaa !6
  %81 = load double*, double** %qq_old, align 8, !tbaa !2
  %82 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom53 = sext i32 %82 to i64
  %arrayidx54 = getelementptr inbounds double, double* %81, i64 %idxprom53
  store double %80, double* %arrayidx54, align 8, !tbaa !6
  %83 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %84 = load i32, i32* %ielem, align 4, !tbaa !8
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %83, i32 %84)
  %85 = load double, double* %call55, align 8, !tbaa !6
  %86 = load double*, double** %ql_old, align 8, !tbaa !2
  %87 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom56 = sext i32 %87 to i64
  %arrayidx57 = getelementptr inbounds double, double* %86, i64 %idxprom56
  store double %85, double* %arrayidx57, align 8, !tbaa !6
  %88 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body39
  %89 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond36, !llvm.loop !107

for.end:                                          ; preds = %for.cond.cleanup38
  %90 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %90) #3
  store i32 0, i32* %i58, align 4, !tbaa !8
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc79, %for.end
  %91 = load i32, i32* %i58, align 4, !tbaa !8
  %92 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp60 = icmp slt i32 %91, %92
  br i1 %cmp60, label %for.body62, label %for.cond.cleanup61

for.cond.cleanup61:                               ; preds = %for.cond59
  store i32 8, i32* %cleanup.dest.slot, align 4
  %93 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3
  br label %for.end81

for.body62:                                       ; preds = %for.cond59
  %94 = bitcast i32* %ielem63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %94) #3
  %95 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %96 = load i32, i32* %i58, align 4, !tbaa !8
  %idxprom64 = sext i32 %96 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %95, i64 %idxprom64
  %97 = load i32, i32* %arrayidx65, align 4, !tbaa !8
  store i32 %97, i32* %ielem63, align 4, !tbaa !8
  %98 = bitcast double* %vchalf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %98) #3
  %99 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %100 = load i32, i32* %ielem63, align 4, !tbaa !8
  %idxprom66 = sext i32 %100 to i64
  %arrayidx67 = getelementptr inbounds double, double* %99, i64 %idxprom66
  %101 = load double, double* %arrayidx67, align 8, !tbaa !6
  %div = fdiv double 1.000000e+00, %101
  %sub = fsub double %div, 1.000000e+00
  %102 = load double*, double** %compression, align 8, !tbaa !2
  %103 = load i32, i32* %i58, align 4, !tbaa !8
  %idxprom68 = sext i32 %103 to i64
  %arrayidx69 = getelementptr inbounds double, double* %102, i64 %idxprom68
  store double %sub, double* %arrayidx69, align 8, !tbaa !6
  %104 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %105 = load i32, i32* %ielem63, align 4, !tbaa !8
  %idxprom70 = sext i32 %105 to i64
  %arrayidx71 = getelementptr inbounds double, double* %104, i64 %idxprom70
  %106 = load double, double* %arrayidx71, align 8, !tbaa !6
  %107 = load double*, double** %delvc, align 8, !tbaa !2
  %108 = load i32, i32* %i58, align 4, !tbaa !8
  %idxprom72 = sext i32 %108 to i64
  %arrayidx73 = getelementptr inbounds double, double* %107, i64 %idxprom72
  %109 = load double, double* %arrayidx73, align 8, !tbaa !6
  %mul = fmul double %109, 5.000000e-01
  %sub74 = fsub double %106, %mul
  store double %sub74, double* %vchalf, align 8, !tbaa !6
  %110 = load double, double* %vchalf, align 8, !tbaa !6
  %div75 = fdiv double 1.000000e+00, %110
  %sub76 = fsub double %div75, 1.000000e+00
  %111 = load double*, double** %compHalfStep, align 8, !tbaa !2
  %112 = load i32, i32* %i58, align 4, !tbaa !8
  %idxprom77 = sext i32 %112 to i64
  %arrayidx78 = getelementptr inbounds double, double* %111, i64 %idxprom77
  store double %sub76, double* %arrayidx78, align 8, !tbaa !6
  %113 = bitcast double* %vchalf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #3
  %114 = bitcast i32* %ielem63 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #3
  br label %for.inc79

for.inc79:                                        ; preds = %for.body62
  %115 = load i32, i32* %i58, align 4, !tbaa !8
  %inc80 = add nsw i32 %115, 1
  store i32 %inc80, i32* %i58, align 4, !tbaa !8
  br label %for.cond59, !llvm.loop !108

for.end81:                                        ; preds = %for.cond.cleanup61
  %116 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp82 = fcmp une double %116, 0.000000e+00
  br i1 %cmp82, label %if.then, label %if.end102

if.then:                                          ; preds = %for.end81
  %117 = bitcast i32* %i83 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %117) #3
  store i32 0, i32* %i83, align 4, !tbaa !8
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc99, %if.then
  %118 = load i32, i32* %i83, align 4, !tbaa !8
  %119 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp85 = icmp slt i32 %118, %119
  br i1 %cmp85, label %for.body87, label %for.cond.cleanup86

for.cond.cleanup86:                               ; preds = %for.cond84
  store i32 11, i32* %cleanup.dest.slot, align 4
  %120 = bitcast i32* %i83 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %120) #3
  br label %for.end101

for.body87:                                       ; preds = %for.cond84
  %121 = bitcast i32* %ielem88 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %121) #3
  %122 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %123 = load i32, i32* %i83, align 4, !tbaa !8
  %idxprom89 = sext i32 %123 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %122, i64 %idxprom89
  %124 = load i32, i32* %arrayidx90, align 4, !tbaa !8
  store i32 %124, i32* %ielem88, align 4, !tbaa !8
  %125 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %126 = load i32, i32* %ielem88, align 4, !tbaa !8
  %idxprom91 = sext i32 %126 to i64
  %arrayidx92 = getelementptr inbounds double, double* %125, i64 %idxprom91
  %127 = load double, double* %arrayidx92, align 8, !tbaa !6
  %128 = load double, double* %eosvmin, align 8, !tbaa !6
  %cmp93 = fcmp ole double %127, %128
  br i1 %cmp93, label %if.then94, label %if.end

if.then94:                                        ; preds = %for.body87
  %129 = load double*, double** %compression, align 8, !tbaa !2
  %130 = load i32, i32* %i83, align 4, !tbaa !8
  %idxprom95 = sext i32 %130 to i64
  %arrayidx96 = getelementptr inbounds double, double* %129, i64 %idxprom95
  %131 = load double, double* %arrayidx96, align 8, !tbaa !6
  %132 = load double*, double** %compHalfStep, align 8, !tbaa !2
  %133 = load i32, i32* %i83, align 4, !tbaa !8
  %idxprom97 = sext i32 %133 to i64
  %arrayidx98 = getelementptr inbounds double, double* %132, i64 %idxprom97
  store double %131, double* %arrayidx98, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then94, %for.body87
  %134 = bitcast i32* %ielem88 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134) #3
  br label %for.inc99

for.inc99:                                        ; preds = %if.end
  %135 = load i32, i32* %i83, align 4, !tbaa !8
  %inc100 = add nsw i32 %135, 1
  store i32 %inc100, i32* %i83, align 4, !tbaa !8
  br label %for.cond84, !llvm.loop !109

for.end101:                                       ; preds = %for.cond.cleanup86
  br label %if.end102

if.end102:                                        ; preds = %for.end101, %for.end81
  %136 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp103 = fcmp une double %136, 0.000000e+00
  br i1 %cmp103, label %if.then104, label %if.end127

if.then104:                                       ; preds = %if.end102
  %137 = bitcast i32* %i105 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %137) #3
  store i32 0, i32* %i105, align 4, !tbaa !8
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc124, %if.then104
  %138 = load i32, i32* %i105, align 4, !tbaa !8
  %139 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp107 = icmp slt i32 %138, %139
  br i1 %cmp107, label %for.body109, label %for.cond.cleanup108

for.cond.cleanup108:                              ; preds = %for.cond106
  store i32 14, i32* %cleanup.dest.slot, align 4
  %140 = bitcast i32* %i105 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #3
  br label %for.end126

for.body109:                                      ; preds = %for.cond106
  %141 = bitcast i32* %ielem110 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %141) #3
  %142 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %143 = load i32, i32* %i105, align 4, !tbaa !8
  %idxprom111 = sext i32 %143 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %142, i64 %idxprom111
  %144 = load i32, i32* %arrayidx112, align 4, !tbaa !8
  store i32 %144, i32* %ielem110, align 4, !tbaa !8
  %145 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %146 = load i32, i32* %ielem110, align 4, !tbaa !8
  %idxprom113 = sext i32 %146 to i64
  %arrayidx114 = getelementptr inbounds double, double* %145, i64 %idxprom113
  %147 = load double, double* %arrayidx114, align 8, !tbaa !6
  %148 = load double, double* %eosvmax, align 8, !tbaa !6
  %cmp115 = fcmp oge double %147, %148
  br i1 %cmp115, label %if.then116, label %if.end123

if.then116:                                       ; preds = %for.body109
  %149 = load double*, double** %p_old, align 8, !tbaa !2
  %150 = load i32, i32* %i105, align 4, !tbaa !8
  %idxprom117 = sext i32 %150 to i64
  %arrayidx118 = getelementptr inbounds double, double* %149, i64 %idxprom117
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !6
  %151 = load double*, double** %compression, align 8, !tbaa !2
  %152 = load i32, i32* %i105, align 4, !tbaa !8
  %idxprom119 = sext i32 %152 to i64
  %arrayidx120 = getelementptr inbounds double, double* %151, i64 %idxprom119
  store double 0.000000e+00, double* %arrayidx120, align 8, !tbaa !6
  %153 = load double*, double** %compHalfStep, align 8, !tbaa !2
  %154 = load i32, i32* %i105, align 4, !tbaa !8
  %idxprom121 = sext i32 %154 to i64
  %arrayidx122 = getelementptr inbounds double, double* %153, i64 %idxprom121
  store double 0.000000e+00, double* %arrayidx122, align 8, !tbaa !6
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %for.body109
  %155 = bitcast i32* %ielem110 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #3
  br label %for.inc124

for.inc124:                                       ; preds = %if.end123
  %156 = load i32, i32* %i105, align 4, !tbaa !8
  %inc125 = add nsw i32 %156, 1
  store i32 %inc125, i32* %i105, align 4, !tbaa !8
  br label %for.cond106, !llvm.loop !110

for.end126:                                       ; preds = %for.cond.cleanup108
  br label %if.end127

if.end127:                                        ; preds = %for.end126, %if.end102
  %157 = bitcast i32* %i128 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %157) #3
  store i32 0, i32* %i128, align 4, !tbaa !8
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc135, %if.end127
  %158 = load i32, i32* %i128, align 4, !tbaa !8
  %159 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp130 = icmp slt i32 %158, %159
  br i1 %cmp130, label %for.body132, label %for.cond.cleanup131

for.cond.cleanup131:                              ; preds = %for.cond129
  store i32 17, i32* %cleanup.dest.slot, align 4
  %160 = bitcast i32* %i128 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #3
  br label %for.end137

for.body132:                                      ; preds = %for.cond129
  %161 = load double*, double** %work, align 8, !tbaa !2
  %162 = load i32, i32* %i128, align 4, !tbaa !8
  %idxprom133 = sext i32 %162 to i64
  %arrayidx134 = getelementptr inbounds double, double* %161, i64 %idxprom133
  store double 0.000000e+00, double* %arrayidx134, align 8, !tbaa !6
  br label %for.inc135

for.inc135:                                       ; preds = %for.body132
  %163 = load i32, i32* %i128, align 4, !tbaa !8
  %inc136 = add nsw i32 %163, 1
  store i32 %inc136, i32* %i128, align 4, !tbaa !8
  br label %for.cond129, !llvm.loop !111

for.end137:                                       ; preds = %for.cond.cleanup131
  %164 = load double*, double** %p_new, align 8, !tbaa !2
  %165 = load double*, double** %e_new, align 8, !tbaa !2
  %166 = load double*, double** %q_new, align 8, !tbaa !2
  %167 = load double*, double** %bvc, align 8, !tbaa !2
  %168 = load double*, double** %pbvc, align 8, !tbaa !2
  %169 = load double*, double** %p_old, align 8, !tbaa !2
  %170 = load double*, double** %e_old, align 8, !tbaa !2
  %171 = load double*, double** %q_old, align 8, !tbaa !2
  %172 = load double*, double** %compression, align 8, !tbaa !2
  %173 = load double*, double** %compHalfStep, align 8, !tbaa !2
  %174 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %175 = load double*, double** %work, align 8, !tbaa !2
  %176 = load double*, double** %delvc, align 8, !tbaa !2
  %177 = load double, double* %pmin, align 8, !tbaa !6
  %178 = load double, double* %p_cut, align 8, !tbaa !6
  %179 = load double, double* %e_cut, align 8, !tbaa !6
  %180 = load double, double* %q_cut, align 8, !tbaa !6
  %181 = load double, double* %emin, align 8, !tbaa !6
  %182 = load double*, double** %qq_old, align 8, !tbaa !2
  %183 = load double*, double** %ql_old, align 8, !tbaa !2
  %184 = load double, double* %rho0, align 8, !tbaa !6
  %185 = load double, double* %eosvmax, align 8, !tbaa !6
  %186 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %187 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  call void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* %164, double* %165, double* %166, double* %167, double* %168, double* %169, double* %170, double* %171, double* %172, double* %173, double* %174, double* %175, double* %176, double %177, double %178, double %179, double %180, double %181, double* %182, double* %183, double %184, double %185, i32 %186, i32* %187)
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %188 = load i32, i32* %j, align 4, !tbaa !8
  %inc139 = add nsw i32 %188, 1
  store i32 %inc139, i32* %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !112

for.end140:                                       ; preds = %for.cond.cleanup
  %189 = bitcast i32* %i141 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %189) #3
  store i32 0, i32* %i141, align 4, !tbaa !8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc158, %for.end140
  %190 = load i32, i32* %i141, align 4, !tbaa !8
  %191 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %190, %191
  br i1 %cmp143, label %for.body145, label %for.cond.cleanup144

for.cond.cleanup144:                              ; preds = %for.cond142
  store i32 20, i32* %cleanup.dest.slot, align 4
  %192 = bitcast i32* %i141 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %192) #3
  br label %for.end160

for.body145:                                      ; preds = %for.cond142
  %193 = bitcast i32* %ielem146 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %193) #3
  %194 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %195 = load i32, i32* %i141, align 4, !tbaa !8
  %idxprom147 = sext i32 %195 to i64
  %arrayidx148 = getelementptr inbounds i32, i32* %194, i64 %idxprom147
  %196 = load i32, i32* %arrayidx148, align 4, !tbaa !8
  store i32 %196, i32* %ielem146, align 4, !tbaa !8
  %197 = load double*, double** %p_new, align 8, !tbaa !2
  %198 = load i32, i32* %i141, align 4, !tbaa !8
  %idxprom149 = sext i32 %198 to i64
  %arrayidx150 = getelementptr inbounds double, double* %197, i64 %idxprom149
  %199 = load double, double* %arrayidx150, align 8, !tbaa !6
  %200 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %201 = load i32, i32* %ielem146, align 4, !tbaa !8
  %call151 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %200, i32 %201)
  store double %199, double* %call151, align 8, !tbaa !6
  %202 = load double*, double** %e_new, align 8, !tbaa !2
  %203 = load i32, i32* %i141, align 4, !tbaa !8
  %idxprom152 = sext i32 %203 to i64
  %arrayidx153 = getelementptr inbounds double, double* %202, i64 %idxprom152
  %204 = load double, double* %arrayidx153, align 8, !tbaa !6
  %205 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %206 = load i32, i32* %ielem146, align 4, !tbaa !8
  %call154 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %205, i32 %206)
  store double %204, double* %call154, align 8, !tbaa !6
  %207 = load double*, double** %q_new, align 8, !tbaa !2
  %208 = load i32, i32* %i141, align 4, !tbaa !8
  %idxprom155 = sext i32 %208 to i64
  %arrayidx156 = getelementptr inbounds double, double* %207, i64 %idxprom155
  %209 = load double, double* %arrayidx156, align 8, !tbaa !6
  %210 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %211 = load i32, i32* %ielem146, align 4, !tbaa !8
  %call157 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %210, i32 %211)
  store double %209, double* %call157, align 8, !tbaa !6
  %212 = bitcast i32* %ielem146 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %212) #3
  br label %for.inc158

for.inc158:                                       ; preds = %for.body145
  %213 = load i32, i32* %i141, align 4, !tbaa !8
  %inc159 = add nsw i32 %213, 1
  store i32 %inc159, i32* %i141, align 4, !tbaa !8
  br label %for.cond142, !llvm.loop !113

for.end160:                                       ; preds = %for.cond.cleanup144
  %214 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %215 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %216 = load double, double* %rho0, align 8, !tbaa !6
  %217 = load double*, double** %e_new, align 8, !tbaa !2
  %218 = load double*, double** %p_new, align 8, !tbaa !2
  %219 = load double*, double** %pbvc, align 8, !tbaa !2
  %220 = load double*, double** %bvc, align 8, !tbaa !2
  %221 = load double, double* %ss4o3, align 8, !tbaa !6
  %222 = load i32, i32* %numElemReg.addr, align 4, !tbaa !8
  %223 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  call void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nonnull align 8 dereferenceable(1312) %214, double* %215, double %216, double* %217, double* %218, double* %219, double* %220, double %221, i32 %222, i32* %223)
  call void @_Z7ReleaseIdEvPPT_(double** %pbvc)
  call void @_Z7ReleaseIdEvPPT_(double** %bvc)
  call void @_Z7ReleaseIdEvPPT_(double** %q_new)
  call void @_Z7ReleaseIdEvPPT_(double** %e_new)
  call void @_Z7ReleaseIdEvPPT_(double** %p_new)
  call void @_Z7ReleaseIdEvPPT_(double** %work)
  call void @_Z7ReleaseIdEvPPT_(double** %ql_old)
  call void @_Z7ReleaseIdEvPPT_(double** %qq_old)
  call void @_Z7ReleaseIdEvPPT_(double** %compHalfStep)
  call void @_Z7ReleaseIdEvPPT_(double** %compression)
  call void @_Z7ReleaseIdEvPPT_(double** %q_old)
  call void @_Z7ReleaseIdEvPPT_(double** %p_old)
  call void @_Z7ReleaseIdEvPPT_(double** %delvc)
  call void @_Z7ReleaseIdEvPPT_(double** %e_old)
  %224 = bitcast double** %pbvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %224) #3
  %225 = bitcast double** %bvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %225) #3
  %226 = bitcast double** %q_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %226) #3
  %227 = bitcast double** %e_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %227) #3
  %228 = bitcast double** %p_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %228) #3
  %229 = bitcast double** %work to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %229) #3
  %230 = bitcast double** %ql_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %230) #3
  %231 = bitcast double** %qq_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %231) #3
  %232 = bitcast double** %compHalfStep to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %232) #3
  %233 = bitcast double** %compression to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %233) #3
  %234 = bitcast double** %q_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %234) #3
  %235 = bitcast double** %p_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %235) #3
  %236 = bitcast double** %delvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %236) #3
  %237 = bitcast double** %e_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %237) #3
  %238 = bitcast double* %rho0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %238) #3
  %239 = bitcast double* %emin to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %239) #3
  %240 = bitcast double* %pmin to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %240) #3
  %241 = bitcast double* %eosvmin to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %241) #3
  %242 = bitcast double* %eosvmax to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %242) #3
  %243 = bitcast double* %q_cut to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %243) #3
  %244 = bitcast double* %ss4o3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %244) #3
  %245 = bitcast double* %p_cut to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %245) #3
  %246 = bitcast double* %e_cut to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %246) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5e_cutEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_e_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 51
  %0 = load double, double* %m_e_cut, align 8, !tbaa !114
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5p_cutEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_p_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 52
  %0 = load double, double* %m_p_cut, align 8, !tbaa !115
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5ss4o3Ev(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ss4o3 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 57
  %0 = load double, double* %m_ss4o3, align 8, !tbaa !116
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5q_cutEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_q_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 53
  %0 = load double, double* %m_q_cut, align 8, !tbaa !117
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain4pminEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_pmin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 66
  %0 = load double, double* %m_pmin, align 8, !tbaa !118
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain4eminEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_emin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 67
  %0 = load double, double* %m_emin, align 8, !tbaa !119
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7refdensEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_refdens = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 69
  %0 = load double, double* %m_refdens, align 8, !tbaa !120
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %idx) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !8
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_e, i64 %conv) #3
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* %p_new, double* %e_new, double* %q_new, double* %bvc, double* %pbvc, double* %p_old, double* %e_old, double* %q_old, double* %compression, double* %compHalfStep, double* %vnewc, double* %work, double* %delvc, double %pmin, double %p_cut, double %e_cut, double %q_cut, double %emin, double* %qq_old, double* %ql_old, double %rho0, double %eosvmax, i32 %length, i32* %regElemList) #7 {
entry:
  %p_new.addr = alloca double*, align 8
  %e_new.addr = alloca double*, align 8
  %q_new.addr = alloca double*, align 8
  %bvc.addr = alloca double*, align 8
  %pbvc.addr = alloca double*, align 8
  %p_old.addr = alloca double*, align 8
  %e_old.addr = alloca double*, align 8
  %q_old.addr = alloca double*, align 8
  %compression.addr = alloca double*, align 8
  %compHalfStep.addr = alloca double*, align 8
  %vnewc.addr = alloca double*, align 8
  %work.addr = alloca double*, align 8
  %delvc.addr = alloca double*, align 8
  %pmin.addr = alloca double, align 8
  %p_cut.addr = alloca double, align 8
  %e_cut.addr = alloca double, align 8
  %q_cut.addr = alloca double, align 8
  %emin.addr = alloca double, align 8
  %qq_old.addr = alloca double*, align 8
  %ql_old.addr = alloca double*, align 8
  %rho0.addr = alloca double, align 8
  %eosvmax.addr = alloca double, align 8
  %length.addr = alloca i32, align 4
  %regElemList.addr = alloca i32*, align 8
  %pHalfStep = alloca double*, align 8
  %i = alloca i32, align 4
  %i19 = alloca i32, align 4
  %vhalf = alloca double, align 8
  %ssc = alloca double, align 8
  %i86 = alloca i32, align 4
  %i115 = alloca i32, align 4
  %sixth = alloca double, align 8
  %ielem = alloca i32, align 4
  %q_tilde = alloca double, align 8
  %ssc127 = alloca double, align 8
  %i202 = alloca i32, align 4
  %ielem207 = alloca i32, align 4
  %ssc214 = alloca double, align 8
  store double* %p_new, double** %p_new.addr, align 8, !tbaa !2
  store double* %e_new, double** %e_new.addr, align 8, !tbaa !2
  store double* %q_new, double** %q_new.addr, align 8, !tbaa !2
  store double* %bvc, double** %bvc.addr, align 8, !tbaa !2
  store double* %pbvc, double** %pbvc.addr, align 8, !tbaa !2
  store double* %p_old, double** %p_old.addr, align 8, !tbaa !2
  store double* %e_old, double** %e_old.addr, align 8, !tbaa !2
  store double* %q_old, double** %q_old.addr, align 8, !tbaa !2
  store double* %compression, double** %compression.addr, align 8, !tbaa !2
  store double* %compHalfStep, double** %compHalfStep.addr, align 8, !tbaa !2
  store double* %vnewc, double** %vnewc.addr, align 8, !tbaa !2
  store double* %work, double** %work.addr, align 8, !tbaa !2
  store double* %delvc, double** %delvc.addr, align 8, !tbaa !2
  store double %pmin, double* %pmin.addr, align 8, !tbaa !6
  store double %p_cut, double* %p_cut.addr, align 8, !tbaa !6
  store double %e_cut, double* %e_cut.addr, align 8, !tbaa !6
  store double %q_cut, double* %q_cut.addr, align 8, !tbaa !6
  store double %emin, double* %emin.addr, align 8, !tbaa !6
  store double* %qq_old, double** %qq_old.addr, align 8, !tbaa !2
  store double* %ql_old, double** %ql_old.addr, align 8, !tbaa !2
  store double %rho0, double* %rho0.addr, align 8, !tbaa !6
  store double %eosvmax, double* %eosvmax.addr, align 8, !tbaa !6
  store i32 %length, i32* %length.addr, align 4, !tbaa !8
  store i32* %regElemList, i32** %regElemList.addr, align 8, !tbaa !2
  %0 = bitcast double** %pHalfStep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #3
  %1 = load i32, i32* %length.addr, align 4, !tbaa !8
  %conv = sext i32 %1 to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call, double** %pHalfStep, align 8, !tbaa !2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !8
  %4 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double*, double** %e_old.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8, !tbaa !6
  %9 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 %idxprom1
  %11 = load double, double* %arrayidx2, align 8, !tbaa !6
  %mul = fmul double 5.000000e-01, %11
  %12 = load double*, double** %p_old.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 %idxprom3
  %14 = load double, double* %arrayidx4, align 8, !tbaa !6
  %15 = load double*, double** %q_old.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds double, double* %15, i64 %idxprom5
  %17 = load double, double* %arrayidx6, align 8, !tbaa !6
  %add = fadd double %14, %17
  %mul7 = fmul double %mul, %add
  %sub = fsub double %8, %mul7
  %18 = load double*, double** %work.addr, align 8, !tbaa !2
  %19 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 %idxprom8
  %20 = load double, double* %arrayidx9, align 8, !tbaa !6
  %mul10 = fmul double 5.000000e-01, %20
  %add11 = fadd double %sub, %mul10
  %21 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds double, double* %21, i64 %idxprom12
  store double %add11, double* %arrayidx13, align 8, !tbaa !6
  %23 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %24 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds double, double* %23, i64 %idxprom14
  %25 = load double, double* %arrayidx15, align 8, !tbaa !6
  %26 = load double, double* %emin.addr, align 8, !tbaa !6
  %cmp16 = fcmp olt double %25, %26
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load double, double* %emin.addr, align 8, !tbaa !6
  %28 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 %idxprom17
  store double %27, double* %arrayidx18, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !121

for.end:                                          ; preds = %for.cond.cleanup
  %31 = load double*, double** %pHalfStep, align 8, !tbaa !2
  %32 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %33 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %34 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %35 = load double*, double** %compHalfStep.addr, align 8, !tbaa !2
  %36 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %37 = load double, double* %pmin.addr, align 8, !tbaa !6
  %38 = load double, double* %p_cut.addr, align 8, !tbaa !6
  %39 = load double, double* %eosvmax.addr, align 8, !tbaa !6
  %40 = load i32, i32* %length.addr, align 4, !tbaa !8
  %41 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %31, double* %32, double* %33, double* %34, double* %35, double* %36, double %37, double %38, double %39, i32 %40, i32* %41)
  %42 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #3
  store i32 0, i32* %i19, align 4, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc83, %for.end
  %43 = load i32, i32* %i19, align 4, !tbaa !8
  %44 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %43, %44
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  %45 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3
  br label %for.end85

for.body23:                                       ; preds = %for.cond20
  %46 = bitcast double* %vhalf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %46) #3
  %47 = load double*, double** %compHalfStep.addr, align 8, !tbaa !2
  %48 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom24 = sext i32 %48 to i64
  %arrayidx25 = getelementptr inbounds double, double* %47, i64 %idxprom24
  %49 = load double, double* %arrayidx25, align 8, !tbaa !6
  %add26 = fadd double 1.000000e+00, %49
  %div = fdiv double 1.000000e+00, %add26
  store double %div, double* %vhalf, align 8, !tbaa !6
  %50 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %51 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom27 = sext i32 %51 to i64
  %arrayidx28 = getelementptr inbounds double, double* %50, i64 %idxprom27
  %52 = load double, double* %arrayidx28, align 8, !tbaa !6
  %cmp29 = fcmp ogt double %52, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body23
  %53 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %54 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom31 = sext i32 %54 to i64
  %arrayidx32 = getelementptr inbounds double, double* %53, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8, !tbaa !6
  br label %if.end60

if.else:                                          ; preds = %for.body23
  %55 = bitcast double* %ssc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %55) #3
  %56 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %57 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom33 = sext i32 %57 to i64
  %arrayidx34 = getelementptr inbounds double, double* %56, i64 %idxprom33
  %58 = load double, double* %arrayidx34, align 8, !tbaa !6
  %59 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %60 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom35 = sext i32 %60 to i64
  %arrayidx36 = getelementptr inbounds double, double* %59, i64 %idxprom35
  %61 = load double, double* %arrayidx36, align 8, !tbaa !6
  %mul37 = fmul double %58, %61
  %62 = load double, double* %vhalf, align 8, !tbaa !6
  %63 = load double, double* %vhalf, align 8, !tbaa !6
  %mul38 = fmul double %62, %63
  %64 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %65 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom39 = sext i32 %65 to i64
  %arrayidx40 = getelementptr inbounds double, double* %64, i64 %idxprom39
  %66 = load double, double* %arrayidx40, align 8, !tbaa !6
  %mul41 = fmul double %mul38, %66
  %67 = load double*, double** %pHalfStep, align 8, !tbaa !2
  %68 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom42 = sext i32 %68 to i64
  %arrayidx43 = getelementptr inbounds double, double* %67, i64 %idxprom42
  %69 = load double, double* %arrayidx43, align 8, !tbaa !6
  %mul44 = fmul double %mul41, %69
  %add45 = fadd double %mul37, %mul44
  %70 = load double, double* %rho0.addr, align 8, !tbaa !6
  %div46 = fdiv double %add45, %70
  store double %div46, double* %ssc, align 8, !tbaa !6
  %71 = load double, double* %ssc, align 8, !tbaa !6
  %cmp47 = fcmp ole double %71, 0x3842E7922A37D1A0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else
  store double 0x3C18987CEE7F439D, double* %ssc, align 8, !tbaa !6
  br label %if.end51

if.else49:                                        ; preds = %if.else
  %72 = load double, double* %ssc, align 8, !tbaa !6
  %call50 = call double @_Z4SQRTd(double %72)
  store double %call50, double* %ssc, align 8, !tbaa !6
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then48
  %73 = load double, double* %ssc, align 8, !tbaa !6
  %74 = load double*, double** %ql_old.addr, align 8, !tbaa !2
  %75 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom52 = sext i32 %75 to i64
  %arrayidx53 = getelementptr inbounds double, double* %74, i64 %idxprom52
  %76 = load double, double* %arrayidx53, align 8, !tbaa !6
  %mul54 = fmul double %73, %76
  %77 = load double*, double** %qq_old.addr, align 8, !tbaa !2
  %78 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom55 = sext i32 %78 to i64
  %arrayidx56 = getelementptr inbounds double, double* %77, i64 %idxprom55
  %79 = load double, double* %arrayidx56, align 8, !tbaa !6
  %add57 = fadd double %mul54, %79
  %80 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %81 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom58 = sext i32 %81 to i64
  %arrayidx59 = getelementptr inbounds double, double* %80, i64 %idxprom58
  store double %add57, double* %arrayidx59, align 8, !tbaa !6
  %82 = bitcast double* %ssc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #3
  br label %if.end60

if.end60:                                         ; preds = %if.end51, %if.then30
  %83 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %84 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom61 = sext i32 %84 to i64
  %arrayidx62 = getelementptr inbounds double, double* %83, i64 %idxprom61
  %85 = load double, double* %arrayidx62, align 8, !tbaa !6
  %86 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %87 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom63 = sext i32 %87 to i64
  %arrayidx64 = getelementptr inbounds double, double* %86, i64 %idxprom63
  %88 = load double, double* %arrayidx64, align 8, !tbaa !6
  %mul65 = fmul double 5.000000e-01, %88
  %89 = load double*, double** %p_old.addr, align 8, !tbaa !2
  %90 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom66 = sext i32 %90 to i64
  %arrayidx67 = getelementptr inbounds double, double* %89, i64 %idxprom66
  %91 = load double, double* %arrayidx67, align 8, !tbaa !6
  %92 = load double*, double** %q_old.addr, align 8, !tbaa !2
  %93 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom68 = sext i32 %93 to i64
  %arrayidx69 = getelementptr inbounds double, double* %92, i64 %idxprom68
  %94 = load double, double* %arrayidx69, align 8, !tbaa !6
  %add70 = fadd double %91, %94
  %mul71 = fmul double 3.000000e+00, %add70
  %95 = load double*, double** %pHalfStep, align 8, !tbaa !2
  %96 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom72 = sext i32 %96 to i64
  %arrayidx73 = getelementptr inbounds double, double* %95, i64 %idxprom72
  %97 = load double, double* %arrayidx73, align 8, !tbaa !6
  %98 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %99 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom74 = sext i32 %99 to i64
  %arrayidx75 = getelementptr inbounds double, double* %98, i64 %idxprom74
  %100 = load double, double* %arrayidx75, align 8, !tbaa !6
  %add76 = fadd double %97, %100
  %mul77 = fmul double 4.000000e+00, %add76
  %sub78 = fsub double %mul71, %mul77
  %mul79 = fmul double %mul65, %sub78
  %add80 = fadd double %85, %mul79
  %101 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %102 = load i32, i32* %i19, align 4, !tbaa !8
  %idxprom81 = sext i32 %102 to i64
  %arrayidx82 = getelementptr inbounds double, double* %101, i64 %idxprom81
  store double %add80, double* %arrayidx82, align 8, !tbaa !6
  %103 = bitcast double* %vhalf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #3
  br label %for.inc83

for.inc83:                                        ; preds = %if.end60
  %104 = load i32, i32* %i19, align 4, !tbaa !8
  %inc84 = add nsw i32 %104, 1
  store i32 %inc84, i32* %i19, align 4, !tbaa !8
  br label %for.cond20, !llvm.loop !122

for.end85:                                        ; preds = %for.cond.cleanup22
  %105 = bitcast i32* %i86 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %105) #3
  store i32 0, i32* %i86, align 4, !tbaa !8
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc112, %for.end85
  %106 = load i32, i32* %i86, align 4, !tbaa !8
  %107 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp88 = icmp slt i32 %106, %107
  br i1 %cmp88, label %for.body90, label %for.cond.cleanup89

for.cond.cleanup89:                               ; preds = %for.cond87
  %108 = bitcast i32* %i86 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #3
  br label %for.end114

for.body90:                                       ; preds = %for.cond87
  %109 = load double*, double** %work.addr, align 8, !tbaa !2
  %110 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom91 = sext i32 %110 to i64
  %arrayidx92 = getelementptr inbounds double, double* %109, i64 %idxprom91
  %111 = load double, double* %arrayidx92, align 8, !tbaa !6
  %mul93 = fmul double 5.000000e-01, %111
  %112 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %113 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom94 = sext i32 %113 to i64
  %arrayidx95 = getelementptr inbounds double, double* %112, i64 %idxprom94
  %114 = load double, double* %arrayidx95, align 8, !tbaa !6
  %add96 = fadd double %114, %mul93
  store double %add96, double* %arrayidx95, align 8, !tbaa !6
  %115 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %116 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom97 = sext i32 %116 to i64
  %arrayidx98 = getelementptr inbounds double, double* %115, i64 %idxprom97
  %117 = load double, double* %arrayidx98, align 8, !tbaa !6
  %call99 = call double @_Z4FABSd(double %117)
  %118 = load double, double* %e_cut.addr, align 8, !tbaa !6
  %cmp100 = fcmp olt double %call99, %118
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %for.body90
  %119 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %120 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom102 = sext i32 %120 to i64
  %arrayidx103 = getelementptr inbounds double, double* %119, i64 %idxprom102
  store double 0.000000e+00, double* %arrayidx103, align 8, !tbaa !6
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %for.body90
  %121 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %122 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom105 = sext i32 %122 to i64
  %arrayidx106 = getelementptr inbounds double, double* %121, i64 %idxprom105
  %123 = load double, double* %arrayidx106, align 8, !tbaa !6
  %124 = load double, double* %emin.addr, align 8, !tbaa !6
  %cmp107 = fcmp olt double %123, %124
  br i1 %cmp107, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end104
  %125 = load double, double* %emin.addr, align 8, !tbaa !6
  %126 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %127 = load i32, i32* %i86, align 4, !tbaa !8
  %idxprom109 = sext i32 %127 to i64
  %arrayidx110 = getelementptr inbounds double, double* %126, i64 %idxprom109
  store double %125, double* %arrayidx110, align 8, !tbaa !6
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end104
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %128 = load i32, i32* %i86, align 4, !tbaa !8
  %inc113 = add nsw i32 %128, 1
  store i32 %inc113, i32* %i86, align 4, !tbaa !8
  br label %for.cond87, !llvm.loop !123

for.end114:                                       ; preds = %for.cond.cleanup89
  %129 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %130 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %131 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %132 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %133 = load double*, double** %compression.addr, align 8, !tbaa !2
  %134 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %135 = load double, double* %pmin.addr, align 8, !tbaa !6
  %136 = load double, double* %p_cut.addr, align 8, !tbaa !6
  %137 = load double, double* %eosvmax.addr, align 8, !tbaa !6
  %138 = load i32, i32* %length.addr, align 4, !tbaa !8
  %139 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %129, double* %130, double* %131, double* %132, double* %133, double* %134, double %135, double %136, double %137, i32 %138, i32* %139)
  %140 = bitcast i32* %i115 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %140) #3
  store i32 0, i32* %i115, align 4, !tbaa !8
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc199, %for.end114
  %141 = load i32, i32* %i115, align 4, !tbaa !8
  %142 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp117 = icmp slt i32 %141, %142
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118

for.cond.cleanup118:                              ; preds = %for.cond116
  %143 = bitcast i32* %i115 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #3
  br label %for.end201

for.body119:                                      ; preds = %for.cond116
  %144 = bitcast double* %sixth to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %144) #3
  store double 0x3FC5555555555555, double* %sixth, align 8, !tbaa !6
  %145 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %145) #3
  %146 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %147 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom120 = sext i32 %147 to i64
  %arrayidx121 = getelementptr inbounds i32, i32* %146, i64 %idxprom120
  %148 = load i32, i32* %arrayidx121, align 4, !tbaa !8
  store i32 %148, i32* %ielem, align 4, !tbaa !8
  %149 = bitcast double* %q_tilde to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %149) #3
  %150 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %151 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom122 = sext i32 %151 to i64
  %arrayidx123 = getelementptr inbounds double, double* %150, i64 %idxprom122
  %152 = load double, double* %arrayidx123, align 8, !tbaa !6
  %cmp124 = fcmp ogt double %152, 0.000000e+00
  br i1 %cmp124, label %if.then125, label %if.else126

if.then125:                                       ; preds = %for.body119
  store double 0.000000e+00, double* %q_tilde, align 8, !tbaa !6
  br label %if.end157

if.else126:                                       ; preds = %for.body119
  %153 = bitcast double* %ssc127 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %153) #3
  %154 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %155 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom128 = sext i32 %155 to i64
  %arrayidx129 = getelementptr inbounds double, double* %154, i64 %idxprom128
  %156 = load double, double* %arrayidx129, align 8, !tbaa !6
  %157 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %158 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom130 = sext i32 %158 to i64
  %arrayidx131 = getelementptr inbounds double, double* %157, i64 %idxprom130
  %159 = load double, double* %arrayidx131, align 8, !tbaa !6
  %mul132 = fmul double %156, %159
  %160 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %161 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom133 = sext i32 %161 to i64
  %arrayidx134 = getelementptr inbounds double, double* %160, i64 %idxprom133
  %162 = load double, double* %arrayidx134, align 8, !tbaa !6
  %163 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %164 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom135 = sext i32 %164 to i64
  %arrayidx136 = getelementptr inbounds double, double* %163, i64 %idxprom135
  %165 = load double, double* %arrayidx136, align 8, !tbaa !6
  %mul137 = fmul double %162, %165
  %166 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %167 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom138 = sext i32 %167 to i64
  %arrayidx139 = getelementptr inbounds double, double* %166, i64 %idxprom138
  %168 = load double, double* %arrayidx139, align 8, !tbaa !6
  %mul140 = fmul double %mul137, %168
  %169 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %170 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom141 = sext i32 %170 to i64
  %arrayidx142 = getelementptr inbounds double, double* %169, i64 %idxprom141
  %171 = load double, double* %arrayidx142, align 8, !tbaa !6
  %mul143 = fmul double %mul140, %171
  %add144 = fadd double %mul132, %mul143
  %172 = load double, double* %rho0.addr, align 8, !tbaa !6
  %div145 = fdiv double %add144, %172
  store double %div145, double* %ssc127, align 8, !tbaa !6
  %173 = load double, double* %ssc127, align 8, !tbaa !6
  %cmp146 = fcmp ole double %173, 0x3842E7922A37D1A0
  br i1 %cmp146, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.else126
  store double 0x3C18987CEE7F439D, double* %ssc127, align 8, !tbaa !6
  br label %if.end150

if.else148:                                       ; preds = %if.else126
  %174 = load double, double* %ssc127, align 8, !tbaa !6
  %call149 = call double @_Z4SQRTd(double %174)
  store double %call149, double* %ssc127, align 8, !tbaa !6
  br label %if.end150

if.end150:                                        ; preds = %if.else148, %if.then147
  %175 = load double, double* %ssc127, align 8, !tbaa !6
  %176 = load double*, double** %ql_old.addr, align 8, !tbaa !2
  %177 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom151 = sext i32 %177 to i64
  %arrayidx152 = getelementptr inbounds double, double* %176, i64 %idxprom151
  %178 = load double, double* %arrayidx152, align 8, !tbaa !6
  %mul153 = fmul double %175, %178
  %179 = load double*, double** %qq_old.addr, align 8, !tbaa !2
  %180 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom154 = sext i32 %180 to i64
  %arrayidx155 = getelementptr inbounds double, double* %179, i64 %idxprom154
  %181 = load double, double* %arrayidx155, align 8, !tbaa !6
  %add156 = fadd double %mul153, %181
  store double %add156, double* %q_tilde, align 8, !tbaa !6
  %182 = bitcast double* %ssc127 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %182) #3
  br label %if.end157

if.end157:                                        ; preds = %if.end150, %if.then125
  %183 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %184 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom158 = sext i32 %184 to i64
  %arrayidx159 = getelementptr inbounds double, double* %183, i64 %idxprom158
  %185 = load double, double* %arrayidx159, align 8, !tbaa !6
  %186 = load double*, double** %p_old.addr, align 8, !tbaa !2
  %187 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom160 = sext i32 %187 to i64
  %arrayidx161 = getelementptr inbounds double, double* %186, i64 %idxprom160
  %188 = load double, double* %arrayidx161, align 8, !tbaa !6
  %189 = load double*, double** %q_old.addr, align 8, !tbaa !2
  %190 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom162 = sext i32 %190 to i64
  %arrayidx163 = getelementptr inbounds double, double* %189, i64 %idxprom162
  %191 = load double, double* %arrayidx163, align 8, !tbaa !6
  %add164 = fadd double %188, %191
  %mul165 = fmul double 7.000000e+00, %add164
  %192 = load double*, double** %pHalfStep, align 8, !tbaa !2
  %193 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom166 = sext i32 %193 to i64
  %arrayidx167 = getelementptr inbounds double, double* %192, i64 %idxprom166
  %194 = load double, double* %arrayidx167, align 8, !tbaa !6
  %195 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %196 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom168 = sext i32 %196 to i64
  %arrayidx169 = getelementptr inbounds double, double* %195, i64 %idxprom168
  %197 = load double, double* %arrayidx169, align 8, !tbaa !6
  %add170 = fadd double %194, %197
  %mul171 = fmul double 8.000000e+00, %add170
  %sub172 = fsub double %mul165, %mul171
  %198 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %199 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom173 = sext i32 %199 to i64
  %arrayidx174 = getelementptr inbounds double, double* %198, i64 %idxprom173
  %200 = load double, double* %arrayidx174, align 8, !tbaa !6
  %201 = load double, double* %q_tilde, align 8, !tbaa !6
  %add175 = fadd double %200, %201
  %add176 = fadd double %sub172, %add175
  %202 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %203 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom177 = sext i32 %203 to i64
  %arrayidx178 = getelementptr inbounds double, double* %202, i64 %idxprom177
  %204 = load double, double* %arrayidx178, align 8, !tbaa !6
  %mul179 = fmul double %add176, %204
  %mul180 = fmul double %mul179, 0x3FC5555555555555
  %sub181 = fsub double %185, %mul180
  %205 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %206 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom182 = sext i32 %206 to i64
  %arrayidx183 = getelementptr inbounds double, double* %205, i64 %idxprom182
  store double %sub181, double* %arrayidx183, align 8, !tbaa !6
  %207 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %208 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom184 = sext i32 %208 to i64
  %arrayidx185 = getelementptr inbounds double, double* %207, i64 %idxprom184
  %209 = load double, double* %arrayidx185, align 8, !tbaa !6
  %call186 = call double @_Z4FABSd(double %209)
  %210 = load double, double* %e_cut.addr, align 8, !tbaa !6
  %cmp187 = fcmp olt double %call186, %210
  br i1 %cmp187, label %if.then188, label %if.end191

if.then188:                                       ; preds = %if.end157
  %211 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %212 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom189 = sext i32 %212 to i64
  %arrayidx190 = getelementptr inbounds double, double* %211, i64 %idxprom189
  store double 0.000000e+00, double* %arrayidx190, align 8, !tbaa !6
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.end157
  %213 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %214 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom192 = sext i32 %214 to i64
  %arrayidx193 = getelementptr inbounds double, double* %213, i64 %idxprom192
  %215 = load double, double* %arrayidx193, align 8, !tbaa !6
  %216 = load double, double* %emin.addr, align 8, !tbaa !6
  %cmp194 = fcmp olt double %215, %216
  br i1 %cmp194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %if.end191
  %217 = load double, double* %emin.addr, align 8, !tbaa !6
  %218 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %219 = load i32, i32* %i115, align 4, !tbaa !8
  %idxprom196 = sext i32 %219 to i64
  %arrayidx197 = getelementptr inbounds double, double* %218, i64 %idxprom196
  store double %217, double* %arrayidx197, align 8, !tbaa !6
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end191
  %220 = bitcast double* %q_tilde to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %220) #3
  %221 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %221) #3
  %222 = bitcast double* %sixth to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %222) #3
  br label %for.inc199

for.inc199:                                       ; preds = %if.end198
  %223 = load i32, i32* %i115, align 4, !tbaa !8
  %inc200 = add nsw i32 %223, 1
  store i32 %inc200, i32* %i115, align 4, !tbaa !8
  br label %for.cond116, !llvm.loop !124

for.end201:                                       ; preds = %for.cond.cleanup118
  %224 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %225 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %226 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %227 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %228 = load double*, double** %compression.addr, align 8, !tbaa !2
  %229 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %230 = load double, double* %pmin.addr, align 8, !tbaa !6
  %231 = load double, double* %p_cut.addr, align 8, !tbaa !6
  %232 = load double, double* %eosvmax.addr, align 8, !tbaa !6
  %233 = load i32, i32* %length.addr, align 4, !tbaa !8
  %234 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %224, double* %225, double* %226, double* %227, double* %228, double* %229, double %230, double %231, double %232, i32 %233, i32* %234)
  %235 = bitcast i32* %i202 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %235) #3
  store i32 0, i32* %i202, align 4, !tbaa !8
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc255, %for.end201
  %236 = load i32, i32* %i202, align 4, !tbaa !8
  %237 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp204 = icmp slt i32 %236, %237
  br i1 %cmp204, label %for.body206, label %for.cond.cleanup205

for.cond.cleanup205:                              ; preds = %for.cond203
  %238 = bitcast i32* %i202 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %238) #3
  br label %for.end257

for.body206:                                      ; preds = %for.cond203
  %239 = bitcast i32* %ielem207 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %239) #3
  %240 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %241 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom208 = sext i32 %241 to i64
  %arrayidx209 = getelementptr inbounds i32, i32* %240, i64 %idxprom208
  %242 = load i32, i32* %arrayidx209, align 4, !tbaa !8
  store i32 %242, i32* %ielem207, align 4, !tbaa !8
  %243 = load double*, double** %delvc.addr, align 8, !tbaa !2
  %244 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom210 = sext i32 %244 to i64
  %arrayidx211 = getelementptr inbounds double, double* %243, i64 %idxprom210
  %245 = load double, double* %arrayidx211, align 8, !tbaa !6
  %cmp212 = fcmp ole double %245, 0.000000e+00
  br i1 %cmp212, label %if.then213, label %if.end254

if.then213:                                       ; preds = %for.body206
  %246 = bitcast double* %ssc214 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %246) #3
  %247 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %248 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom215 = sext i32 %248 to i64
  %arrayidx216 = getelementptr inbounds double, double* %247, i64 %idxprom215
  %249 = load double, double* %arrayidx216, align 8, !tbaa !6
  %250 = load double*, double** %e_new.addr, align 8, !tbaa !2
  %251 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom217 = sext i32 %251 to i64
  %arrayidx218 = getelementptr inbounds double, double* %250, i64 %idxprom217
  %252 = load double, double* %arrayidx218, align 8, !tbaa !6
  %mul219 = fmul double %249, %252
  %253 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %254 = load i32, i32* %ielem207, align 4, !tbaa !8
  %idxprom220 = sext i32 %254 to i64
  %arrayidx221 = getelementptr inbounds double, double* %253, i64 %idxprom220
  %255 = load double, double* %arrayidx221, align 8, !tbaa !6
  %256 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %257 = load i32, i32* %ielem207, align 4, !tbaa !8
  %idxprom222 = sext i32 %257 to i64
  %arrayidx223 = getelementptr inbounds double, double* %256, i64 %idxprom222
  %258 = load double, double* %arrayidx223, align 8, !tbaa !6
  %mul224 = fmul double %255, %258
  %259 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %260 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom225 = sext i32 %260 to i64
  %arrayidx226 = getelementptr inbounds double, double* %259, i64 %idxprom225
  %261 = load double, double* %arrayidx226, align 8, !tbaa !6
  %mul227 = fmul double %mul224, %261
  %262 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %263 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom228 = sext i32 %263 to i64
  %arrayidx229 = getelementptr inbounds double, double* %262, i64 %idxprom228
  %264 = load double, double* %arrayidx229, align 8, !tbaa !6
  %mul230 = fmul double %mul227, %264
  %add231 = fadd double %mul219, %mul230
  %265 = load double, double* %rho0.addr, align 8, !tbaa !6
  %div232 = fdiv double %add231, %265
  store double %div232, double* %ssc214, align 8, !tbaa !6
  %266 = load double, double* %ssc214, align 8, !tbaa !6
  %cmp233 = fcmp ole double %266, 0x3842E7922A37D1A0
  br i1 %cmp233, label %if.then234, label %if.else235

if.then234:                                       ; preds = %if.then213
  store double 0x3C18987CEE7F439D, double* %ssc214, align 8, !tbaa !6
  br label %if.end237

if.else235:                                       ; preds = %if.then213
  %267 = load double, double* %ssc214, align 8, !tbaa !6
  %call236 = call double @_Z4SQRTd(double %267)
  store double %call236, double* %ssc214, align 8, !tbaa !6
  br label %if.end237

if.end237:                                        ; preds = %if.else235, %if.then234
  %268 = load double, double* %ssc214, align 8, !tbaa !6
  %269 = load double*, double** %ql_old.addr, align 8, !tbaa !2
  %270 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom238 = sext i32 %270 to i64
  %arrayidx239 = getelementptr inbounds double, double* %269, i64 %idxprom238
  %271 = load double, double* %arrayidx239, align 8, !tbaa !6
  %mul240 = fmul double %268, %271
  %272 = load double*, double** %qq_old.addr, align 8, !tbaa !2
  %273 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom241 = sext i32 %273 to i64
  %arrayidx242 = getelementptr inbounds double, double* %272, i64 %idxprom241
  %274 = load double, double* %arrayidx242, align 8, !tbaa !6
  %add243 = fadd double %mul240, %274
  %275 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %276 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom244 = sext i32 %276 to i64
  %arrayidx245 = getelementptr inbounds double, double* %275, i64 %idxprom244
  store double %add243, double* %arrayidx245, align 8, !tbaa !6
  %277 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %278 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom246 = sext i32 %278 to i64
  %arrayidx247 = getelementptr inbounds double, double* %277, i64 %idxprom246
  %279 = load double, double* %arrayidx247, align 8, !tbaa !6
  %call248 = call double @_Z4FABSd(double %279)
  %280 = load double, double* %q_cut.addr, align 8, !tbaa !6
  %cmp249 = fcmp olt double %call248, %280
  br i1 %cmp249, label %if.then250, label %if.end253

if.then250:                                       ; preds = %if.end237
  %281 = load double*, double** %q_new.addr, align 8, !tbaa !2
  %282 = load i32, i32* %i202, align 4, !tbaa !8
  %idxprom251 = sext i32 %282 to i64
  %arrayidx252 = getelementptr inbounds double, double* %281, i64 %idxprom251
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !6
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end237
  %283 = bitcast double* %ssc214 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %283) #3
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %for.body206
  %284 = bitcast i32* %ielem207 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %284) #3
  br label %for.inc255

for.inc255:                                       ; preds = %if.end254
  %285 = load i32, i32* %i202, align 4, !tbaa !8
  %inc256 = add nsw i32 %285, 1
  store i32 %inc256, i32* %i202, align 4, !tbaa !8
  br label %for.cond203, !llvm.loop !125

for.end257:                                       ; preds = %for.cond.cleanup205
  call void @_Z7ReleaseIdEvPPT_(double** %pHalfStep)
  %286 = bitcast double** %pHalfStep to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %286) #3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %vnewc, double %rho0, double* %enewc, double* %pnewc, double* %pbvc, double* %bvc, double %ss4o3, i32 %len, i32* %regElemList) #4 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %vnewc.addr = alloca double*, align 8
  %rho0.addr = alloca double, align 8
  %enewc.addr = alloca double*, align 8
  %pnewc.addr = alloca double*, align 8
  %pbvc.addr = alloca double*, align 8
  %bvc.addr = alloca double*, align 8
  %ss4o3.addr = alloca double, align 8
  %len.addr = alloca i32, align 4
  %regElemList.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %ielem = alloca i32, align 4
  %ssTmp = alloca double, align 8
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store double* %vnewc, double** %vnewc.addr, align 8, !tbaa !2
  store double %rho0, double* %rho0.addr, align 8, !tbaa !6
  store double* %enewc, double** %enewc.addr, align 8, !tbaa !2
  store double* %pnewc, double** %pnewc.addr, align 8, !tbaa !2
  store double* %pbvc, double** %pbvc.addr, align 8, !tbaa !2
  store double* %bvc, double** %bvc.addr, align 8, !tbaa !2
  store double %ss4o3, double* %ss4o3.addr, align 8, !tbaa !6
  store i32 %len, i32* %len.addr, align 4, !tbaa !8
  store i32* %regElemList, i32** %regElemList.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %len.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %7, i32* %ielem, align 4, !tbaa !8
  %8 = bitcast double* %ssTmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 %idxprom1
  %11 = load double, double* %arrayidx2, align 8, !tbaa !6
  %12 = load double*, double** %enewc.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 %idxprom3
  %14 = load double, double* %arrayidx4, align 8, !tbaa !6
  %mul = fmul double %11, %14
  %15 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %16 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds double, double* %15, i64 %idxprom5
  %17 = load double, double* %arrayidx6, align 8, !tbaa !6
  %18 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %19 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds double, double* %18, i64 %idxprom7
  %20 = load double, double* %arrayidx8, align 8, !tbaa !6
  %mul9 = fmul double %17, %20
  %21 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds double, double* %21, i64 %idxprom10
  %23 = load double, double* %arrayidx11, align 8, !tbaa !6
  %mul12 = fmul double %mul9, %23
  %24 = load double*, double** %pnewc.addr, align 8, !tbaa !2
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom13
  %26 = load double, double* %arrayidx14, align 8, !tbaa !6
  %mul15 = fmul double %mul12, %26
  %add = fadd double %mul, %mul15
  %27 = load double, double* %rho0.addr, align 8, !tbaa !6
  %div = fdiv double %add, %27
  store double %div, double* %ssTmp, align 8, !tbaa !6
  %28 = load double, double* %ssTmp, align 8, !tbaa !6
  %cmp16 = fcmp ole double %28, 0x3842E7922A37D1A0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double 0x3C18987CEE7F439D, double* %ssTmp, align 8, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %for.body
  %29 = load double, double* %ssTmp, align 8, !tbaa !6
  %call = call double @_Z4SQRTd(double %29)
  store double %call, double* %ssTmp, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load double, double* %ssTmp, align 8, !tbaa !6
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %32 = load i32, i32* %ielem, align 4, !tbaa !8
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %31, i32 %32)
  store double %30, double* %call17, align 8, !tbaa !6
  %33 = bitcast double* %ssTmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #3
  %34 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !126

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_old, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList) #4 {
entry:
  %p_new.addr = alloca double*, align 8
  %bvc.addr = alloca double*, align 8
  %pbvc.addr = alloca double*, align 8
  %e_old.addr = alloca double*, align 8
  %compression.addr = alloca double*, align 8
  %vnewc.addr = alloca double*, align 8
  %pmin.addr = alloca double, align 8
  %p_cut.addr = alloca double, align 8
  %eosvmax.addr = alloca double, align 8
  %length.addr = alloca i32, align 4
  %regElemList.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %c1s = alloca double, align 8
  %i5 = alloca i32, align 4
  %ielem = alloca i32, align 4
  store double* %p_new, double** %p_new.addr, align 8, !tbaa !2
  store double* %bvc, double** %bvc.addr, align 8, !tbaa !2
  store double* %pbvc, double** %pbvc.addr, align 8, !tbaa !2
  store double* %e_old, double** %e_old.addr, align 8, !tbaa !2
  store double* %compression, double** %compression.addr, align 8, !tbaa !2
  store double* %vnewc, double** %vnewc.addr, align 8, !tbaa !2
  store double %pmin, double* %pmin.addr, align 8, !tbaa !6
  store double %p_cut, double* %p_cut.addr, align 8, !tbaa !6
  store double %eosvmax, double* %eosvmax.addr, align 8, !tbaa !6
  store i32 %length, i32* %length.addr, align 4, !tbaa !8
  store i32* %regElemList, i32** %regElemList.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast double* %c1s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  store double 0x3FE5555555555555, double* %c1s, align 8, !tbaa !6
  %5 = load double, double* %c1s, align 8, !tbaa !6
  %6 = load double*, double** %compression.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8, !tbaa !6
  %add = fadd double %8, 1.000000e+00
  %mul = fmul double %5, %add
  %9 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 %idxprom1
  store double %mul, double* %arrayidx2, align 8, !tbaa !6
  %11 = load double, double* %c1s, align 8, !tbaa !6
  %12 = load double*, double** %pbvc.addr, align 8, !tbaa !2
  %13 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 %idxprom3
  store double %11, double* %arrayidx4, align 8, !tbaa !6
  %14 = bitcast double* %c1s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !127

for.end:                                          ; preds = %for.cond.cleanup
  %16 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %i5, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc38, %for.end
  %17 = load i32, i32* %i5, align 4, !tbaa !8
  %18 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  %19 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3
  br label %for.end40

for.body9:                                        ; preds = %for.cond6
  %20 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32*, i32** %regElemList.addr, align 8, !tbaa !2
  %22 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 %idxprom10
  %23 = load i32, i32* %arrayidx11, align 4, !tbaa !8
  store i32 %23, i32* %ielem, align 4, !tbaa !8
  %24 = load double*, double** %bvc.addr, align 8, !tbaa !2
  %25 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds double, double* %24, i64 %idxprom12
  %26 = load double, double* %arrayidx13, align 8, !tbaa !6
  %27 = load double*, double** %e_old.addr, align 8, !tbaa !2
  %28 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds double, double* %27, i64 %idxprom14
  %29 = load double, double* %arrayidx15, align 8, !tbaa !6
  %mul16 = fmul double %26, %29
  %30 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %31 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 %idxprom17
  store double %mul16, double* %arrayidx18, align 8, !tbaa !6
  %32 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %33 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds double, double* %32, i64 %idxprom19
  %34 = load double, double* %arrayidx20, align 8, !tbaa !6
  %call = call double @_Z4FABSd(double %34)
  %35 = load double, double* %p_cut.addr, align 8, !tbaa !6
  %cmp21 = fcmp olt double %call, %35
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %36 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %37 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds double, double* %36, i64 %idxprom22
  store double 0.000000e+00, double* %arrayidx23, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  %38 = load double*, double** %vnewc.addr, align 8, !tbaa !2
  %39 = load i32, i32* %ielem, align 4, !tbaa !8
  %idxprom24 = sext i32 %39 to i64
  %arrayidx25 = getelementptr inbounds double, double* %38, i64 %idxprom24
  %40 = load double, double* %arrayidx25, align 8, !tbaa !6
  %41 = load double, double* %eosvmax.addr, align 8, !tbaa !6
  %cmp26 = fcmp oge double %40, %41
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end
  %42 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %43 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom28 = sext i32 %43 to i64
  %arrayidx29 = getelementptr inbounds double, double* %42, i64 %idxprom28
  store double 0.000000e+00, double* %arrayidx29, align 8, !tbaa !6
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end
  %44 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %45 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds double, double* %44, i64 %idxprom31
  %46 = load double, double* %arrayidx32, align 8, !tbaa !6
  %47 = load double, double* %pmin.addr, align 8, !tbaa !6
  %cmp33 = fcmp olt double %46, %47
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  %48 = load double, double* %pmin.addr, align 8, !tbaa !6
  %49 = load double*, double** %p_new.addr, align 8, !tbaa !2
  %50 = load i32, i32* %i5, align 4, !tbaa !8
  %idxprom35 = sext i32 %50 to i64
  %arrayidx36 = getelementptr inbounds double, double* %49, i64 %idxprom35
  store double %48, double* %arrayidx36, align 8, !tbaa !6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30
  %51 = bitcast i32* %ielem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %52 = load i32, i32* %i5, align 4, !tbaa !8
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, i32* %i5, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !128

for.end40:                                        ; preds = %for.cond.cleanup8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %length, i32* %regElemlist, double %qqc, double* nonnull align 8 dereferenceable(8) %dtcourant) #4 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %length.addr = alloca i32, align 4
  %regElemlist.addr = alloca i32*, align 8
  %qqc.addr = alloca double, align 8
  %dtcourant.addr = alloca double*, align 8
  %threads = alloca i32, align 4
  %courant_elem_per_thread = alloca [1 x i32], align 4
  %dtcourant_per_thread = alloca [1 x double], align 8
  %qqc2 = alloca double, align 8
  %dtcourant_tmp = alloca double, align 8
  %courant_elem = alloca i32, align 4
  %thread_num = alloca i32, align 4
  %i = alloca i32, align 4
  %indx = alloca i32, align 4
  %dtf = alloca double, align 8
  %i27 = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32 %length, i32* %length.addr, align 4, !tbaa !8
  store i32* %regElemlist, i32** %regElemlist.addr, align 8, !tbaa !2
  store double %qqc, double* %qqc.addr, align 8, !tbaa !6
  store double* %dtcourant, double** %dtcourant.addr, align 8, !tbaa !2
  %0 = bitcast i32* %threads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 1, i32* %threads, align 4, !tbaa !8
  %1 = bitcast [1 x i32]* %courant_elem_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast [1 x double]* %dtcourant_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = bitcast double* %qqc2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = load double, double* %qqc.addr, align 8, !tbaa !6
  %mul = fmul double 6.400000e+01, %4
  %5 = load double, double* %qqc.addr, align 8, !tbaa !6
  %mul1 = fmul double %mul, %5
  store double %mul1, double* %qqc2, align 8, !tbaa !6
  %6 = bitcast double* %dtcourant_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load double*, double** %dtcourant.addr, align 8, !tbaa !2
  %8 = load double, double* %7, align 8, !tbaa !6
  store double %8, double* %dtcourant_tmp, align 8, !tbaa !6
  %9 = bitcast i32* %courant_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 -1, i32* %courant_elem, align 4, !tbaa !8
  %10 = bitcast i32* %thread_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %thread_num, align 4, !tbaa !8
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !8
  %13 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %indx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32*, i32** %regElemlist.addr, align 8, !tbaa !2
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %18, i32* %indx, align 4, !tbaa !8
  %19 = bitcast double* %dtf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #3
  %20 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %21 = load i32, i32* %indx, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %20, i32 %21)
  %22 = load double, double* %call, align 8, !tbaa !6
  %23 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %24 = load i32, i32* %indx, align 4, !tbaa !8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %23, i32 %24)
  %25 = load double, double* %call2, align 8, !tbaa !6
  %mul3 = fmul double %22, %25
  store double %mul3, double* %dtf, align 8, !tbaa !6
  %26 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %27 = load i32, i32* %indx, align 4, !tbaa !8
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %26, i32 %27)
  %28 = load double, double* %call4, align 8, !tbaa !6
  %cmp5 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load double, double* %dtf, align 8, !tbaa !6
  %30 = load double, double* %qqc2, align 8, !tbaa !6
  %31 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %32 = load i32, i32* %indx, align 4, !tbaa !8
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %31, i32 %32)
  %33 = load double, double* %call6, align 8, !tbaa !6
  %mul7 = fmul double %30, %33
  %34 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %35 = load i32, i32* %indx, align 4, !tbaa !8
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %34, i32 %35)
  %36 = load double, double* %call8, align 8, !tbaa !6
  %mul9 = fmul double %mul7, %36
  %37 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %38 = load i32, i32* %indx, align 4, !tbaa !8
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %37, i32 %38)
  %39 = load double, double* %call10, align 8, !tbaa !6
  %mul11 = fmul double %mul9, %39
  %40 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %41 = load i32, i32* %indx, align 4, !tbaa !8
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %40, i32 %41)
  %42 = load double, double* %call12, align 8, !tbaa !6
  %mul13 = fmul double %mul11, %42
  %add = fadd double %29, %mul13
  store double %add, double* %dtf, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %43 = load double, double* %dtf, align 8, !tbaa !6
  %call14 = call double @_Z4SQRTd(double %43)
  store double %call14, double* %dtf, align 8, !tbaa !6
  %44 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %45 = load i32, i32* %indx, align 4, !tbaa !8
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %44, i32 %45)
  %46 = load double, double* %call15, align 8, !tbaa !6
  %47 = load double, double* %dtf, align 8, !tbaa !6
  %div = fdiv double %46, %47
  store double %div, double* %dtf, align 8, !tbaa !6
  %48 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %49 = load i32, i32* %indx, align 4, !tbaa !8
  %call16 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %48, i32 %49)
  %50 = load double, double* %call16, align 8, !tbaa !6
  %cmp17 = fcmp une double %50, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  %51 = load double, double* %dtf, align 8, !tbaa !6
  %52 = load double, double* %dtcourant_tmp, align 8, !tbaa !6
  %cmp19 = fcmp olt double %51, %52
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  %53 = load double, double* %dtf, align 8, !tbaa !6
  store double %53, double* %dtcourant_tmp, align 8, !tbaa !6
  %54 = load i32, i32* %indx, align 4, !tbaa !8
  store i32 %54, i32* %courant_elem, align 4, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  %55 = bitcast double* %dtf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #3
  %56 = bitcast i32* %indx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %57 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !129

for.end:                                          ; preds = %for.cond.cleanup
  %58 = load double, double* %dtcourant_tmp, align 8, !tbaa !6
  %59 = load i32, i32* %thread_num, align 4, !tbaa !8
  %idxprom23 = sext i32 %59 to i64
  %arrayidx24 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 %idxprom23
  store double %58, double* %arrayidx24, align 8, !tbaa !6
  %60 = load i32, i32* %courant_elem, align 4, !tbaa !8
  %61 = load i32, i32* %thread_num, align 4, !tbaa !8
  %idxprom25 = sext i32 %61 to i64
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 %idxprom25
  store i32 %60, i32* %arrayidx26, align 4, !tbaa !8
  %62 = bitcast i32* %thread_num to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %courant_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast double* %dtcourant_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #3
  %65 = bitcast double* %qqc2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #3
  %66 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %66) #3
  store i32 1, i32* %i27, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.end
  %67 = load i32, i32* %i27, align 4, !tbaa !8
  %68 = load i32, i32* %threads, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %67, %68
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  %69 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  br label %for.end46

for.body31:                                       ; preds = %for.cond28
  %70 = load i32, i32* %i27, align 4, !tbaa !8
  %idxprom32 = sext i32 %70 to i64
  %arrayidx33 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 %idxprom32
  %71 = load double, double* %arrayidx33, align 8, !tbaa !6
  %arrayidx34 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 0
  %72 = load double, double* %arrayidx34, align 8, !tbaa !6
  %cmp35 = fcmp olt double %71, %72
  br i1 %cmp35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %for.body31
  %73 = load i32, i32* %i27, align 4, !tbaa !8
  %idxprom37 = sext i32 %73 to i64
  %arrayidx38 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 %idxprom37
  %74 = load double, double* %arrayidx38, align 8, !tbaa !6
  %arrayidx39 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 0
  store double %74, double* %arrayidx39, align 8, !tbaa !6
  %75 = load i32, i32* %i27, align 4, !tbaa !8
  %idxprom40 = sext i32 %75 to i64
  %arrayidx41 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 %idxprom40
  %76 = load i32, i32* %arrayidx41, align 4, !tbaa !8
  %arrayidx42 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 0
  store i32 %76, i32* %arrayidx42, align 4, !tbaa !8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %for.body31
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %77 = load i32, i32* %i27, align 4, !tbaa !8
  %inc45 = add nsw i32 %77, 1
  store i32 %inc45, i32* %i27, align 4, !tbaa !8
  br label %for.cond28, !llvm.loop !130

for.end46:                                        ; preds = %for.cond.cleanup30
  %arrayidx47 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 0
  %78 = load i32, i32* %arrayidx47, align 4, !tbaa !8
  %cmp48 = icmp ne i32 %78, -1
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.end46
  %arrayidx50 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 0
  %79 = load double, double* %arrayidx50, align 8, !tbaa !6
  %80 = load double*, double** %dtcourant.addr, align 8, !tbaa !2
  store double %79, double* %80, align 8, !tbaa !6
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.end46
  %81 = bitcast [1 x double]* %dtcourant_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #3
  %82 = bitcast [1 x i32]* %courant_elem_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %83 = bitcast i32* %threads to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain3qqcEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_qqc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 63
  %0 = load double, double* %m_qqc, align 8, !tbaa !131
  ret double %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %length, i32* %regElemlist, double %dvovmax, double* nonnull align 8 dereferenceable(8) %dthydro) #4 {
entry:
  %domain.addr = alloca %class.Domain*, align 8
  %length.addr = alloca i32, align 4
  %regElemlist.addr = alloca i32*, align 8
  %dvovmax.addr = alloca double, align 8
  %dthydro.addr = alloca double*, align 8
  %threads = alloca i32, align 4
  %hydro_elem_per_thread = alloca [1 x i32], align 4
  %dthydro_per_thread = alloca [1 x double], align 8
  %dthydro_tmp = alloca double, align 8
  %hydro_elem = alloca i32, align 4
  %thread_num = alloca i32, align 4
  %i = alloca i32, align 4
  %indx = alloca i32, align 4
  %dtdvov = alloca double, align 8
  %i11 = alloca i32, align 4
  store %class.Domain* %domain, %class.Domain** %domain.addr, align 8, !tbaa !2
  store i32 %length, i32* %length.addr, align 4, !tbaa !8
  store i32* %regElemlist, i32** %regElemlist.addr, align 8, !tbaa !2
  store double %dvovmax, double* %dvovmax.addr, align 8, !tbaa !6
  store double* %dthydro, double** %dthydro.addr, align 8, !tbaa !2
  %0 = bitcast i32* %threads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 1, i32* %threads, align 4, !tbaa !8
  %1 = bitcast [1 x i32]* %hydro_elem_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = bitcast [1 x double]* %dthydro_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3
  %3 = bitcast double* %dthydro_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  %4 = load double*, double** %dthydro.addr, align 8, !tbaa !2
  %5 = load double, double* %4, align 8, !tbaa !6
  store double %5, double* %dthydro_tmp, align 8, !tbaa !6
  %6 = bitcast i32* %hydro_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 -1, i32* %hydro_elem, align 4, !tbaa !8
  %7 = bitcast i32* %thread_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %thread_num, align 4, !tbaa !8
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %10 = load i32, i32* %length.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i32* %indx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32*, i32** %regElemlist.addr, align 8, !tbaa !2
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %15, i32* %indx, align 4, !tbaa !8
  %16 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %17 = load i32, i32* %indx, align 4, !tbaa !8
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %16, i32 %17)
  %18 = load double, double* %call, align 8, !tbaa !6
  %cmp1 = fcmp une double %18, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %19 = bitcast double* %dtdvov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #3
  %20 = load double, double* %dvovmax.addr, align 8, !tbaa !6
  %21 = load %class.Domain*, %class.Domain** %domain.addr, align 8, !tbaa !2
  %22 = load i32, i32* %indx, align 4, !tbaa !8
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %21, i32 %22)
  %23 = load double, double* %call2, align 8, !tbaa !6
  %call3 = call double @_Z4FABSd(double %23)
  %add = fadd double %call3, 0x3BC79CA10C924223
  %div = fdiv double %20, %add
  store double %div, double* %dtdvov, align 8, !tbaa !6
  %24 = load double, double* %dthydro_tmp, align 8, !tbaa !6
  %25 = load double, double* %dtdvov, align 8, !tbaa !6
  %cmp4 = fcmp ogt double %24, %25
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %26 = load double, double* %dtdvov, align 8, !tbaa !6
  store double %26, double* %dthydro_tmp, align 8, !tbaa !6
  %27 = load i32, i32* %indx, align 4, !tbaa !8
  store i32 %27, i32* %hydro_elem, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %28 = bitcast double* %dtdvov to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %29 = bitcast i32* %indx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %30 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !132

for.end:                                          ; preds = %for.cond.cleanup
  %31 = load double, double* %dthydro_tmp, align 8, !tbaa !6
  %32 = load i32, i32* %thread_num, align 4, !tbaa !8
  %idxprom7 = sext i32 %32 to i64
  %arrayidx8 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 %idxprom7
  store double %31, double* %arrayidx8, align 8, !tbaa !6
  %33 = load i32, i32* %hydro_elem, align 4, !tbaa !8
  %34 = load i32, i32* %thread_num, align 4, !tbaa !8
  %idxprom9 = sext i32 %34 to i64
  %arrayidx10 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 %idxprom9
  store i32 %33, i32* %arrayidx10, align 4, !tbaa !8
  %35 = bitcast i32* %thread_num to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %hydro_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast double* %dthydro_tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #3
  %38 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3
  store i32 1, i32* %i11, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end
  %39 = load i32, i32* %i11, align 4, !tbaa !8
  %40 = load i32, i32* %threads, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %39, %40
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  %41 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  br label %for.end30

for.body15:                                       ; preds = %for.cond12
  %42 = load i32, i32* %i11, align 4, !tbaa !8
  %idxprom16 = sext i32 %42 to i64
  %arrayidx17 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 %idxprom16
  %43 = load double, double* %arrayidx17, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 0
  %44 = load double, double* %arrayidx18, align 8, !tbaa !6
  %cmp19 = fcmp olt double %43, %44
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %for.body15
  %45 = load i32, i32* %i11, align 4, !tbaa !8
  %idxprom21 = sext i32 %45 to i64
  %arrayidx22 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 %idxprom21
  %46 = load double, double* %arrayidx22, align 8, !tbaa !6
  %arrayidx23 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 0
  store double %46, double* %arrayidx23, align 8, !tbaa !6
  %47 = load i32, i32* %i11, align 4, !tbaa !8
  %idxprom24 = sext i32 %47 to i64
  %arrayidx25 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 %idxprom24
  %48 = load i32, i32* %arrayidx25, align 4, !tbaa !8
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 0
  store i32 %48, i32* %arrayidx26, align 4, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %for.body15
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %49 = load i32, i32* %i11, align 4, !tbaa !8
  %inc29 = add nsw i32 %49, 1
  store i32 %inc29, i32* %i11, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !133

for.end30:                                        ; preds = %for.cond.cleanup14
  %arrayidx31 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 0
  %50 = load i32, i32* %arrayidx31, align 4, !tbaa !8
  %cmp32 = icmp ne i32 %50, -1
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end30
  %arrayidx34 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 0
  %51 = load double, double* %arrayidx34, align 8, !tbaa !6
  %52 = load double*, double** %dthydro.addr, align 8, !tbaa !2
  store double %51, double* %52, align 8, !tbaa !6
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end30
  %53 = bitcast [1 x double]* %dthydro_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #3
  %54 = bitcast [1 x i32]* %hydro_elem_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3
  %55 = bitcast i32* %threads to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7dvovmaxEv(%class.Domain* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dvovmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 68
  %0 = load double, double* %m_dvovmax, align 8, !tbaa !134
  ret double %0
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %this, i32 %__fmtfl, i32 %__mask) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__fmtfl.addr = alloca i32, align 4
  %__mask.addr = alloca i32, align 4
  %__old = alloca i32, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8, !tbaa !2
  store i32 %__fmtfl, i32* %__fmtfl.addr, align 4, !tbaa !38
  store i32 %__mask, i32* %__mask.addr, align 4, !tbaa !38
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = bitcast i32* %__old to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %1 = load i32, i32* %_M_flags, align 8, !tbaa !135
  store i32 %1, i32* %__old, align 4, !tbaa !38
  %2 = load i32, i32* %__mask.addr, align 4, !tbaa !38
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %2)
  %_M_flags2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags2, i32 %call)
  %3 = load i32, i32* %__fmtfl.addr, align 4, !tbaa !38
  %4 = load i32, i32* %__mask.addr, align 4, !tbaa !38
  %call4 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %3, i32 %4)
  %_M_flags5 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags5, i32 %call4)
  %5 = load i32, i32* %__old, align 4, !tbaa !38
  %6 = bitcast i32* %__old to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3
  ret i32 %5
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #7 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8, !tbaa !2
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !38
  %0 = load i32*, i32** %__a.addr, align 8, !tbaa !2
  %1 = load i32, i32* %0, align 4, !tbaa !38
  %2 = load i32, i32* %__b.addr, align 4, !tbaa !38
  %call = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8, !tbaa !2
  store i32 %call, i32* %3, align 4, !tbaa !38
  ret i32* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__a) #4 comdat {
entry:
  %__a.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !38
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !38
  %neg = xor i32 %0, -1
  ret i32 %neg
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #7 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8, !tbaa !2
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !38
  %0 = load i32*, i32** %__a.addr, align 8, !tbaa !2
  %1 = load i32, i32* %0, align 4, !tbaa !38
  %2 = load i32, i32* %__b.addr, align 4, !tbaa !38
  %call = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8, !tbaa !2
  store i32 %call, i32* %3, align 4, !tbaa !38
  ret i32* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #4 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !38
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !38
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !38
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !38
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #4 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !38
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !38
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !38
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !38
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !2
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !140
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1)
  %0 = load i32, i32* %__state.addr, align 4, !tbaa !140
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !2
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  %call = call i64 @strlen(i8* %0) #3
  ret i64 %call
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #4 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !140
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !140
  %0 = load i32, i32* %__a.addr, align 4, !tbaa !140
  %1 = load i32, i32* %__b.addr, align 4, !tbaa !140
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5
  %1 = load i32, i32* %_M_streambuf_state, align 8, !tbaa !141
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"*, i64) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lulesh.cc() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone speculatable willreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !3, i64 608}
!15 = !{!"_ZTS6Domain", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72, !16, i64 96, !16, i64 120, !16, i64 144, !16, i64 168, !16, i64 192, !16, i64 216, !16, i64 240, !16, i64 264, !16, i64 288, !17, i64 312, !17, i64 336, !17, i64 360, !9, i64 384, !9, i64 388, !3, i64 392, !3, i64 400, !3, i64 408, !17, i64 416, !17, i64 440, !17, i64 464, !17, i64 488, !17, i64 512, !17, i64 536, !17, i64 560, !17, i64 584, !3, i64 608, !3, i64 616, !3, i64 624, !3, i64 632, !3, i64 640, !3, i64 648, !3, i64 656, !3, i64 664, !3, i64 672, !16, i64 680, !16, i64 704, !16, i64 728, !16, i64 752, !16, i64 776, !16, i64 800, !16, i64 824, !16, i64 848, !16, i64 872, !16, i64 896, !16, i64 920, !16, i64 944, !16, i64 968, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !7, i64 1064, !7, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !9, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !9, i64 1224, !9, i64 1228, !9, i64 1232, !9, i64 1236, !9, i64 1240, !9, i64 1244, !9, i64 1248, !9, i64 1252, !9, i64 1256, !9, i64 1260, !9, i64 1264, !9, i64 1268, !3, i64 1272, !3, i64 1280, !9, i64 1288, !9, i64 1292, !9, i64 1296, !9, i64 1300, !9, i64 1304, !9, i64 1308}
!16 = !{!"_ZTSSt6vectorIdSaIdEE"}
!17 = !{!"_ZTSSt6vectorIiSaIiEE"}
!18 = !{!15, !3, i64 616}
!19 = !{!15, !3, i64 624}
!20 = !{!21, !9, i64 0}
!21 = !{!"_ZTS11cmdLineOpts", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!22 = !{!21, !9, i64 4}
!23 = !{!21, !9, i64 8}
!24 = !{!21, !9, i64 12}
!25 = !{!21, !9, i64 16}
!26 = !{!21, !9, i64 20}
!27 = !{!21, !9, i64 24}
!28 = !{!21, !9, i64 32}
!29 = !{!21, !9, i64 28}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !5, i64 0}
!32 = distinct !{!32, !11}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTS7timeval", !35, i64 0, !35, i64 8}
!35 = !{!"long", !4, i64 0}
!36 = !{!34, !35, i64 8}
!37 = !{!35, !35, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!40 = !{!41, !3, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !3, i64 0, !3, i64 8, !3, i64 16}
!43 = !{!44, !3, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !3, i64 0, !3, i64 8, !3, i64 16}
!46 = distinct !{!46, !11}
!47 = !{!15, !7, i64 1024}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = !{!15, !7, i64 1032}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = !{!15, !3, i64 1272}
!67 = !{!15, !3, i64 1280}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = !{!79, !3, i64 0}
!79 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !3, i64 0}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = !{!15, !7, i64 1016}
!89 = !{!15, !3, i64 656}
!90 = !{!15, !3, i64 664}
!91 = !{!15, !3, i64 672}
!92 = !{!15, !3, i64 632}
!93 = !{!15, !3, i64 640}
!94 = !{!15, !3, i64 648}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = !{!15, !7, i64 1048}
!98 = !{!15, !3, i64 392}
!99 = distinct !{!99, !11}
!100 = !{!15, !7, i64 1064}
!101 = !{!15, !7, i64 1056}
!102 = !{!15, !7, i64 1072}
!103 = !{!15, !7, i64 1080}
!104 = !{!15, !3, i64 408}
!105 = !{!15, !7, i64 1104}
!106 = !{!15, !7, i64 1096}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = !{!15, !7, i64 992}
!115 = !{!15, !7, i64 1000}
!116 = !{!15, !7, i64 1040}
!117 = !{!15, !7, i64 1008}
!118 = !{!15, !7, i64 1112}
!119 = !{!15, !7, i64 1120}
!120 = !{!15, !7, i64 1136}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = !{!15, !7, i64 1088}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = !{!15, !7, i64 1128}
!135 = !{!136, !39, i64 24}
!136 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !39, i64 24, !137, i64 28, !137, i64 32, !3, i64 40, !138, i64 48, !4, i64 64, !9, i64 192, !3, i64 200, !139, i64 208}
!137 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!138 = !{!"_ZTSNSt8ios_base6_WordsE", !3, i64 0, !35, i64 8}
!139 = !{!"_ZTSSt6locale", !3, i64 0}
!140 = !{!137, !137, i64 0}
!141 = !{!136, !137, i64 32}
