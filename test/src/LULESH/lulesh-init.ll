; ModuleID = 'lulesh-init.cc'
source_filename = "lulesh-init.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.Domain = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", i32, i32, i32*, i32*, i32**, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", double*, double*, double*, double*, double*, double*, double*, double*, double*, %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { double*, double*, double* }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"class.std::move_iterator" = type { double* }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::move_iterator.5" = type { i32* }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZN6Domain4costEv = comdat any

$_ZN6Domain7numElemEv = comdat any

$_ZN6Domain22AllocateElemPersistentEi = comdat any

$_ZN6Domain22AllocateNodePersistentEi = comdat any

$_ZN6Domain7numNodeEv = comdat any

$_ZN6Domain1eEi = comdat any

$_ZN6Domain1pEi = comdat any

$_ZN6Domain1qEi = comdat any

$_ZN6Domain2ssEi = comdat any

$_ZN6Domain1vEi = comdat any

$_ZN6Domain2xdEi = comdat any

$_ZN6Domain2ydEi = comdat any

$_ZN6Domain2zdEi = comdat any

$_ZN6Domain3xddEi = comdat any

$_ZN6Domain3yddEi = comdat any

$_ZN6Domain3zddEi = comdat any

$_ZN6Domain9nodalMassEi = comdat any

$_ZN6Domain7dtfixedEv = comdat any

$_ZN6Domain8stoptimeEv = comdat any

$_ZN6Domain15deltatimemultlbEv = comdat any

$_ZN6Domain15deltatimemultubEv = comdat any

$_ZN6Domain9dtcourantEv = comdat any

$_ZN6Domain7dthydroEv = comdat any

$_ZN6Domain5dtmaxEv = comdat any

$_ZN6Domain4timeEv = comdat any

$_ZN6Domain5cycleEv = comdat any

$_ZN6Domain8nodelistEi = comdat any

$_ZN6Domain1xEi = comdat any

$_ZN6Domain1yEi = comdat any

$_ZN6Domain1zEi = comdat any

$_ZN6Domain4voloEi = comdat any

$_ZN6Domain8elemMassEi = comdat any

$_ZN6Domain9deltatimeEv = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZN6Domain6numRegEv = comdat any

$__clang_call_terminate = comdat any

$_ZN6Domain5sizeXEv = comdat any

$_ZN6Domain5sizeYEv = comdat any

$_ZN6Domain5sizeZEv = comdat any

$_ZNSt6vectorIiSaIiEE6resizeEm = comdat any

$_ZN6Domain10regNumListEi = comdat any

$_ZN6Domain11regElemSizeEi = comdat any

$_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZN6Domain11regElemlistEii = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZN6Domain4lximEi = comdat any

$_ZN6Domain4lxipEi = comdat any

$_ZN6Domain5letamEi = comdat any

$_ZN6Domain5letapEi = comdat any

$_ZN6Domain6lzetamEi = comdat any

$_ZN6Domain6lzetapEi = comdat any

$_ZN6Domain6elemBCEi = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEm = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZNKSt13move_iteratorIPdE4baseEv = comdat any

$_ZNSt13move_iteratorIPdEC2ES0_ = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZNKSt13move_iteratorIPiE4baseEv = comdat any

$_ZNSt13move_iteratorIPiEC2ES0_ = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [67 x i8] c"AllocateNodeElemIndexes(): nodeElemCornerList entry out of range!\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Num processors must be a cube of an integer (1, 8, 27, ...)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"error -- must have as many domains as procs\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6DomainC1Eiiiiiiiii = dso_local unnamed_addr alias void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32), void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_ZN6DomainC2Eiiiiiiiii
@_ZN6DomainD1Ev = dso_local unnamed_addr alias void (%class.Domain*), void (%class.Domain*)* @_ZN6DomainD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN6DomainC2Eiiiiiiiii(%class.Domain* %this, i32 %numRanks, i32 %colLoc, i32 %rowLoc, i32 %planeLoc, i32 %nx, i32 %tp, i32 %nr, i32 %balance, i32 %cost) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numRanks.addr = alloca i32, align 4
  %colLoc.addr = alloca i32, align 4
  %rowLoc.addr = alloca i32, align 4
  %planeLoc.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %tp.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %balance.addr = alloca i32, align 4
  %cost.addr = alloca i32, align 4
  %edgeElems = alloca i32, align 4
  %edgeNodes = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %i28 = alloca i32, align 4
  %i41 = alloca i32, align 4
  %i58 = alloca i32, align 4
  %i75 = alloca i32, align 4
  %i111 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %elemToNode = alloca i32*, align 8
  %lnode = alloca i32, align 4
  %gnode = alloca i32, align 4
  %volume = alloca double, align 8
  %j = alloca i32, align 4
  %idx = alloca i32, align 4
  %ebase = alloca double, align 8
  %scale = alloca double, align 8
  %einit = alloca double, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %numRanks, i32* %numRanks.addr, align 4, !tbaa !6
  store i32 %colLoc, i32* %colLoc.addr, align 4, !tbaa !6
  store i32 %rowLoc, i32* %rowLoc.addr, align 4, !tbaa !6
  store i32 %planeLoc, i32* %planeLoc.addr, align 4, !tbaa !6
  store i32 %nx, i32* %nx.addr, align 4, !tbaa !6
  store i32 %tp, i32* %tp.addr, align 4, !tbaa !6
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !6
  store i32 %balance, i32* %balance.addr, align 4, !tbaa !6
  store i32 %cost, i32* %cost.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_x) #14
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_y) #14
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_z) #14
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_xd) #14
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_yd) #14
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_zd) #14
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_xdd) #14
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ydd) #14
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_zdd) #14
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fx) #14
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fy) #14
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fz) #14
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_nodalMass) #14
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmX) #14
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmY) #14
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmZ) #14
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 18
  store i32* null, i32** %m_regElemSize, align 8, !tbaa !8
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 19
  store i32* null, i32** %m_regNumList, align 8, !tbaa !13
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  store i32** null, i32*** %m_regElemlist, align 8, !tbaa !14
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_nodelist) #14
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lxim) #14
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lxip) #14
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_letam) #14
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_letap) #14
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lzetam) #14
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lzetap) #14
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_elemBC) #14
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_e) #14
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_p) #14
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_q) #14
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ql) #14
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_qq) #14
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_v) #14
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_volo) #14
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_vnew) #14
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_delv) #14
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_vdov) #14
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_arealg) #14
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ss) #14
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_elemMass) #14
  %m_e_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 51
  store double 0x3E7AD7F29ABCAF48, double* %m_e_cut, align 8, !tbaa !15
  %m_p_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 52
  store double 0x3E7AD7F29ABCAF48, double* %m_p_cut, align 8, !tbaa !16
  %m_q_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 53
  store double 0x3E7AD7F29ABCAF48, double* %m_q_cut, align 8, !tbaa !17
  %m_v_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 54
  store double 1.000000e-10, double* %m_v_cut, align 8, !tbaa !18
  %m_u_cut = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 55
  store double 0x3E7AD7F29ABCAF48, double* %m_u_cut, align 8, !tbaa !19
  %m_hgcoef = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 56
  store double 3.000000e+00, double* %m_hgcoef, align 8, !tbaa !20
  %m_ss4o3 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 57
  store double 0x3FF5555555555555, double* %m_ss4o3, align 8, !tbaa !21
  %m_qstop = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 58
  store double 1.000000e+12, double* %m_qstop, align 8, !tbaa !22
  %m_monoq_max_slope = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 59
  store double 1.000000e+00, double* %m_monoq_max_slope, align 8, !tbaa !23
  %m_monoq_limiter_mult = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 60
  store double 2.000000e+00, double* %m_monoq_limiter_mult, align 8, !tbaa !24
  %m_qlc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 61
  store double 5.000000e-01, double* %m_qlc_monoq, align 8, !tbaa !25
  %m_qqc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 62
  store double 0x3FE5555555555555, double* %m_qqc_monoq, align 8, !tbaa !26
  %m_qqc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 63
  store double 2.000000e+00, double* %m_qqc, align 8, !tbaa !27
  %m_eosvmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 64
  store double 1.000000e+09, double* %m_eosvmax, align 8, !tbaa !28
  %m_eosvmin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 65
  store double 1.000000e-09, double* %m_eosvmin, align 8, !tbaa !29
  %m_pmin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 66
  store double 0.000000e+00, double* %m_pmin, align 8, !tbaa !30
  %m_emin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 67
  store double -1.000000e+15, double* %m_emin, align 8, !tbaa !31
  %m_dvovmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 68
  store double 1.000000e-01, double* %m_dvovmax, align 8, !tbaa !32
  %m_refdens = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 69
  store double 1.000000e+00, double* %m_refdens, align 8, !tbaa !33
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  store i32* null, i32** %m_nodeElemStart, align 8, !tbaa !34
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  store i32* null, i32** %m_nodeElemCornerList, align 8, !tbaa !35
  %0 = bitcast i32* %edgeElems to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %1 = load i32, i32* %nx.addr, align 4, !tbaa !6
  store i32 %1, i32* %edgeElems, align 4, !tbaa !6
  %2 = bitcast i32* %edgeNodes to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #14
  %3 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %edgeNodes, align 4, !tbaa !6
  %4 = load i32, i32* %cost.addr, align 4, !tbaa !6
  %call = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 %4, i32* %call, align 4, !tbaa !6
  %5 = load i32, i32* %tp.addr, align 4, !tbaa !6
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  store i32 %5, i32* %m_tp, align 8, !tbaa !36
  %6 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %m_numRanks = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 80
  store i32 %6, i32* %m_numRanks, align 8, !tbaa !37
  %7 = load i32, i32* %colLoc.addr, align 4, !tbaa !6
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  store i32 %7, i32* %m_colLoc, align 4, !tbaa !38
  %8 = load i32, i32* %rowLoc.addr, align 4, !tbaa !6
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  store i32 %8, i32* %m_rowLoc, align 8, !tbaa !39
  %9 = load i32, i32* %planeLoc.addr, align 4, !tbaa !6
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  store i32 %9, i32* %m_planeLoc, align 4, !tbaa !40
  %10 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %m_sizeX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 85
  store i32 %10, i32* %m_sizeX, align 4, !tbaa !41
  %11 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %m_sizeY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 86
  store i32 %11, i32* %m_sizeY, align 8, !tbaa !42
  %12 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %m_sizeZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 87
  store i32 %12, i32* %m_sizeZ, align 4, !tbaa !43
  %13 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %14 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %edgeElems, align 4, !tbaa !6
  %mul2 = mul nsw i32 %mul, %15
  %m_numElem = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 88
  store i32 %mul2, i32* %m_numElem, align 8, !tbaa !44
  %16 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  %17 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  %mul3 = mul nsw i32 %16, %17
  %18 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  %mul4 = mul nsw i32 %mul3, %18
  %m_numNode = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 89
  store i32 %mul4, i32* %m_numNode, align 4, !tbaa !45
  %call6 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %19 = load i32, i32* %call6, align 4, !tbaa !6
  %conv = sext i32 %19 to i64
  %20 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  %23 = select i1 %21, i64 -1, i64 %22
  %call8 = invoke noalias nonnull i8* @_Znam(i64 %23) #15
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %24 = bitcast i8* %call8 to i32*
  %m_regNumList9 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 19
  store i32* %24, i32** %m_regNumList9, align 8, !tbaa !13
  %call11 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont7
  %25 = load i32, i32* %call11, align 4, !tbaa !6
  invoke void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* %this1, i32 %25)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  %call14 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont12
  %26 = load i32, i32* %call14, align 4, !tbaa !6
  invoke void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* %this1, i32 %26)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  %27 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  invoke void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this1, i32 %27)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont15
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont16
  %29 = load i32, i32* %i, align 4, !tbaa !6
  %call19 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %for.cond
  %30 = load i32, i32* %call19, align 4, !tbaa !6
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %invoke.cont18
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #14
  br label %for.end

lpad:                                             ; preds = %invoke.cont107, %invoke.cont105, %invoke.cont103, %invoke.cont101, %invoke.cont99, %invoke.cont97, %invoke.cont95, %invoke.cont93, %invoke.cont92, %invoke.cont91, %invoke.cont90, %invoke.cont89, %invoke.cont88, %for.end87, %invoke.cont15, %invoke.cont13, %invoke.cont12, %invoke.cont10, %invoke.cont7, %invoke.cont5, %invoke.cont, %entry
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  br label %ehcleanup200

lpad17:                                           ; preds = %invoke.cont24, %invoke.cont22, %invoke.cont20, %for.body, %for.cond
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot, align 4
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #14
  br label %ehcleanup200

for.body:                                         ; preds = %invoke.cont18
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %call21 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this1, i32 %39)
          to label %invoke.cont20 unwind label %lpad17

invoke.cont20:                                    ; preds = %for.body
  store double 0.000000e+00, double* %call21, align 8, !tbaa !46
  %40 = load i32, i32* %i, align 4, !tbaa !6
  %call23 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this1, i32 %40)
          to label %invoke.cont22 unwind label %lpad17

invoke.cont22:                                    ; preds = %invoke.cont20
  store double 0.000000e+00, double* %call23, align 8, !tbaa !46
  %41 = load i32, i32* %i, align 4, !tbaa !6
  %call25 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this1, i32 %41)
          to label %invoke.cont24 unwind label %lpad17

invoke.cont24:                                    ; preds = %invoke.cont22
  store double 0.000000e+00, double* %call25, align 8, !tbaa !46
  %42 = load i32, i32* %i, align 4, !tbaa !6
  %call27 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this1, i32 %42)
          to label %invoke.cont26 unwind label %lpad17

invoke.cont26:                                    ; preds = %invoke.cont24
  store double 0.000000e+00, double* %call27, align 8, !tbaa !46
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont26
  %43 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond.cleanup
  %44 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #14
  store i32 0, i32* %i28, align 4, !tbaa !6
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc38, %for.end
  %45 = load i32, i32* %i28, align 4, !tbaa !6
  %call32 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %for.cond29
  %46 = load i32, i32* %call32, align 4, !tbaa !6
  %cmp33 = icmp slt i32 %45, %46
  br i1 %cmp33, label %for.body35, label %for.cond.cleanup34

for.cond.cleanup34:                               ; preds = %invoke.cont31
  %47 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #14
  br label %for.end40

lpad30:                                           ; preds = %for.body35, %for.cond29
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot, align 8
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot, align 4
  %51 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #14
  br label %ehcleanup200

for.body35:                                       ; preds = %invoke.cont31
  %52 = load i32, i32* %i28, align 4, !tbaa !6
  %call37 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this1, i32 %52)
          to label %invoke.cont36 unwind label %lpad30

invoke.cont36:                                    ; preds = %for.body35
  store double 1.000000e+00, double* %call37, align 8, !tbaa !46
  br label %for.inc38

for.inc38:                                        ; preds = %invoke.cont36
  %53 = load i32, i32* %i28, align 4, !tbaa !6
  %inc39 = add nsw i32 %53, 1
  store i32 %inc39, i32* %i28, align 4, !tbaa !6
  br label %for.cond29, !llvm.loop !49

for.end40:                                        ; preds = %for.cond.cleanup34
  %54 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #14
  store i32 0, i32* %i41, align 4, !tbaa !6
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc55, %for.end40
  %55 = load i32, i32* %i41, align 4, !tbaa !6
  %call45 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %for.cond42
  %56 = load i32, i32* %call45, align 4, !tbaa !6
  %cmp46 = icmp slt i32 %55, %56
  br i1 %cmp46, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %invoke.cont44
  %57 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #14
  br label %for.end57

lpad43:                                           ; preds = %invoke.cont51, %invoke.cont49, %for.body48, %for.cond42
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %exn.slot, align 8
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %ehselector.slot, align 4
  %61 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #14
  br label %ehcleanup200

for.body48:                                       ; preds = %invoke.cont44
  %62 = load i32, i32* %i41, align 4, !tbaa !6
  %call50 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this1, i32 %62)
          to label %invoke.cont49 unwind label %lpad43

invoke.cont49:                                    ; preds = %for.body48
  store double 0.000000e+00, double* %call50, align 8, !tbaa !46
  %63 = load i32, i32* %i41, align 4, !tbaa !6
  %call52 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this1, i32 %63)
          to label %invoke.cont51 unwind label %lpad43

invoke.cont51:                                    ; preds = %invoke.cont49
  store double 0.000000e+00, double* %call52, align 8, !tbaa !46
  %64 = load i32, i32* %i41, align 4, !tbaa !6
  %call54 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this1, i32 %64)
          to label %invoke.cont53 unwind label %lpad43

invoke.cont53:                                    ; preds = %invoke.cont51
  store double 0.000000e+00, double* %call54, align 8, !tbaa !46
  br label %for.inc55

for.inc55:                                        ; preds = %invoke.cont53
  %65 = load i32, i32* %i41, align 4, !tbaa !6
  %inc56 = add nsw i32 %65, 1
  store i32 %inc56, i32* %i41, align 4, !tbaa !6
  br label %for.cond42, !llvm.loop !50

for.end57:                                        ; preds = %for.cond.cleanup47
  %66 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %66) #14
  store i32 0, i32* %i58, align 4, !tbaa !6
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc72, %for.end57
  %67 = load i32, i32* %i58, align 4, !tbaa !6
  %call62 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
          to label %invoke.cont61 unwind label %lpad60

invoke.cont61:                                    ; preds = %for.cond59
  %68 = load i32, i32* %call62, align 4, !tbaa !6
  %cmp63 = icmp slt i32 %67, %68
  br i1 %cmp63, label %for.body65, label %for.cond.cleanup64

for.cond.cleanup64:                               ; preds = %invoke.cont61
  %69 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #14
  br label %for.end74

lpad60:                                           ; preds = %invoke.cont68, %invoke.cont66, %for.body65, %for.cond59
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %exn.slot, align 8
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %ehselector.slot, align 4
  %73 = bitcast i32* %i58 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #14
  br label %ehcleanup200

for.body65:                                       ; preds = %invoke.cont61
  %74 = load i32, i32* %i58, align 4, !tbaa !6
  %call67 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this1, i32 %74)
          to label %invoke.cont66 unwind label %lpad60

invoke.cont66:                                    ; preds = %for.body65
  store double 0.000000e+00, double* %call67, align 8, !tbaa !46
  %75 = load i32, i32* %i58, align 4, !tbaa !6
  %call69 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this1, i32 %75)
          to label %invoke.cont68 unwind label %lpad60

invoke.cont68:                                    ; preds = %invoke.cont66
  store double 0.000000e+00, double* %call69, align 8, !tbaa !46
  %76 = load i32, i32* %i58, align 4, !tbaa !6
  %call71 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this1, i32 %76)
          to label %invoke.cont70 unwind label %lpad60

invoke.cont70:                                    ; preds = %invoke.cont68
  store double 0.000000e+00, double* %call71, align 8, !tbaa !46
  br label %for.inc72

for.inc72:                                        ; preds = %invoke.cont70
  %77 = load i32, i32* %i58, align 4, !tbaa !6
  %inc73 = add nsw i32 %77, 1
  store i32 %inc73, i32* %i58, align 4, !tbaa !6
  br label %for.cond59, !llvm.loop !51

for.end74:                                        ; preds = %for.cond.cleanup64
  %78 = bitcast i32* %i75 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %78) #14
  store i32 0, i32* %i75, align 4, !tbaa !6
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc85, %for.end74
  %79 = load i32, i32* %i75, align 4, !tbaa !6
  %call79 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
          to label %invoke.cont78 unwind label %lpad77

invoke.cont78:                                    ; preds = %for.cond76
  %80 = load i32, i32* %call79, align 4, !tbaa !6
  %cmp80 = icmp slt i32 %79, %80
  br i1 %cmp80, label %for.body82, label %for.cond.cleanup81

for.cond.cleanup81:                               ; preds = %invoke.cont78
  %81 = bitcast i32* %i75 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #14
  br label %for.end87

lpad77:                                           ; preds = %for.body82, %for.cond76
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %exn.slot, align 8
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %ehselector.slot, align 4
  %85 = bitcast i32* %i75 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #14
  br label %ehcleanup200

for.body82:                                       ; preds = %invoke.cont78
  %86 = load i32, i32* %i75, align 4, !tbaa !6
  %call84 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this1, i32 %86)
          to label %invoke.cont83 unwind label %lpad77

invoke.cont83:                                    ; preds = %for.body82
  store double 0.000000e+00, double* %call84, align 8, !tbaa !46
  br label %for.inc85

for.inc85:                                        ; preds = %invoke.cont83
  %87 = load i32, i32* %i75, align 4, !tbaa !6
  %inc86 = add nsw i32 %87, 1
  store i32 %inc86, i32* %i75, align 4, !tbaa !6
  br label %for.cond76, !llvm.loop !52

for.end87:                                        ; preds = %for.cond.cleanup81
  %88 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %89 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  %90 = load i32, i32* %edgeElems, align 4, !tbaa !6
  invoke void @_ZN6Domain9BuildMeshEiii(%class.Domain* %this1, i32 %88, i32 %89, i32 %90)
          to label %invoke.cont88 unwind label %lpad

invoke.cont88:                                    ; preds = %for.end87
  %91 = load i32, i32* %nr.addr, align 4, !tbaa !6
  %92 = load i32, i32* %balance.addr, align 4, !tbaa !6
  invoke void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this1, i32 %91, i32 %92)
          to label %invoke.cont89 unwind label %lpad

invoke.cont89:                                    ; preds = %invoke.cont88
  %93 = load i32, i32* %edgeNodes, align 4, !tbaa !6
  invoke void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* %this1, i32 %93)
          to label %invoke.cont90 unwind label %lpad

invoke.cont90:                                    ; preds = %invoke.cont89
  %94 = load i32, i32* %edgeElems, align 4, !tbaa !6
  invoke void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* %this1, i32 %94)
          to label %invoke.cont91 unwind label %lpad

invoke.cont91:                                    ; preds = %invoke.cont90
  %95 = load i32, i32* %edgeElems, align 4, !tbaa !6
  invoke void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* %this1, i32 %95)
          to label %invoke.cont92 unwind label %lpad

invoke.cont92:                                    ; preds = %invoke.cont91
  %call94 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %this1)
          to label %invoke.cont93 unwind label %lpad

invoke.cont93:                                    ; preds = %invoke.cont92
  store double 0xBEB0C6F7A0B5ED8D, double* %call94, align 8, !tbaa !46
  %call96 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %this1)
          to label %invoke.cont95 unwind label %lpad

invoke.cont95:                                    ; preds = %invoke.cont93
  store double 1.000000e-02, double* %call96, align 8, !tbaa !46
  %call98 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %this1)
          to label %invoke.cont97 unwind label %lpad

invoke.cont97:                                    ; preds = %invoke.cont95
  store double 1.100000e+00, double* %call98, align 8, !tbaa !46
  %call100 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %this1)
          to label %invoke.cont99 unwind label %lpad

invoke.cont99:                                    ; preds = %invoke.cont97
  store double 1.200000e+00, double* %call100, align 8, !tbaa !46
  %call102 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %this1)
          to label %invoke.cont101 unwind label %lpad

invoke.cont101:                                   ; preds = %invoke.cont99
  store double 1.000000e+20, double* %call102, align 8, !tbaa !46
  %call104 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %this1)
          to label %invoke.cont103 unwind label %lpad

invoke.cont103:                                   ; preds = %invoke.cont101
  store double 1.000000e+20, double* %call104, align 8, !tbaa !46
  %call106 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %this1)
          to label %invoke.cont105 unwind label %lpad

invoke.cont105:                                   ; preds = %invoke.cont103
  store double 1.000000e-02, double* %call106, align 8, !tbaa !46
  %call108 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %this1)
          to label %invoke.cont107 unwind label %lpad

invoke.cont107:                                   ; preds = %invoke.cont105
  store double 0.000000e+00, double* %call108, align 8, !tbaa !46
  %call110 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this1)
          to label %invoke.cont109 unwind label %lpad

invoke.cont109:                                   ; preds = %invoke.cont107
  store i32 0, i32* %call110, align 4, !tbaa !6
  %96 = bitcast i32* %i111 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %96) #14
  store i32 0, i32* %i111, align 4, !tbaa !6
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc168, %invoke.cont109
  %97 = load i32, i32* %i111, align 4, !tbaa !6
  %call115 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
          to label %invoke.cont114 unwind label %lpad113

invoke.cont114:                                   ; preds = %for.cond112
  %98 = load i32, i32* %call115, align 4, !tbaa !6
  %cmp116 = icmp slt i32 %97, %98
  br i1 %cmp116, label %for.body118, label %for.cond.cleanup117

for.cond.cleanup117:                              ; preds = %invoke.cont114
  store i32 17, i32* %cleanup.dest.slot, align 4
  %99 = bitcast i32* %i111 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #14
  br label %for.end171

lpad113:                                          ; preds = %for.cond112
  %100 = landingpad { i8*, i32 }
          cleanup
  %101 = extractvalue { i8*, i32 } %100, 0
  store i8* %101, i8** %exn.slot, align 8
  %102 = extractvalue { i8*, i32 } %100, 1
  store i32 %102, i32* %ehselector.slot, align 4
  br label %ehcleanup170

for.body118:                                      ; preds = %invoke.cont114
  %103 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %103) #14
  %104 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %104) #14
  %105 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %105) #14
  %106 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %106) #14
  %107 = load i32, i32* %i111, align 4, !tbaa !6
  %call121 = invoke i32* @_ZN6Domain8nodelistEi(%class.Domain* %this1, i32 %107)
          to label %invoke.cont120 unwind label %lpad119

invoke.cont120:                                   ; preds = %for.body118
  store i32* %call121, i32** %elemToNode, align 8, !tbaa !2
  %108 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #14
  store i32 0, i32* %lnode, align 4, !tbaa !6
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc139, %invoke.cont120
  %109 = load i32, i32* %lnode, align 4, !tbaa !6
  %cmp123 = icmp slt i32 %109, 8
  br i1 %cmp123, label %for.body125, label %for.cond.cleanup124

for.cond.cleanup124:                              ; preds = %for.cond122
  store i32 20, i32* %cleanup.dest.slot, align 4
  %110 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #14
  br label %for.end141

lpad119:                                          ; preds = %for.body118
  %111 = landingpad { i8*, i32 }
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  store i8* %112, i8** %exn.slot, align 8
  %113 = extractvalue { i8*, i32 } %111, 1
  store i32 %113, i32* %ehselector.slot, align 4
  br label %ehcleanup164

for.body125:                                      ; preds = %for.cond122
  %114 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %114) #14
  %115 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %116 = load i32, i32* %lnode, align 4, !tbaa !6
  %idxprom = sext i32 %116 to i64
  %arrayidx = getelementptr inbounds i32, i32* %115, i64 %idxprom
  %117 = load i32, i32* %arrayidx, align 4, !tbaa !6
  store i32 %117, i32* %gnode, align 4, !tbaa !6
  %118 = load i32, i32* %gnode, align 4, !tbaa !6
  %call128 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this1, i32 %118)
          to label %invoke.cont127 unwind label %lpad126

invoke.cont127:                                   ; preds = %for.body125
  %119 = load double, double* %call128, align 8, !tbaa !46
  %120 = load i32, i32* %lnode, align 4, !tbaa !6
  %idxprom129 = sext i32 %120 to i64
  %arrayidx130 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %idxprom129
  store double %119, double* %arrayidx130, align 8, !tbaa !46
  %121 = load i32, i32* %gnode, align 4, !tbaa !6
  %call132 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this1, i32 %121)
          to label %invoke.cont131 unwind label %lpad126

invoke.cont131:                                   ; preds = %invoke.cont127
  %122 = load double, double* %call132, align 8, !tbaa !46
  %123 = load i32, i32* %lnode, align 4, !tbaa !6
  %idxprom133 = sext i32 %123 to i64
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %idxprom133
  store double %122, double* %arrayidx134, align 8, !tbaa !46
  %124 = load i32, i32* %gnode, align 4, !tbaa !6
  %call136 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this1, i32 %124)
          to label %invoke.cont135 unwind label %lpad126

invoke.cont135:                                   ; preds = %invoke.cont131
  %125 = load double, double* %call136, align 8, !tbaa !46
  %126 = load i32, i32* %lnode, align 4, !tbaa !6
  %idxprom137 = sext i32 %126 to i64
  %arrayidx138 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %idxprom137
  store double %125, double* %arrayidx138, align 8, !tbaa !46
  %127 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #14
  br label %for.inc139

for.inc139:                                       ; preds = %invoke.cont135
  %128 = load i32, i32* %lnode, align 4, !tbaa !6
  %inc140 = add nsw i32 %128, 1
  store i32 %inc140, i32* %lnode, align 4, !tbaa !6
  br label %for.cond122, !llvm.loop !53

lpad126:                                          ; preds = %invoke.cont131, %invoke.cont127, %for.body125
  %129 = landingpad { i8*, i32 }
          cleanup
  %130 = extractvalue { i8*, i32 } %129, 0
  store i8* %130, i8** %exn.slot, align 8
  %131 = extractvalue { i8*, i32 } %129, 1
  store i32 %131, i32* %ehselector.slot, align 4
  %132 = bitcast i32* %gnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #14
  %133 = bitcast i32* %lnode to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #14
  br label %ehcleanup164

for.end141:                                       ; preds = %for.cond.cleanup124
  %134 = bitcast double* %volume to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %134) #14
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay143 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %call146 = invoke double @_Z14CalcElemVolumePKdS0_S0_(double* %arraydecay, double* %arraydecay142, double* %arraydecay143)
          to label %invoke.cont145 unwind label %lpad144

invoke.cont145:                                   ; preds = %for.end141
  store double %call146, double* %volume, align 8, !tbaa !46
  %135 = load double, double* %volume, align 8, !tbaa !46
  %136 = load i32, i32* %i111, align 4, !tbaa !6
  %call148 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this1, i32 %136)
          to label %invoke.cont147 unwind label %lpad144

invoke.cont147:                                   ; preds = %invoke.cont145
  store double %135, double* %call148, align 8, !tbaa !46
  %137 = load double, double* %volume, align 8, !tbaa !46
  %138 = load i32, i32* %i111, align 4, !tbaa !6
  %call150 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this1, i32 %138)
          to label %invoke.cont149 unwind label %lpad144

invoke.cont149:                                   ; preds = %invoke.cont147
  store double %137, double* %call150, align 8, !tbaa !46
  %139 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %139) #14
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc161, %invoke.cont149
  %140 = load i32, i32* %j, align 4, !tbaa !6
  %cmp152 = icmp slt i32 %140, 8
  br i1 %cmp152, label %for.body154, label %for.cond.cleanup153

for.cond.cleanup153:                              ; preds = %for.cond151
  store i32 23, i32* %cleanup.dest.slot, align 4
  %141 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #14
  br label %for.end163

lpad144:                                          ; preds = %invoke.cont147, %invoke.cont145, %for.end141
  %142 = landingpad { i8*, i32 }
          cleanup
  %143 = extractvalue { i8*, i32 } %142, 0
  store i8* %143, i8** %exn.slot, align 8
  %144 = extractvalue { i8*, i32 } %142, 1
  store i32 %144, i32* %ehselector.slot, align 4
  br label %ehcleanup

for.body154:                                      ; preds = %for.cond151
  %145 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %145) #14
  %146 = load i32*, i32** %elemToNode, align 8, !tbaa !2
  %147 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom155 = sext i32 %147 to i64
  %arrayidx156 = getelementptr inbounds i32, i32* %146, i64 %idxprom155
  %148 = load i32, i32* %arrayidx156, align 4, !tbaa !6
  store i32 %148, i32* %idx, align 4, !tbaa !6
  %149 = load double, double* %volume, align 8, !tbaa !46
  %div = fdiv double %149, 8.000000e+00
  %150 = load i32, i32* %idx, align 4, !tbaa !6
  %call159 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this1, i32 %150)
          to label %invoke.cont158 unwind label %lpad157

invoke.cont158:                                   ; preds = %for.body154
  %151 = load double, double* %call159, align 8, !tbaa !46
  %add160 = fadd double %151, %div
  store double %add160, double* %call159, align 8, !tbaa !46
  %152 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %152) #14
  br label %for.inc161

for.inc161:                                       ; preds = %invoke.cont158
  %153 = load i32, i32* %j, align 4, !tbaa !6
  %inc162 = add nsw i32 %153, 1
  store i32 %inc162, i32* %j, align 4, !tbaa !6
  br label %for.cond151, !llvm.loop !54

lpad157:                                          ; preds = %for.body154
  %154 = landingpad { i8*, i32 }
          cleanup
  %155 = extractvalue { i8*, i32 } %154, 0
  store i8* %155, i8** %exn.slot, align 8
  %156 = extractvalue { i8*, i32 } %154, 1
  store i32 %156, i32* %ehselector.slot, align 4
  %157 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #14
  %158 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #14
  br label %ehcleanup

for.end163:                                       ; preds = %for.cond.cleanup153
  %159 = bitcast double* %volume to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %159) #14
  %160 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %160) #14
  %161 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %161) #14
  %162 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %162) #14
  %163 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %163) #14
  br label %for.inc168

for.inc168:                                       ; preds = %for.end163
  %164 = load i32, i32* %i111, align 4, !tbaa !6
  %inc169 = add nsw i32 %164, 1
  store i32 %inc169, i32* %i111, align 4, !tbaa !6
  br label %for.cond112, !llvm.loop !55

ehcleanup:                                        ; preds = %lpad157, %lpad144
  %165 = bitcast double* %volume to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %165) #14
  br label %ehcleanup164

ehcleanup164:                                     ; preds = %ehcleanup, %lpad126, %lpad119
  %166 = bitcast i32** %elemToNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %166) #14
  %167 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %167) #14
  %168 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %168) #14
  %169 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %169) #14
  br label %ehcleanup170

ehcleanup170:                                     ; preds = %ehcleanup164, %lpad113
  %170 = bitcast i32* %i111 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %170) #14
  br label %ehcleanup200

for.end171:                                       ; preds = %for.cond.cleanup117
  %171 = bitcast double* %ebase to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %171) #14
  store double 0x4182D43F20000000, double* %ebase, align 8, !tbaa !46
  %172 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %172) #14
  %173 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %m_tp172 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %174 = load i32, i32* %m_tp172, align 8, !tbaa !36
  %mul173 = mul nsw i32 %173, %174
  %conv174 = sitofp i32 %mul173 to double
  %div175 = fdiv double %conv174, 4.500000e+01
  store double %div175, double* %scale, align 8, !tbaa !46
  %175 = bitcast double* %einit to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %175) #14
  %176 = load double, double* %scale, align 8, !tbaa !46
  %mul176 = fmul double 0x4182D43F20000000, %176
  %177 = load double, double* %scale, align 8, !tbaa !46
  %mul177 = fmul double %mul176, %177
  %178 = load double, double* %scale, align 8, !tbaa !46
  %mul178 = fmul double %mul177, %178
  store double %mul178, double* %einit, align 8, !tbaa !46
  %m_rowLoc179 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %179 = load i32, i32* %m_rowLoc179, align 8, !tbaa !39
  %m_colLoc180 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %180 = load i32, i32* %m_colLoc180, align 4, !tbaa !38
  %add181 = add nsw i32 %179, %180
  %m_planeLoc182 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %181 = load i32, i32* %m_planeLoc182, align 4, !tbaa !40
  %add183 = add nsw i32 %add181, %181
  %cmp184 = icmp eq i32 %add183, 0
  br i1 %cmp184, label %if.then, label %if.end

if.then:                                          ; preds = %for.end171
  %182 = load double, double* %einit, align 8, !tbaa !46
  %call187 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this1, i32 0)
          to label %invoke.cont186 unwind label %lpad185

invoke.cont186:                                   ; preds = %if.then
  store double %182, double* %call187, align 8, !tbaa !46
  br label %if.end

lpad185:                                          ; preds = %invoke.cont188, %if.end, %if.then
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %exn.slot, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %ehselector.slot, align 4
  %186 = bitcast double* %einit to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %186) #14
  %187 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %187) #14
  %188 = bitcast double* %ebase to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %188) #14
  br label %ehcleanup200

if.end:                                           ; preds = %invoke.cont186, %for.end171
  %call189 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this1, i32 0)
          to label %invoke.cont188 unwind label %lpad185

invoke.cont188:                                   ; preds = %if.end
  %189 = load double, double* %call189, align 8, !tbaa !46
  %call190 = call double @cbrt(double %189) #16
  %mul191 = fmul double 5.000000e-01, %call190
  %190 = load double, double* %einit, align 8, !tbaa !46
  %mul192 = fmul double 2.000000e+00, %190
  %call193 = call double @sqrt(double %mul192) #14
  %div194 = fdiv double %mul191, %call193
  %call196 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %this1)
          to label %invoke.cont195 unwind label %lpad185

invoke.cont195:                                   ; preds = %invoke.cont188
  store double %div194, double* %call196, align 8, !tbaa !46
  %191 = bitcast double* %einit to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %191) #14
  %192 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %192) #14
  %193 = bitcast double* %ebase to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %193) #14
  %194 = bitcast i32* %edgeNodes to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %194) #14
  %195 = bitcast i32* %edgeElems to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %195) #14
  ret void

ehcleanup200:                                     ; preds = %lpad185, %ehcleanup170, %lpad77, %lpad60, %lpad43, %lpad30, %lpad17, %lpad
  %196 = bitcast i32* %edgeNodes to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %196) #14
  %197 = bitcast i32* %edgeElems to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %197) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup200
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val239 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val239
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #17
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_cost = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 17
  ret i32* %m_cost
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numElem = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 88
  ret i32* %m_numElem
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* %this, i32 %numElem) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numElem.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %numElem, i32* %numElem.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  %0 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %mul = mul nsw i32 8, %0
  %conv = sext i32 %mul to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_nodelist, i64 %conv)
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  %1 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv2 = sext i32 %1 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lxim, i64 %conv2)
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  %2 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv3 = sext i32 %2 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lxip, i64 %conv3)
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  %3 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv4 = sext i32 %3 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_letam, i64 %conv4)
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  %4 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv5 = sext i32 %4 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_letap, i64 %conv5)
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  %5 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv6 = sext i32 %5 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lzetam, i64 %conv6)
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  %6 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv7 = sext i32 %6 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lzetap, i64 %conv7)
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  %7 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv8 = sext i32 %7 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_elemBC, i64 %conv8)
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  %8 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv9 = sext i32 %8 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_e, i64 %conv9)
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  %9 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv10 = sext i32 %9 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_p, i64 %conv10)
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  %10 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv11 = sext i32 %10 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_q, i64 %conv11)
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 41
  %11 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv12 = sext i32 %11 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ql, i64 %conv12)
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 42
  %12 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv13 = sext i32 %12 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_qq, i64 %conv13)
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  %13 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv14 = sext i32 %13 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_v, i64 %conv14)
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  %14 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv15 = sext i32 %14 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_volo, i64 %conv15)
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 46
  %15 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv16 = sext i32 %15 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_delv, i64 %conv16)
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 47
  %16 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv17 = sext i32 %16 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_vdov, i64 %conv17)
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 48
  %17 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv18 = sext i32 %17 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_arealg, i64 %conv18)
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  %18 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv19 = sext i32 %18 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ss, i64 %conv19)
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  %19 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv20 = sext i32 %19 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_elemMass, i64 %conv20)
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 45
  %20 = load i32, i32* %numElem.addr, align 4, !tbaa !6
  %conv21 = sext i32 %20 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_vnew, i64 %conv21)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* %this, i32 %numNode) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numNode.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %numNode, i32* %numNode.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  %0 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_x, i64 %conv)
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  %1 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv2 = sext i32 %1 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_y, i64 %conv2)
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  %2 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv3 = sext i32 %2 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_z, i64 %conv3)
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  %3 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv4 = sext i32 %3 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_xd, i64 %conv4)
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  %4 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv5 = sext i32 %4 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_yd, i64 %conv5)
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  %5 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv6 = sext i32 %5 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_zd, i64 %conv6)
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  %6 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv7 = sext i32 %6 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_xdd, i64 %conv7)
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  %7 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv8 = sext i32 %7 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ydd, i64 %conv8)
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  %8 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv9 = sext i32 %8 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_zdd, i64 %conv9)
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 9
  %9 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv10 = sext i32 %9 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fx, i64 %conv10)
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 10
  %10 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv11 = sext i32 %10 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fy, i64 %conv11)
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 11
  %11 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv12 = sext i32 %11 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fz, i64 %conv12)
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  %12 = load i32, i32* %numNode.addr, align 4, !tbaa !6
  %conv13 = sext i32 %12 to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_nodalMass, i64 %conv13)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numNode = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 89
  ret i32* %m_numNode
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this, i32 %edgeNodes) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %edgeNodes.addr = alloca i32, align 4
  %maxEdgeSize = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %edgeNodes, i32* %edgeNodes.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = bitcast i32* %maxEdgeSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %1 = load i32, i32* %call, align 4, !tbaa !6
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %2 = load i32, i32* %call2, align 4, !tbaa !6
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %3 = load i32, i32* %call3, align 4, !tbaa !6
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %4 = load i32, i32* %call4, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %5 = load i32, i32* %call5, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  %cmp6 = icmp sgt i32 %1, %cond
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.end
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %6 = load i32, i32* %call8, align 4, !tbaa !6
  br label %cond.end19

cond.false9:                                      ; preds = %cond.end
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %7 = load i32, i32* %call10, align 4, !tbaa !6
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %8 = load i32, i32* %call11, align 4, !tbaa !6
  %cmp12 = icmp sgt i32 %7, %8
  br i1 %cmp12, label %cond.true13, label %cond.false15

cond.true13:                                      ; preds = %cond.false9
  %call14 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %9 = load i32, i32* %call14, align 4, !tbaa !6
  br label %cond.end17

cond.false15:                                     ; preds = %cond.false9
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %10 = load i32, i32* %call16, align 4, !tbaa !6
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false15, %cond.true13
  %cond18 = phi i32 [ %9, %cond.true13 ], [ %10, %cond.false15 ]
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end17, %cond.true7
  %cond20 = phi i32 [ %6, %cond.true7 ], [ %cond18, %cond.end17 ]
  %add = add nsw i32 %cond20, 1
  store i32 %add, i32* %maxEdgeSize, align 4, !tbaa !6
  %11 = load i32, i32* %maxEdgeSize, align 4, !tbaa !6
  %12 = load i32, i32* %maxEdgeSize, align 4, !tbaa !6
  %mul = mul nsw i32 %11, %12
  %conv = sext i32 %mul to i64
  %add21 = add i64 %conv, 15
  %and = and i64 %add21, -16
  %conv22 = trunc i64 %and to i32
  %m_maxPlaneSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 90
  store i32 %conv22, i32* %m_maxPlaneSize, align 8, !tbaa !56
  %13 = load i32, i32* %maxEdgeSize, align 4, !tbaa !6
  %conv23 = sext i32 %13 to i64
  %add24 = add i64 %conv23, 15
  %and25 = and i64 %add24, -16
  %conv26 = trunc i64 %and25 to i32
  %m_maxEdgeSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 91
  store i32 %conv26, i32* %m_maxEdgeSize, align 4, !tbaa !57
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %14 = load i32, i32* %m_rowLoc, align 8, !tbaa !39
  %cmp27 = icmp eq i32 %14, 0
  %15 = zext i1 %cmp27 to i64
  %cond28 = select i1 %cmp27, i32 0, i32 1
  %m_rowMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 94
  store i32 %cond28, i32* %m_rowMin, align 8, !tbaa !58
  %m_rowLoc29 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %16 = load i32, i32* %m_rowLoc29, align 8, !tbaa !39
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %17 = load i32, i32* %m_tp, align 8, !tbaa !36
  %sub = sub nsw i32 %17, 1
  %cmp30 = icmp eq i32 %16, %sub
  %18 = zext i1 %cmp30 to i64
  %cond31 = select i1 %cmp30, i32 0, i32 1
  %m_rowMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 95
  store i32 %cond31, i32* %m_rowMax, align 4, !tbaa !59
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %19 = load i32, i32* %m_colLoc, align 4, !tbaa !38
  %cmp32 = icmp eq i32 %19, 0
  %20 = zext i1 %cmp32 to i64
  %cond33 = select i1 %cmp32, i32 0, i32 1
  %m_colMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 96
  store i32 %cond33, i32* %m_colMin, align 8, !tbaa !60
  %m_colLoc34 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %21 = load i32, i32* %m_colLoc34, align 4, !tbaa !38
  %m_tp35 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %22 = load i32, i32* %m_tp35, align 8, !tbaa !36
  %sub36 = sub nsw i32 %22, 1
  %cmp37 = icmp eq i32 %21, %sub36
  %23 = zext i1 %cmp37 to i64
  %cond38 = select i1 %cmp37, i32 0, i32 1
  %m_colMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 97
  store i32 %cond38, i32* %m_colMax, align 4, !tbaa !61
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %24 = load i32, i32* %m_planeLoc, align 4, !tbaa !40
  %cmp39 = icmp eq i32 %24, 0
  %25 = zext i1 %cmp39 to i64
  %cond40 = select i1 %cmp39, i32 0, i32 1
  %m_planeMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 98
  store i32 %cond40, i32* %m_planeMin, align 8, !tbaa !62
  %m_planeLoc41 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %26 = load i32, i32* %m_planeLoc41, align 4, !tbaa !40
  %m_tp42 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %27 = load i32, i32* %m_tp42, align 8, !tbaa !36
  %sub43 = sub nsw i32 %27, 1
  %cmp44 = icmp eq i32 %26, %sub43
  %28 = zext i1 %cmp44 to i64
  %cond45 = select i1 %cmp44, i32 0, i32 1
  %m_planeMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 99
  store i32 %cond45, i32* %m_planeMax, align 4, !tbaa !63
  %m_colLoc46 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %29 = load i32, i32* %m_colLoc46, align 4, !tbaa !38
  %cmp47 = icmp eq i32 %29, 0
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end19
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  %30 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %31 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul48 = mul nsw i32 %30, %31
  %conv49 = sext i32 %mul48 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmX, i64 %conv49)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end19
  %m_rowLoc50 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %32 = load i32, i32* %m_rowLoc50, align 8, !tbaa !39
  %cmp51 = icmp eq i32 %32, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  %33 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %34 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul53 = mul nsw i32 %33, %34
  %conv54 = sext i32 %mul53 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmY, i64 %conv54)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end
  %m_planeLoc56 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %35 = load i32, i32* %m_planeLoc56, align 4, !tbaa !40
  %cmp57 = icmp eq i32 %35, 0
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end55
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  %36 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %37 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul59 = mul nsw i32 %36, %37
  %conv60 = sext i32 %mul59 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmZ, i64 %conv60)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55
  %38 = bitcast i32* %maxEdgeSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_e, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_p, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_q, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ss, i64 %conv) #14
  ret double* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_v, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_yd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xdd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ydd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zdd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_nodalMass, i64 %conv) #14
  ret double* %call
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain9BuildMeshEiii(%class.Domain* %this, i32 %nx, i32 %edgeNodes, i32 %edgeElems) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %nx.addr = alloca i32, align 4
  %edgeNodes.addr = alloca i32, align 4
  %edgeElems.addr = alloca i32, align 4
  %meshEdgeElems = alloca i32, align 4
  %nidx = alloca i32, align 4
  %tz = alloca double, align 8
  %plane = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ty = alloca double, align 8
  %row = alloca i32, align 4
  %tx = alloca double, align 8
  %col = alloca i32, align 4
  %zidx = alloca i32, align 4
  %plane55 = alloca i32, align 4
  %row60 = alloca i32, align 4
  %col65 = alloca i32, align 4
  %localNode = alloca i32*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %nx, i32* %nx.addr, align 4, !tbaa !6
  store i32 %edgeNodes, i32* %edgeNodes.addr, align 4, !tbaa !6
  store i32 %edgeElems, i32* %edgeElems.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = bitcast i32* %meshEdgeElems to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %1 = load i32, i32* %m_tp, align 8, !tbaa !36
  %2 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %meshEdgeElems, align 4, !tbaa !6
  %3 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #14
  store i32 0, i32* %nidx, align 4, !tbaa !6
  %4 = bitcast double* %tz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #14
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %5 = load i32, i32* %m_planeLoc, align 4, !tbaa !40
  %6 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul2 = mul nsw i32 %5, %6
  %conv = sitofp i32 %mul2 to double
  %mul3 = fmul double 1.125000e+00, %conv
  %7 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv4 = sitofp i32 %7 to double
  %div = fdiv double %mul3, %conv4
  store double %div, double* %tz, align 8, !tbaa !46
  %8 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #14
  store i32 0, i32* %plane, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %entry
  %9 = load i32, i32* %plane, align 4, !tbaa !6
  %10 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %11 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #14
  br label %for.end54

for.body:                                         ; preds = %for.cond
  %12 = bitcast double* %ty to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #14
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %13 = load i32, i32* %m_rowLoc, align 8, !tbaa !39
  %14 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul5 = mul nsw i32 %13, %14
  %conv6 = sitofp i32 %mul5 to double
  %mul7 = fmul double 1.125000e+00, %conv6
  %15 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv8 = sitofp i32 %15 to double
  %div9 = fdiv double %mul7, %conv8
  store double %div9, double* %ty, align 8, !tbaa !46
  %16 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #14
  store i32 0, i32* %row, align 4, !tbaa !6
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc41, %for.body
  %17 = load i32, i32* %row, align 4, !tbaa !6
  %18 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 5, i32* %cleanup.dest.slot, align 4
  %19 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #14
  br label %for.end43

for.body13:                                       ; preds = %for.cond10
  %20 = bitcast double* %tx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #14
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %21 = load i32, i32* %m_colLoc, align 4, !tbaa !38
  %22 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul14 = mul nsw i32 %21, %22
  %conv15 = sitofp i32 %mul14 to double
  %mul16 = fmul double 1.125000e+00, %conv15
  %23 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv17 = sitofp i32 %23 to double
  %div18 = fdiv double %mul16, %conv17
  store double %div18, double* %tx, align 8, !tbaa !46
  %24 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #14
  store i32 0, i32* %col, align 4, !tbaa !6
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body13
  %25 = load i32, i32* %col, align 4, !tbaa !6
  %26 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %cmp20 = icmp slt i32 %25, %26
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond19
  store i32 8, i32* %cleanup.dest.slot, align 4
  %27 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #14
  br label %for.end

for.body22:                                       ; preds = %for.cond19
  %28 = load double, double* %tx, align 8, !tbaa !46
  %29 = load i32, i32* %nidx, align 4, !tbaa !6
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this1, i32 %29)
  store double %28, double* %call, align 8, !tbaa !46
  %30 = load double, double* %ty, align 8, !tbaa !46
  %31 = load i32, i32* %nidx, align 4, !tbaa !6
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this1, i32 %31)
  store double %30, double* %call23, align 8, !tbaa !46
  %32 = load double, double* %tz, align 8, !tbaa !46
  %33 = load i32, i32* %nidx, align 4, !tbaa !6
  %call24 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this1, i32 %33)
  store double %32, double* %call24, align 8, !tbaa !46
  %34 = load i32, i32* %nidx, align 4, !tbaa !6
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %nidx, align 4, !tbaa !6
  %m_colLoc25 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %35 = load i32, i32* %m_colLoc25, align 4, !tbaa !38
  %36 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul26 = mul nsw i32 %35, %36
  %37 = load i32, i32* %col, align 4, !tbaa !6
  %add = add nsw i32 %mul26, %37
  %add27 = add nsw i32 %add, 1
  %conv28 = sitofp i32 %add27 to double
  %mul29 = fmul double 1.125000e+00, %conv28
  %38 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv30 = sitofp i32 %38 to double
  %div31 = fdiv double %mul29, %conv30
  store double %div31, double* %tx, align 8, !tbaa !46
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %39 = load i32, i32* %col, align 4, !tbaa !6
  %inc32 = add nsw i32 %39, 1
  store i32 %inc32, i32* %col, align 4, !tbaa !6
  br label %for.cond19, !llvm.loop !64

for.end:                                          ; preds = %for.cond.cleanup21
  %m_rowLoc33 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %40 = load i32, i32* %m_rowLoc33, align 8, !tbaa !39
  %41 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul34 = mul nsw i32 %40, %41
  %42 = load i32, i32* %row, align 4, !tbaa !6
  %add35 = add nsw i32 %mul34, %42
  %add36 = add nsw i32 %add35, 1
  %conv37 = sitofp i32 %add36 to double
  %mul38 = fmul double 1.125000e+00, %conv37
  %43 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv39 = sitofp i32 %43 to double
  %div40 = fdiv double %mul38, %conv39
  store double %div40, double* %ty, align 8, !tbaa !46
  %44 = bitcast double* %tx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #14
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %45 = load i32, i32* %row, align 4, !tbaa !6
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, i32* %row, align 4, !tbaa !6
  br label %for.cond10, !llvm.loop !65

for.end43:                                        ; preds = %for.cond.cleanup12
  %m_planeLoc44 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %46 = load i32, i32* %m_planeLoc44, align 4, !tbaa !40
  %47 = load i32, i32* %nx.addr, align 4, !tbaa !6
  %mul45 = mul nsw i32 %46, %47
  %48 = load i32, i32* %plane, align 4, !tbaa !6
  %add46 = add nsw i32 %mul45, %48
  %add47 = add nsw i32 %add46, 1
  %conv48 = sitofp i32 %add47 to double
  %mul49 = fmul double 1.125000e+00, %conv48
  %49 = load i32, i32* %meshEdgeElems, align 4, !tbaa !6
  %conv50 = sitofp i32 %49 to double
  %div51 = fdiv double %mul49, %conv50
  store double %div51, double* %tz, align 8, !tbaa !46
  %50 = bitcast double* %ty to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #14
  br label %for.inc52

for.inc52:                                        ; preds = %for.end43
  %51 = load i32, i32* %plane, align 4, !tbaa !6
  %inc53 = add nsw i32 %51, 1
  store i32 %inc53, i32* %plane, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !66

for.end54:                                        ; preds = %for.cond.cleanup
  %52 = bitcast i32* %zidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #14
  store i32 0, i32* %zidx, align 4, !tbaa !6
  store i32 0, i32* %nidx, align 4, !tbaa !6
  %53 = bitcast i32* %plane55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #14
  store i32 0, i32* %plane55, align 4, !tbaa !6
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc104, %for.end54
  %54 = load i32, i32* %plane55, align 4, !tbaa !6
  %55 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body59, label %for.cond.cleanup58

for.cond.cleanup58:                               ; preds = %for.cond56
  store i32 11, i32* %cleanup.dest.slot, align 4
  %56 = bitcast i32* %plane55 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #14
  br label %for.end106

for.body59:                                       ; preds = %for.cond56
  %57 = bitcast i32* %row60 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %57) #14
  store i32 0, i32* %row60, align 4, !tbaa !6
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc100, %for.body59
  %58 = load i32, i32* %row60, align 4, !tbaa !6
  %59 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp62 = icmp slt i32 %58, %59
  br i1 %cmp62, label %for.body64, label %for.cond.cleanup63

for.cond.cleanup63:                               ; preds = %for.cond61
  store i32 14, i32* %cleanup.dest.slot, align 4
  %60 = bitcast i32* %row60 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #14
  br label %for.end102

for.body64:                                       ; preds = %for.cond61
  %61 = bitcast i32* %col65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %61) #14
  store i32 0, i32* %col65, align 4, !tbaa !6
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc96, %for.body64
  %62 = load i32, i32* %col65, align 4, !tbaa !6
  %63 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp67 = icmp slt i32 %62, %63
  br i1 %cmp67, label %for.body69, label %for.cond.cleanup68

for.cond.cleanup68:                               ; preds = %for.cond66
  store i32 17, i32* %cleanup.dest.slot, align 4
  %64 = bitcast i32* %col65 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #14
  br label %for.end98

for.body69:                                       ; preds = %for.cond66
  %65 = bitcast i32** %localNode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %65) #14
  %66 = load i32, i32* %zidx, align 4, !tbaa !6
  %call70 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this1, i32 %66)
  store i32* %call70, i32** %localNode, align 8, !tbaa !2
  %67 = load i32, i32* %nidx, align 4, !tbaa !6
  %68 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %arrayidx, align 4, !tbaa !6
  %69 = load i32, i32* %nidx, align 4, !tbaa !6
  %add71 = add nsw i32 %69, 1
  %70 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %add71, i32* %arrayidx72, align 4, !tbaa !6
  %71 = load i32, i32* %nidx, align 4, !tbaa !6
  %72 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %add73 = add nsw i32 %71, %72
  %add74 = add nsw i32 %add73, 1
  %73 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %add74, i32* %arrayidx75, align 4, !tbaa !6
  %74 = load i32, i32* %nidx, align 4, !tbaa !6
  %75 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %add76 = add nsw i32 %74, %75
  %76 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %add76, i32* %arrayidx77, align 4, !tbaa !6
  %77 = load i32, i32* %nidx, align 4, !tbaa !6
  %78 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %79 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul78 = mul nsw i32 %78, %79
  %add79 = add nsw i32 %77, %mul78
  %80 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %add79, i32* %arrayidx80, align 4, !tbaa !6
  %81 = load i32, i32* %nidx, align 4, !tbaa !6
  %82 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %83 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul81 = mul nsw i32 %82, %83
  %add82 = add nsw i32 %81, %mul81
  %add83 = add nsw i32 %add82, 1
  %84 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds i32, i32* %84, i64 5
  store i32 %add83, i32* %arrayidx84, align 4, !tbaa !6
  %85 = load i32, i32* %nidx, align 4, !tbaa !6
  %86 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %87 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul85 = mul nsw i32 %86, %87
  %add86 = add nsw i32 %85, %mul85
  %88 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %add87 = add nsw i32 %add86, %88
  %add88 = add nsw i32 %add87, 1
  %89 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 %add88, i32* %arrayidx89, align 4, !tbaa !6
  %90 = load i32, i32* %nidx, align 4, !tbaa !6
  %91 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %92 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul90 = mul nsw i32 %91, %92
  %add91 = add nsw i32 %90, %mul90
  %93 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %add92 = add nsw i32 %add91, %93
  %94 = load i32*, i32** %localNode, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i32, i32* %94, i64 7
  store i32 %add92, i32* %arrayidx93, align 4, !tbaa !6
  %95 = load i32, i32* %zidx, align 4, !tbaa !6
  %inc94 = add nsw i32 %95, 1
  store i32 %inc94, i32* %zidx, align 4, !tbaa !6
  %96 = load i32, i32* %nidx, align 4, !tbaa !6
  %inc95 = add nsw i32 %96, 1
  store i32 %inc95, i32* %nidx, align 4, !tbaa !6
  %97 = bitcast i32** %localNode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #14
  br label %for.inc96

for.inc96:                                        ; preds = %for.body69
  %98 = load i32, i32* %col65, align 4, !tbaa !6
  %inc97 = add nsw i32 %98, 1
  store i32 %inc97, i32* %col65, align 4, !tbaa !6
  br label %for.cond66, !llvm.loop !67

for.end98:                                        ; preds = %for.cond.cleanup68
  %99 = load i32, i32* %nidx, align 4, !tbaa !6
  %inc99 = add nsw i32 %99, 1
  store i32 %inc99, i32* %nidx, align 4, !tbaa !6
  br label %for.inc100

for.inc100:                                       ; preds = %for.end98
  %100 = load i32, i32* %row60, align 4, !tbaa !6
  %inc101 = add nsw i32 %100, 1
  store i32 %inc101, i32* %row60, align 4, !tbaa !6
  br label %for.cond61, !llvm.loop !68

for.end102:                                       ; preds = %for.cond.cleanup63
  %101 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %102 = load i32, i32* %nidx, align 4, !tbaa !6
  %add103 = add nsw i32 %102, %101
  store i32 %add103, i32* %nidx, align 4, !tbaa !6
  br label %for.inc104

for.inc104:                                       ; preds = %for.end102
  %103 = load i32, i32* %plane55, align 4, !tbaa !6
  %inc105 = add nsw i32 %103, 1
  store i32 %inc105, i32* %plane55, align 4, !tbaa !6
  br label %for.cond56, !llvm.loop !69

for.end106:                                       ; preds = %for.cond.cleanup58
  %104 = bitcast i32* %zidx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #14
  %105 = bitcast double* %tz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %105) #14
  %106 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #14
  %107 = bitcast i32* %meshEdgeElems to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %nr.addr = alloca i32, align 4
  %balance.addr = alloca i32, align 4
  %myRank = alloca i32, align 4
  %nextIndex = alloca i32, align 4
  %regionNum = alloca i32, align 4
  %regionVar = alloca i32, align 4
  %lastReg = alloca i32, align 4
  %binSize = alloca i32, align 4
  %elements = alloca i32, align 4
  %runto = alloca i32, align 4
  %costDenominator = alloca i32, align 4
  %regBinEnd = alloca i32*, align 8
  %i = alloca i32, align 4
  %i28 = alloca i32, align 4
  %i114 = alloca i32, align 4
  %r = alloca i32, align 4
  %i126 = alloca i32, align 4
  %i142 = alloca i32, align 4
  %r148 = alloca i32, align 4
  %regndx = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !6
  store i32 %balance, i32* %balance.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  call void @srand(i32 0) #14
  %0 = bitcast i32* %myRank to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  store i32 0, i32* %myRank, align 4, !tbaa !6
  %1 = load i32, i32* %nr.addr, align 4, !tbaa !6
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  store i32 %1, i32* %call, align 4, !tbaa !6
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %2 = load i32, i32* %call2, align 4, !tbaa !6
  %conv = sext i32 %2 to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %call3 = call noalias nonnull i8* @_Znam(i64 %6) #15
  %7 = bitcast i8* %call3 to i32*
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 18
  store i32* %7, i32** %m_regElemSize, align 8, !tbaa !8
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %8 = load i32, i32* %call4, align 4, !tbaa !6
  %conv5 = sext i32 %8 to i64
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv5, i64 8)
  %10 = extractvalue { i64, i1 } %9, 1
  %11 = extractvalue { i64, i1 } %9, 0
  %12 = select i1 %10, i64 -1, i64 %11
  %call6 = call noalias nonnull i8* @_Znam(i64 %12) #15
  %13 = bitcast i8* %call6 to i32**
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  store i32** %13, i32*** %m_regElemlist, align 8, !tbaa !14
  %14 = bitcast i32* %nextIndex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #14
  store i32 0, i32* %nextIndex, align 4, !tbaa !6
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %15 = load i32, i32* %call7, align 4, !tbaa !6
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %17 = load i32, i32* %call8, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %16, %17
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this1, i32 %18)
  store i32 1, i32* %call10, align 4, !tbaa !6
  %19 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %nextIndex, align 4, !tbaa !6
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 0)
  store i32 0, i32* %call11, align 4, !tbaa !6
  br label %if.end113

if.else:                                          ; preds = %entry
  %20 = bitcast i32* %regionNum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #14
  %21 = bitcast i32* %regionVar to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #14
  %22 = bitcast i32* %lastReg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #14
  store i32 -1, i32* %lastReg, align 4, !tbaa !6
  %23 = bitcast i32* %binSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #14
  %24 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #14
  %25 = bitcast i32* %runto to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #14
  store i32 0, i32* %runto, align 4, !tbaa !6
  %26 = bitcast i32* %costDenominator to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #14
  store i32 0, i32* %costDenominator, align 4, !tbaa !6
  %27 = bitcast i32** %regBinEnd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #14
  %call12 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %28 = load i32, i32* %call12, align 4, !tbaa !6
  %conv13 = sext i32 %28 to i64
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv13, i64 4)
  %30 = extractvalue { i64, i1 } %29, 1
  %31 = extractvalue { i64, i1 } %29, 0
  %32 = select i1 %30, i64 -1, i64 %31
  %call14 = call noalias nonnull i8* @_Znam(i64 %32) #15
  %33 = bitcast i8* %call14 to i32*
  store i32* %33, i32** %regBinEnd, align 8, !tbaa !2
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %call15 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %36 = load i32, i32* %call15, align 4, !tbaa !6
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4, !tbaa !6
  %call17 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 %38)
  store i32 0, i32* %call17, align 4, !tbaa !6
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 %39, 1
  %40 = load i32, i32* %balance.addr, align 4, !tbaa !6
  %call18 = call double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %add, i32 %40)
  %41 = load i32, i32* %costDenominator, align 4, !tbaa !6
  %conv19 = sitofp i32 %41 to double
  %add20 = fadd double %conv19, %call18
  %conv21 = fptosi double %add20 to i32
  store i32 %conv21, i32* %costDenominator, align 4, !tbaa !6
  %42 = load i32, i32* %costDenominator, align 4, !tbaa !6
  %43 = load i32*, i32** %regBinEnd, align 8, !tbaa !2
  %44 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds i32, i32* %43, i64 %idxprom
  store i32 %42, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !6
  %inc22 = add nsw i32 %45, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond.cleanup
  br label %while.cond23

while.cond23:                                     ; preds = %while.end111, %for.end
  %46 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %call24 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %47 = load i32, i32* %call24, align 4, !tbaa !6
  %cmp25 = icmp slt i32 %46, %47
  br i1 %cmp25, label %while.body26, label %while.end112

while.body26:                                     ; preds = %while.cond23
  %call27 = call i32 @rand() #14
  %48 = load i32, i32* %costDenominator, align 4, !tbaa !6
  %rem = srem i32 %call27, %48
  store i32 %rem, i32* %regionVar, align 4, !tbaa !6
  %49 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #14
  store i32 0, i32* %i28, align 4, !tbaa !6
  br label %while.cond29

while.cond29:                                     ; preds = %while.body33, %while.body26
  %50 = load i32, i32* %regionVar, align 4, !tbaa !6
  %51 = load i32*, i32** %regBinEnd, align 8, !tbaa !2
  %52 = load i32, i32* %i28, align 4, !tbaa !6
  %idxprom30 = sext i32 %52 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %51, i64 %idxprom30
  %53 = load i32, i32* %arrayidx31, align 4, !tbaa !6
  %cmp32 = icmp sge i32 %50, %53
  br i1 %cmp32, label %while.body33, label %while.end35

while.body33:                                     ; preds = %while.cond29
  %54 = load i32, i32* %i28, align 4, !tbaa !6
  %inc34 = add nsw i32 %54, 1
  store i32 %inc34, i32* %i28, align 4, !tbaa !6
  br label %while.cond29, !llvm.loop !72

while.end35:                                      ; preds = %while.cond29
  %55 = load i32, i32* %i28, align 4, !tbaa !6
  %56 = load i32, i32* %myRank, align 4, !tbaa !6
  %add36 = add nsw i32 %55, %56
  %call37 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %57 = load i32, i32* %call37, align 4, !tbaa !6
  %rem38 = srem i32 %add36, %57
  %add39 = add nsw i32 %rem38, 1
  store i32 %add39, i32* %regionNum, align 4, !tbaa !6
  br label %while.cond40

while.cond40:                                     ; preds = %while.end51, %while.end35
  %58 = load i32, i32* %regionNum, align 4, !tbaa !6
  %59 = load i32, i32* %lastReg, align 4, !tbaa !6
  %cmp41 = icmp eq i32 %58, %59
  br i1 %cmp41, label %while.body42, label %while.end56

while.body42:                                     ; preds = %while.cond40
  %call43 = call i32 @rand() #14
  %60 = load i32, i32* %costDenominator, align 4, !tbaa !6
  %rem44 = srem i32 %call43, %60
  store i32 %rem44, i32* %regionVar, align 4, !tbaa !6
  store i32 0, i32* %i28, align 4, !tbaa !6
  br label %while.cond45

while.cond45:                                     ; preds = %while.body49, %while.body42
  %61 = load i32, i32* %regionVar, align 4, !tbaa !6
  %62 = load i32*, i32** %regBinEnd, align 8, !tbaa !2
  %63 = load i32, i32* %i28, align 4, !tbaa !6
  %idxprom46 = sext i32 %63 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %62, i64 %idxprom46
  %64 = load i32, i32* %arrayidx47, align 4, !tbaa !6
  %cmp48 = icmp sge i32 %61, %64
  br i1 %cmp48, label %while.body49, label %while.end51

while.body49:                                     ; preds = %while.cond45
  %65 = load i32, i32* %i28, align 4, !tbaa !6
  %inc50 = add nsw i32 %65, 1
  store i32 %inc50, i32* %i28, align 4, !tbaa !6
  br label %while.cond45, !llvm.loop !73

while.end51:                                      ; preds = %while.cond45
  %66 = load i32, i32* %i28, align 4, !tbaa !6
  %67 = load i32, i32* %myRank, align 4, !tbaa !6
  %add52 = add nsw i32 %66, %67
  %call53 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %68 = load i32, i32* %call53, align 4, !tbaa !6
  %rem54 = srem i32 %add52, %68
  %add55 = add nsw i32 %rem54, 1
  store i32 %add55, i32* %regionNum, align 4, !tbaa !6
  br label %while.cond40, !llvm.loop !74

while.end56:                                      ; preds = %while.cond40
  %call57 = call i32 @rand() #14
  %rem58 = srem i32 %call57, 1000
  store i32 %rem58, i32* %binSize, align 4, !tbaa !6
  %69 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp59 = icmp slt i32 %69, 773
  br i1 %cmp59, label %if.then60, label %if.else64

if.then60:                                        ; preds = %while.end56
  %call61 = call i32 @rand() #14
  %rem62 = srem i32 %call61, 15
  %add63 = add nsw i32 %rem62, 1
  store i32 %add63, i32* %elements, align 4, !tbaa !6
  br label %if.end102

if.else64:                                        ; preds = %while.end56
  %70 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp65 = icmp slt i32 %70, 937
  br i1 %cmp65, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.else64
  %call67 = call i32 @rand() #14
  %rem68 = srem i32 %call67, 16
  %add69 = add nsw i32 %rem68, 16
  store i32 %add69, i32* %elements, align 4, !tbaa !6
  br label %if.end101

if.else70:                                        ; preds = %if.else64
  %71 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp71 = icmp slt i32 %71, 970
  br i1 %cmp71, label %if.then72, label %if.else76

if.then72:                                        ; preds = %if.else70
  %call73 = call i32 @rand() #14
  %rem74 = srem i32 %call73, 32
  %add75 = add nsw i32 %rem74, 32
  store i32 %add75, i32* %elements, align 4, !tbaa !6
  br label %if.end100

if.else76:                                        ; preds = %if.else70
  %72 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp77 = icmp slt i32 %72, 974
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.else76
  %call79 = call i32 @rand() #14
  %rem80 = srem i32 %call79, 64
  %add81 = add nsw i32 %rem80, 64
  store i32 %add81, i32* %elements, align 4, !tbaa !6
  br label %if.end99

if.else82:                                        ; preds = %if.else76
  %73 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp83 = icmp slt i32 %73, 978
  br i1 %cmp83, label %if.then84, label %if.else88

if.then84:                                        ; preds = %if.else82
  %call85 = call i32 @rand() #14
  %rem86 = srem i32 %call85, 128
  %add87 = add nsw i32 %rem86, 128
  store i32 %add87, i32* %elements, align 4, !tbaa !6
  br label %if.end98

if.else88:                                        ; preds = %if.else82
  %74 = load i32, i32* %binSize, align 4, !tbaa !6
  %cmp89 = icmp slt i32 %74, 981
  br i1 %cmp89, label %if.then90, label %if.else94

if.then90:                                        ; preds = %if.else88
  %call91 = call i32 @rand() #14
  %rem92 = srem i32 %call91, 256
  %add93 = add nsw i32 %rem92, 256
  store i32 %add93, i32* %elements, align 4, !tbaa !6
  br label %if.end

if.else94:                                        ; preds = %if.else88
  %call95 = call i32 @rand() #14
  %rem96 = srem i32 %call95, 1537
  %add97 = add nsw i32 %rem96, 512
  store i32 %add97, i32* %elements, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else94, %if.then90
  br label %if.end98

if.end98:                                         ; preds = %if.end, %if.then84
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then78
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then72
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then66
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then60
  %75 = load i32, i32* %elements, align 4, !tbaa !6
  %76 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %add103 = add nsw i32 %75, %76
  store i32 %add103, i32* %runto, align 4, !tbaa !6
  br label %while.cond104

while.cond104:                                    ; preds = %while.body108, %if.end102
  %77 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %78 = load i32, i32* %runto, align 4, !tbaa !6
  %cmp105 = icmp slt i32 %77, %78
  br i1 %cmp105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond104
  %79 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %call106 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %80 = load i32, i32* %call106, align 4, !tbaa !6
  %cmp107 = icmp slt i32 %79, %80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond104
  %81 = phi i1 [ false, %while.cond104 ], [ %cmp107, %land.rhs ]
  br i1 %81, label %while.body108, label %while.end111

while.body108:                                    ; preds = %land.end
  %82 = load i32, i32* %regionNum, align 4, !tbaa !6
  %83 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %call109 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this1, i32 %83)
  store i32 %82, i32* %call109, align 4, !tbaa !6
  %84 = load i32, i32* %nextIndex, align 4, !tbaa !6
  %inc110 = add nsw i32 %84, 1
  store i32 %inc110, i32* %nextIndex, align 4, !tbaa !6
  br label %while.cond104, !llvm.loop !75

while.end111:                                     ; preds = %land.end
  %85 = load i32, i32* %regionNum, align 4, !tbaa !6
  store i32 %85, i32* %lastReg, align 4, !tbaa !6
  %86 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #14
  br label %while.cond23, !llvm.loop !76

while.end112:                                     ; preds = %while.cond23
  %87 = load i32*, i32** %regBinEnd, align 8, !tbaa !2
  %isnull = icmp eq i32* %87, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %while.end112
  %88 = bitcast i32* %87 to i8*
  call void @_ZdaPv(i8* %88) #18
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %while.end112
  %89 = bitcast i32** %regBinEnd to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #14
  %90 = bitcast i32* %costDenominator to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #14
  %91 = bitcast i32* %runto to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #14
  %92 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #14
  %93 = bitcast i32* %binSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #14
  %94 = bitcast i32* %lastReg to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #14
  %95 = bitcast i32* %regionVar to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #14
  %96 = bitcast i32* %regionNum to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %96) #14
  br label %if.end113

if.end113:                                        ; preds = %delete.end, %while.end
  %97 = bitcast i32* %i114 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %97) #14
  store i32 0, i32* %i114, align 4, !tbaa !6
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc123, %if.end113
  %98 = load i32, i32* %i114, align 4, !tbaa !6
  %call116 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %99 = load i32, i32* %call116, align 4, !tbaa !6
  %cmp117 = icmp slt i32 %98, %99
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118

for.cond.cleanup118:                              ; preds = %for.cond115
  %100 = bitcast i32* %i114 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #14
  br label %for.end125

for.body119:                                      ; preds = %for.cond115
  %101 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %101) #14
  %102 = load i32, i32* %i114, align 4, !tbaa !6
  %call120 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this1, i32 %102)
  %103 = load i32, i32* %call120, align 4, !tbaa !6
  %sub = sub nsw i32 %103, 1
  store i32 %sub, i32* %r, align 4, !tbaa !6
  %104 = load i32, i32* %r, align 4, !tbaa !6
  %call121 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 %104)
  %105 = load i32, i32* %call121, align 4, !tbaa !6
  %inc122 = add nsw i32 %105, 1
  store i32 %inc122, i32* %call121, align 4, !tbaa !6
  %106 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #14
  br label %for.inc123

for.inc123:                                       ; preds = %for.body119
  %107 = load i32, i32* %i114, align 4, !tbaa !6
  %inc124 = add nsw i32 %107, 1
  store i32 %inc124, i32* %i114, align 4, !tbaa !6
  br label %for.cond115, !llvm.loop !77

for.end125:                                       ; preds = %for.cond.cleanup118
  %108 = bitcast i32* %i126 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %108) #14
  store i32 0, i32* %i126, align 4, !tbaa !6
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc139, %for.end125
  %109 = load i32, i32* %i126, align 4, !tbaa !6
  %call128 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
  %110 = load i32, i32* %call128, align 4, !tbaa !6
  %cmp129 = icmp slt i32 %109, %110
  br i1 %cmp129, label %for.body131, label %for.cond.cleanup130

for.cond.cleanup130:                              ; preds = %for.cond127
  %111 = bitcast i32* %i126 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #14
  br label %for.end141

for.body131:                                      ; preds = %for.cond127
  %112 = load i32, i32* %i126, align 4, !tbaa !6
  %call132 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 %112)
  %113 = load i32, i32* %call132, align 4, !tbaa !6
  %conv133 = sext i32 %113 to i64
  %114 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv133, i64 4)
  %115 = extractvalue { i64, i1 } %114, 1
  %116 = extractvalue { i64, i1 } %114, 0
  %117 = select i1 %115, i64 -1, i64 %116
  %call134 = call noalias nonnull i8* @_Znam(i64 %117) #15
  %118 = bitcast i8* %call134 to i32*
  %m_regElemlist135 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %119 = load i32**, i32*** %m_regElemlist135, align 8, !tbaa !14
  %120 = load i32, i32* %i126, align 4, !tbaa !6
  %idxprom136 = sext i32 %120 to i64
  %arrayidx137 = getelementptr inbounds i32*, i32** %119, i64 %idxprom136
  store i32* %118, i32** %arrayidx137, align 8, !tbaa !2
  %121 = load i32, i32* %i126, align 4, !tbaa !6
  %call138 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 %121)
  store i32 0, i32* %call138, align 4, !tbaa !6
  br label %for.inc139

for.inc139:                                       ; preds = %for.body131
  %122 = load i32, i32* %i126, align 4, !tbaa !6
  %inc140 = add nsw i32 %122, 1
  store i32 %inc140, i32* %i126, align 4, !tbaa !6
  br label %for.cond127, !llvm.loop !78

for.end141:                                       ; preds = %for.cond.cleanup130
  %123 = bitcast i32* %i142 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %123) #14
  store i32 0, i32* %i142, align 4, !tbaa !6
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc154, %for.end141
  %124 = load i32, i32* %i142, align 4, !tbaa !6
  %call144 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %125 = load i32, i32* %call144, align 4, !tbaa !6
  %cmp145 = icmp slt i32 %124, %125
  br i1 %cmp145, label %for.body147, label %for.cond.cleanup146

for.cond.cleanup146:                              ; preds = %for.cond143
  %126 = bitcast i32* %i142 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126) #14
  br label %for.end156

for.body147:                                      ; preds = %for.cond143
  %127 = bitcast i32* %r148 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %127) #14
  %128 = load i32, i32* %i142, align 4, !tbaa !6
  %call149 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this1, i32 %128)
  %129 = load i32, i32* %call149, align 4, !tbaa !6
  %sub150 = sub nsw i32 %129, 1
  store i32 %sub150, i32* %r148, align 4, !tbaa !6
  %130 = bitcast i32* %regndx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %130) #14
  %131 = load i32, i32* %r148, align 4, !tbaa !6
  %call151 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this1, i32 %131)
  %132 = load i32, i32* %call151, align 4, !tbaa !6
  %inc152 = add nsw i32 %132, 1
  store i32 %inc152, i32* %call151, align 4, !tbaa !6
  store i32 %132, i32* %regndx, align 4, !tbaa !6
  %133 = load i32, i32* %i142, align 4, !tbaa !6
  %134 = load i32, i32* %r148, align 4, !tbaa !6
  %135 = load i32, i32* %regndx, align 4, !tbaa !6
  %call153 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this1, i32 %134, i32 %135)
  store i32 %133, i32* %call153, align 4, !tbaa !6
  %136 = bitcast i32* %regndx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #14
  %137 = bitcast i32* %r148 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #14
  br label %for.inc154

for.inc154:                                       ; preds = %for.body147
  %138 = load i32, i32* %i142, align 4, !tbaa !6
  %inc155 = add nsw i32 %138, 1
  store i32 %inc155, i32* %i142, align 4, !tbaa !6
  br label %for.cond143, !llvm.loop !79

for.end156:                                       ; preds = %for.cond.cleanup146
  %139 = bitcast i32* %nextIndex to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #14
  %140 = bitcast i32* %myRank to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* %this, i32 %edgeNodes) #1 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %edgeNodes.addr = alloca i32, align 4
  %nidx = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %planeInc = alloca i32, align 4
  %rowInc = alloca i32, align 4
  %j = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %edgeNodes, i32* %edgeNodes.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  store i32 0, i32* %nidx, align 4, !tbaa !6
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %3 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #14
  br label %for.end25

for.body:                                         ; preds = %for.cond
  %5 = bitcast i32* %planeInc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #14
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %7 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul2 = mul nsw i32 %mul, %8
  store i32 %mul2, i32* %planeInc, align 4, !tbaa !6
  %9 = bitcast i32* %rowInc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #14
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %11 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul3 = mul nsw i32 %10, %11
  store i32 %mul3, i32* %rowInc, align 4, !tbaa !6
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #14
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !tbaa !6
  %14 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 5, i32* %cleanup.dest.slot, align 4
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #14
  br label %for.end

for.body7:                                        ; preds = %for.cond4
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %16 = load i32, i32* %m_planeLoc, align 4, !tbaa !40
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %17 = load i32, i32* %rowInc, align 4, !tbaa !6
  %18 = load i32, i32* %j, align 4, !tbaa !6
  %add = add nsw i32 %17, %18
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  %19 = load i32, i32* %nidx, align 4, !tbaa !6
  %conv = sext i32 %19 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmZ, i64 %conv) #14
  store i32 %add, i32* %call, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %20 = load i32, i32* %m_rowLoc, align 8, !tbaa !39
  %cmp9 = icmp eq i32 %20, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %21 = load i32, i32* %planeInc, align 4, !tbaa !6
  %22 = load i32, i32* %j, align 4, !tbaa !6
  %add11 = add nsw i32 %21, %22
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  %23 = load i32, i32* %nidx, align 4, !tbaa !6
  %conv12 = sext i32 %23 to i64
  %call13 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmY, i64 %conv12) #14
  store i32 %add11, i32* %call13, align 4, !tbaa !6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %24 = load i32, i32* %m_colLoc, align 4, !tbaa !38
  %cmp15 = icmp eq i32 %24, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %25 = load i32, i32* %planeInc, align 4, !tbaa !6
  %26 = load i32, i32* %j, align 4, !tbaa !6
  %27 = load i32, i32* %edgeNodes.addr, align 4, !tbaa !6
  %mul17 = mul nsw i32 %26, %27
  %add18 = add nsw i32 %25, %mul17
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  %28 = load i32, i32* %nidx, align 4, !tbaa !6
  %conv19 = sext i32 %28 to i64
  %call20 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmX, i64 %conv19) #14
  store i32 %add18, i32* %call20, align 4, !tbaa !6
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %29 = load i32, i32* %nidx, align 4, !tbaa !6
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %nidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %30 = load i32, i32* %j, align 4, !tbaa !6
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, i32* %j, align 4, !tbaa !6
  br label %for.cond4, !llvm.loop !80

for.end:                                          ; preds = %for.cond.cleanup6
  %31 = bitcast i32* %rowInc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #14
  %32 = bitcast i32* %planeInc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #14
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %inc24 = add nsw i32 %33, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !81

for.end25:                                        ; preds = %for.cond.cleanup
  %34 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* %this, i32 %edgeElems) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %edgeElems.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i26 = alloca i32, align 4
  %i39 = alloca i32, align 4
  %i57 = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %edgeElems, i32* %edgeElems.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this1, i32 0)
  store i32 0, i32* %call, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %2 = load i32, i32* %call2, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this1, i32 %5)
  store i32 %sub, i32* %call3, align 4, !tbaa !6
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %sub4 = sub nsw i32 %7, 1
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this1, i32 %sub4)
  store i32 %6, i32* %call5, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond.cleanup
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %9 = load i32, i32* %call6, align 4, !tbaa !6
  %sub7 = sub nsw i32 %9, 1
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %10 = load i32, i32* %call8, align 4, !tbaa !6
  %sub9 = sub nsw i32 %10, 1
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this1, i32 %sub9)
  store i32 %sub7, i32* %call10, align 4, !tbaa !6
  %11 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #14
  store i32 0, i32* %i11, align 4, !tbaa !6
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.end
  %12 = load i32, i32* %i11, align 4, !tbaa !6
  %13 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  %14 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #14
  br label %for.end25

for.body15:                                       ; preds = %for.cond12
  %15 = load i32, i32* %i11, align 4, !tbaa !6
  %16 = load i32, i32* %i11, align 4, !tbaa !6
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this1, i32 %16)
  store i32 %15, i32* %call16, align 4, !tbaa !6
  %call17 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %17 = load i32, i32* %call17, align 4, !tbaa !6
  %18 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub18 = sub nsw i32 %17, %18
  %19 = load i32, i32* %i11, align 4, !tbaa !6
  %add = add nsw i32 %sub18, %19
  %call19 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %20 = load i32, i32* %call19, align 4, !tbaa !6
  %21 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub20 = sub nsw i32 %20, %21
  %22 = load i32, i32* %i11, align 4, !tbaa !6
  %add21 = add nsw i32 %sub20, %22
  %call22 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this1, i32 %add21)
  store i32 %add, i32* %call22, align 4, !tbaa !6
  br label %for.inc23

for.inc23:                                        ; preds = %for.body15
  %23 = load i32, i32* %i11, align 4, !tbaa !6
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i11, align 4, !tbaa !6
  br label %for.cond12, !llvm.loop !83

for.end25:                                        ; preds = %for.cond.cleanup14
  %24 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #14
  %25 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  store i32 %25, i32* %i26, align 4, !tbaa !6
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.end25
  %26 = load i32, i32* %i26, align 4, !tbaa !6
  %call28 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %27 = load i32, i32* %call28, align 4, !tbaa !6
  %cmp29 = icmp slt i32 %26, %27
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond27
  %28 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #14
  br label %for.end38

for.body31:                                       ; preds = %for.cond27
  %29 = load i32, i32* %i26, align 4, !tbaa !6
  %30 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub32 = sub nsw i32 %29, %30
  %31 = load i32, i32* %i26, align 4, !tbaa !6
  %call33 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this1, i32 %31)
  store i32 %sub32, i32* %call33, align 4, !tbaa !6
  %32 = load i32, i32* %i26, align 4, !tbaa !6
  %33 = load i32, i32* %i26, align 4, !tbaa !6
  %34 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub34 = sub nsw i32 %33, %34
  %call35 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this1, i32 %sub34)
  store i32 %32, i32* %call35, align 4, !tbaa !6
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %35 = load i32, i32* %i26, align 4, !tbaa !6
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %i26, align 4, !tbaa !6
  br label %for.cond27, !llvm.loop !84

for.end38:                                        ; preds = %for.cond.cleanup30
  %36 = bitcast i32* %i39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #14
  store i32 0, i32* %i39, align 4, !tbaa !6
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc54, %for.end38
  %37 = load i32, i32* %i39, align 4, !tbaa !6
  %38 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %39 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %38, %39
  %cmp41 = icmp slt i32 %37, %mul
  br i1 %cmp41, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond40
  %40 = bitcast i32* %i39 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #14
  br label %for.end56

for.body43:                                       ; preds = %for.cond40
  %41 = load i32, i32* %i39, align 4, !tbaa !6
  %42 = load i32, i32* %i39, align 4, !tbaa !6
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this1, i32 %42)
  store i32 %41, i32* %call44, align 4, !tbaa !6
  %call45 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %43 = load i32, i32* %call45, align 4, !tbaa !6
  %44 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %45 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul46 = mul nsw i32 %44, %45
  %sub47 = sub nsw i32 %43, %mul46
  %46 = load i32, i32* %i39, align 4, !tbaa !6
  %add48 = add nsw i32 %sub47, %46
  %call49 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %47 = load i32, i32* %call49, align 4, !tbaa !6
  %48 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %49 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul50 = mul nsw i32 %48, %49
  %sub51 = sub nsw i32 %47, %mul50
  %50 = load i32, i32* %i39, align 4, !tbaa !6
  %add52 = add nsw i32 %sub51, %50
  %call53 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this1, i32 %add52)
  store i32 %add48, i32* %call53, align 4, !tbaa !6
  br label %for.inc54

for.inc54:                                        ; preds = %for.body43
  %51 = load i32, i32* %i39, align 4, !tbaa !6
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %i39, align 4, !tbaa !6
  br label %for.cond40, !llvm.loop !85

for.end56:                                        ; preds = %for.cond.cleanup42
  %52 = bitcast i32* %i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #14
  %53 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %54 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul58 = mul nsw i32 %53, %54
  store i32 %mul58, i32* %i57, align 4, !tbaa !6
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc70, %for.end56
  %55 = load i32, i32* %i57, align 4, !tbaa !6
  %call60 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %56 = load i32, i32* %call60, align 4, !tbaa !6
  %cmp61 = icmp slt i32 %55, %56
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond59
  %57 = bitcast i32* %i57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #14
  br label %for.end72

for.body63:                                       ; preds = %for.cond59
  %58 = load i32, i32* %i57, align 4, !tbaa !6
  %59 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %60 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul64 = mul nsw i32 %59, %60
  %sub65 = sub nsw i32 %58, %mul64
  %61 = load i32, i32* %i57, align 4, !tbaa !6
  %call66 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this1, i32 %61)
  store i32 %sub65, i32* %call66, align 4, !tbaa !6
  %62 = load i32, i32* %i57, align 4, !tbaa !6
  %63 = load i32, i32* %i57, align 4, !tbaa !6
  %64 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %65 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul67 = mul nsw i32 %64, %65
  %sub68 = sub nsw i32 %63, %mul67
  %call69 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this1, i32 %sub68)
  store i32 %62, i32* %call69, align 4, !tbaa !6
  br label %for.inc70

for.inc70:                                        ; preds = %for.body63
  %66 = load i32, i32* %i57, align 4, !tbaa !6
  %inc71 = add nsw i32 %66, 1
  store i32 %inc71, i32* %i57, align 4, !tbaa !6
  br label %for.cond59, !llvm.loop !86

for.end72:                                        ; preds = %for.cond.cleanup62
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* %this, i32 %edgeElems) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %edgeElems.addr = alloca i32, align 4
  %ghostIdx = alloca [6 x i32], align 16
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %pidx = alloca i32, align 4
  %i52 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %planeInc = alloca i32, align 4
  %rowInc = alloca i32, align 4
  %j = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %edgeElems, i32* %edgeElems.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = bitcast [6 x i32]* %ghostIdx to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #14
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %3 = load i32, i32* %call, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %5)
  store i32 0, i32* %call2, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond.cleanup
  %7 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #14
  store i32 0, i32* %i3, align 4, !tbaa !6
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.end
  %8 = load i32, i32* %i3, align 4, !tbaa !6
  %cmp5 = icmp slt i32 %8, 6
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  %9 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #14
  br label %for.end10

for.body7:                                        ; preds = %for.cond4
  %10 = load i32, i32* %i3, align 4, !tbaa !6
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 %idxprom
  store i32 -2147483648, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %11 = load i32, i32* %i3, align 4, !tbaa !6
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i3, align 4, !tbaa !6
  br label %for.cond4, !llvm.loop !88

for.end10:                                        ; preds = %for.cond.cleanup6
  %12 = bitcast i32* %pidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #14
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %13 = load i32, i32* %call11, align 4, !tbaa !6
  store i32 %13, i32* %pidx, align 4, !tbaa !6
  %m_planeMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 98
  %14 = load i32, i32* %m_planeMin, align 8, !tbaa !62
  %cmp12 = icmp ne i32 %14, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end10
  %15 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  store i32 %15, i32* %arrayidx13, align 16, !tbaa !6
  %call14 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %16 = load i32, i32* %call14, align 4, !tbaa !6
  %call15 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %17 = load i32, i32* %call15, align 4, !tbaa !6
  %mul = mul nsw i32 %16, %17
  %18 = load i32, i32* %pidx, align 4, !tbaa !6
  %add = add nsw i32 %18, %mul
  store i32 %add, i32* %pidx, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end10
  %m_planeMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 99
  %19 = load i32, i32* %m_planeMax, align 4, !tbaa !63
  %cmp16 = icmp ne i32 %19, 0
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end
  %20 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx18 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  store i32 %20, i32* %arrayidx18, align 4, !tbaa !6
  %call19 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %21 = load i32, i32* %call19, align 4, !tbaa !6
  %call20 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %22 = load i32, i32* %call20, align 4, !tbaa !6
  %mul21 = mul nsw i32 %21, %22
  %23 = load i32, i32* %pidx, align 4, !tbaa !6
  %add22 = add nsw i32 %23, %mul21
  store i32 %add22, i32* %pidx, align 4, !tbaa !6
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end
  %m_rowMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 94
  %24 = load i32, i32* %m_rowMin, align 8, !tbaa !58
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end23
  %25 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  store i32 %25, i32* %arrayidx26, align 8, !tbaa !6
  %call27 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %26 = load i32, i32* %call27, align 4, !tbaa !6
  %call28 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %27 = load i32, i32* %call28, align 4, !tbaa !6
  %mul29 = mul nsw i32 %26, %27
  %28 = load i32, i32* %pidx, align 4, !tbaa !6
  %add30 = add nsw i32 %28, %mul29
  store i32 %add30, i32* %pidx, align 4, !tbaa !6
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end23
  %m_rowMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 95
  %29 = load i32, i32* %m_rowMax, align 4, !tbaa !59
  %cmp32 = icmp ne i32 %29, 0
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end31
  %30 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx34 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  store i32 %30, i32* %arrayidx34, align 4, !tbaa !6
  %call35 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this1)
  %31 = load i32, i32* %call35, align 4, !tbaa !6
  %call36 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %32 = load i32, i32* %call36, align 4, !tbaa !6
  %mul37 = mul nsw i32 %31, %32
  %33 = load i32, i32* %pidx, align 4, !tbaa !6
  %add38 = add nsw i32 %33, %mul37
  store i32 %add38, i32* %pidx, align 4, !tbaa !6
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end31
  %m_colMin = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 96
  %34 = load i32, i32* %m_colMin, align 8, !tbaa !60
  %cmp40 = icmp ne i32 %34, 0
  br i1 %cmp40, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end39
  %35 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx42 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  store i32 %35, i32* %arrayidx42, align 16, !tbaa !6
  %call43 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this1)
  %36 = load i32, i32* %call43, align 4, !tbaa !6
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this1)
  %37 = load i32, i32* %call44, align 4, !tbaa !6
  %mul45 = mul nsw i32 %36, %37
  %38 = load i32, i32* %pidx, align 4, !tbaa !6
  %add46 = add nsw i32 %38, %mul45
  store i32 %add46, i32* %pidx, align 4, !tbaa !6
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end39
  %m_colMax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 97
  %39 = load i32, i32* %m_colMax, align 4, !tbaa !61
  %cmp48 = icmp ne i32 %39, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %40 = load i32, i32* %pidx, align 4, !tbaa !6
  %arrayidx50 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  store i32 %40, i32* %arrayidx50, align 4, !tbaa !6
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %41 = bitcast i32* %i52 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #14
  store i32 0, i32* %i52, align 4, !tbaa !6
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc195, %if.end51
  %42 = load i32, i32* %i52, align 4, !tbaa !6
  %43 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp54 = icmp slt i32 %42, %43
  br i1 %cmp54, label %for.body56, label %for.cond.cleanup55

for.cond.cleanup55:                               ; preds = %for.cond53
  store i32 8, i32* %cleanup.dest.slot, align 4
  %44 = bitcast i32* %i52 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #14
  br label %for.end197

for.body56:                                       ; preds = %for.cond53
  %45 = bitcast i32* %planeInc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #14
  %46 = load i32, i32* %i52, align 4, !tbaa !6
  %47 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul57 = mul nsw i32 %46, %47
  %48 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul58 = mul nsw i32 %mul57, %48
  store i32 %mul58, i32* %planeInc, align 4, !tbaa !6
  %49 = bitcast i32* %rowInc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #14
  %50 = load i32, i32* %i52, align 4, !tbaa !6
  %51 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul59 = mul nsw i32 %50, %51
  store i32 %mul59, i32* %rowInc, align 4, !tbaa !6
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #14
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc192, %for.body56
  %53 = load i32, i32* %j, align 4, !tbaa !6
  %54 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %cmp61 = icmp slt i32 %53, %54
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond60
  store i32 11, i32* %cleanup.dest.slot, align 4
  %55 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #14
  br label %for.end194

for.body63:                                       ; preds = %for.cond60
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %56 = load i32, i32* %m_planeLoc, align 4, !tbaa !40
  %cmp64 = icmp eq i32 %56, 0
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %for.body63
  %57 = load i32, i32* %rowInc, align 4, !tbaa !6
  %58 = load i32, i32* %j, align 4, !tbaa !6
  %add66 = add nsw i32 %57, %58
  %call67 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add66)
  %59 = load i32, i32* %call67, align 4, !tbaa !6
  %or = or i32 %59, 4096
  store i32 %or, i32* %call67, align 4, !tbaa !6
  br label %if.end76

if.else:                                          ; preds = %for.body63
  %60 = load i32, i32* %rowInc, align 4, !tbaa !6
  %61 = load i32, i32* %j, align 4, !tbaa !6
  %add68 = add nsw i32 %60, %61
  %call69 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add68)
  %62 = load i32, i32* %call69, align 4, !tbaa !6
  %or70 = or i32 %62, 16384
  store i32 %or70, i32* %call69, align 4, !tbaa !6
  %arrayidx71 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  %63 = load i32, i32* %arrayidx71, align 16, !tbaa !6
  %64 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add72 = add nsw i32 %63, %64
  %65 = load i32, i32* %j, align 4, !tbaa !6
  %add73 = add nsw i32 %add72, %65
  %66 = load i32, i32* %rowInc, align 4, !tbaa !6
  %67 = load i32, i32* %j, align 4, !tbaa !6
  %add74 = add nsw i32 %66, %67
  %call75 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this1, i32 %add74)
  store i32 %add73, i32* %call75, align 4, !tbaa !6
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then65
  %m_planeLoc77 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 83
  %68 = load i32, i32* %m_planeLoc77, align 4, !tbaa !40
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %69 = load i32, i32* %m_tp, align 8, !tbaa !36
  %sub = sub nsw i32 %69, 1
  %cmp78 = icmp eq i32 %68, %sub
  br i1 %cmp78, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.end76
  %70 = load i32, i32* %rowInc, align 4, !tbaa !6
  %71 = load i32, i32* %j, align 4, !tbaa !6
  %add80 = add nsw i32 %70, %71
  %call81 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %72 = load i32, i32* %call81, align 4, !tbaa !6
  %add82 = add nsw i32 %add80, %72
  %73 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %74 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul83 = mul nsw i32 %73, %74
  %sub84 = sub nsw i32 %add82, %mul83
  %call85 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub84)
  %75 = load i32, i32* %call85, align 4, !tbaa !6
  %or86 = or i32 %75, 65536
  store i32 %or86, i32* %call85, align 4, !tbaa !6
  br label %if.end104

if.else87:                                        ; preds = %if.end76
  %76 = load i32, i32* %rowInc, align 4, !tbaa !6
  %77 = load i32, i32* %j, align 4, !tbaa !6
  %add88 = add nsw i32 %76, %77
  %call89 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %78 = load i32, i32* %call89, align 4, !tbaa !6
  %add90 = add nsw i32 %add88, %78
  %79 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %80 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul91 = mul nsw i32 %79, %80
  %sub92 = sub nsw i32 %add90, %mul91
  %call93 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub92)
  %81 = load i32, i32* %call93, align 4, !tbaa !6
  %or94 = or i32 %81, 131072
  store i32 %or94, i32* %call93, align 4, !tbaa !6
  %arrayidx95 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  %82 = load i32, i32* %arrayidx95, align 4, !tbaa !6
  %83 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add96 = add nsw i32 %82, %83
  %84 = load i32, i32* %j, align 4, !tbaa !6
  %add97 = add nsw i32 %add96, %84
  %85 = load i32, i32* %rowInc, align 4, !tbaa !6
  %86 = load i32, i32* %j, align 4, !tbaa !6
  %add98 = add nsw i32 %85, %86
  %call99 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %87 = load i32, i32* %call99, align 4, !tbaa !6
  %add100 = add nsw i32 %add98, %87
  %88 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %89 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul101 = mul nsw i32 %88, %89
  %sub102 = sub nsw i32 %add100, %mul101
  %call103 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this1, i32 %sub102)
  store i32 %add97, i32* %call103, align 4, !tbaa !6
  br label %if.end104

if.end104:                                        ; preds = %if.else87, %if.then79
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %90 = load i32, i32* %m_rowLoc, align 8, !tbaa !39
  %cmp105 = icmp eq i32 %90, 0
  br i1 %cmp105, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.end104
  %91 = load i32, i32* %planeInc, align 4, !tbaa !6
  %92 = load i32, i32* %j, align 4, !tbaa !6
  %add107 = add nsw i32 %91, %92
  %call108 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add107)
  %93 = load i32, i32* %call108, align 4, !tbaa !6
  %or109 = or i32 %93, 64
  store i32 %or109, i32* %call108, align 4, !tbaa !6
  br label %if.end119

if.else110:                                       ; preds = %if.end104
  %94 = load i32, i32* %planeInc, align 4, !tbaa !6
  %95 = load i32, i32* %j, align 4, !tbaa !6
  %add111 = add nsw i32 %94, %95
  %call112 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add111)
  %96 = load i32, i32* %call112, align 4, !tbaa !6
  %or113 = or i32 %96, 256
  store i32 %or113, i32* %call112, align 4, !tbaa !6
  %arrayidx114 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  %97 = load i32, i32* %arrayidx114, align 8, !tbaa !6
  %98 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add115 = add nsw i32 %97, %98
  %99 = load i32, i32* %j, align 4, !tbaa !6
  %add116 = add nsw i32 %add115, %99
  %100 = load i32, i32* %planeInc, align 4, !tbaa !6
  %101 = load i32, i32* %j, align 4, !tbaa !6
  %add117 = add nsw i32 %100, %101
  %call118 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this1, i32 %add117)
  store i32 %add116, i32* %call118, align 4, !tbaa !6
  br label %if.end119

if.end119:                                        ; preds = %if.else110, %if.then106
  %m_rowLoc120 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 82
  %102 = load i32, i32* %m_rowLoc120, align 8, !tbaa !39
  %m_tp121 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %103 = load i32, i32* %m_tp121, align 8, !tbaa !36
  %sub122 = sub nsw i32 %103, 1
  %cmp123 = icmp eq i32 %102, %sub122
  br i1 %cmp123, label %if.then124, label %if.else131

if.then124:                                       ; preds = %if.end119
  %104 = load i32, i32* %planeInc, align 4, !tbaa !6
  %105 = load i32, i32* %j, align 4, !tbaa !6
  %add125 = add nsw i32 %104, %105
  %106 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %107 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul126 = mul nsw i32 %106, %107
  %add127 = add nsw i32 %add125, %mul126
  %108 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub128 = sub nsw i32 %add127, %108
  %call129 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub128)
  %109 = load i32, i32* %call129, align 4, !tbaa !6
  %or130 = or i32 %109, 1024
  store i32 %or130, i32* %call129, align 4, !tbaa !6
  br label %if.end146

if.else131:                                       ; preds = %if.end119
  %110 = load i32, i32* %planeInc, align 4, !tbaa !6
  %111 = load i32, i32* %j, align 4, !tbaa !6
  %add132 = add nsw i32 %110, %111
  %112 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %113 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul133 = mul nsw i32 %112, %113
  %add134 = add nsw i32 %add132, %mul133
  %114 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub135 = sub nsw i32 %add134, %114
  %call136 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub135)
  %115 = load i32, i32* %call136, align 4, !tbaa !6
  %or137 = or i32 %115, 2048
  store i32 %or137, i32* %call136, align 4, !tbaa !6
  %arrayidx138 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  %116 = load i32, i32* %arrayidx138, align 4, !tbaa !6
  %117 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add139 = add nsw i32 %116, %117
  %118 = load i32, i32* %j, align 4, !tbaa !6
  %add140 = add nsw i32 %add139, %118
  %119 = load i32, i32* %planeInc, align 4, !tbaa !6
  %120 = load i32, i32* %j, align 4, !tbaa !6
  %add141 = add nsw i32 %119, %120
  %121 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %122 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul142 = mul nsw i32 %121, %122
  %add143 = add nsw i32 %add141, %mul142
  %123 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %sub144 = sub nsw i32 %add143, %123
  %call145 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this1, i32 %sub144)
  store i32 %add140, i32* %call145, align 4, !tbaa !6
  br label %if.end146

if.end146:                                        ; preds = %if.else131, %if.then124
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %124 = load i32, i32* %m_colLoc, align 4, !tbaa !38
  %cmp147 = icmp eq i32 %124, 0
  br i1 %cmp147, label %if.then148, label %if.else153

if.then148:                                       ; preds = %if.end146
  %125 = load i32, i32* %planeInc, align 4, !tbaa !6
  %126 = load i32, i32* %j, align 4, !tbaa !6
  %127 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul149 = mul nsw i32 %126, %127
  %add150 = add nsw i32 %125, %mul149
  %call151 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add150)
  %128 = load i32, i32* %call151, align 4, !tbaa !6
  %or152 = or i32 %128, 1
  store i32 %or152, i32* %call151, align 4, !tbaa !6
  br label %if.end164

if.else153:                                       ; preds = %if.end146
  %129 = load i32, i32* %planeInc, align 4, !tbaa !6
  %130 = load i32, i32* %j, align 4, !tbaa !6
  %131 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul154 = mul nsw i32 %130, %131
  %add155 = add nsw i32 %129, %mul154
  %call156 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %add155)
  %132 = load i32, i32* %call156, align 4, !tbaa !6
  %or157 = or i32 %132, 4
  store i32 %or157, i32* %call156, align 4, !tbaa !6
  %arrayidx158 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  %133 = load i32, i32* %arrayidx158, align 16, !tbaa !6
  %134 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add159 = add nsw i32 %133, %134
  %135 = load i32, i32* %j, align 4, !tbaa !6
  %add160 = add nsw i32 %add159, %135
  %136 = load i32, i32* %planeInc, align 4, !tbaa !6
  %137 = load i32, i32* %j, align 4, !tbaa !6
  %138 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul161 = mul nsw i32 %137, %138
  %add162 = add nsw i32 %136, %mul161
  %call163 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this1, i32 %add162)
  store i32 %add160, i32* %call163, align 4, !tbaa !6
  br label %if.end164

if.end164:                                        ; preds = %if.else153, %if.then148
  %m_colLoc165 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 81
  %139 = load i32, i32* %m_colLoc165, align 4, !tbaa !38
  %m_tp166 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 84
  %140 = load i32, i32* %m_tp166, align 8, !tbaa !36
  %sub167 = sub nsw i32 %140, 1
  %cmp168 = icmp eq i32 %139, %sub167
  br i1 %cmp168, label %if.then169, label %if.else176

if.then169:                                       ; preds = %if.end164
  %141 = load i32, i32* %planeInc, align 4, !tbaa !6
  %142 = load i32, i32* %j, align 4, !tbaa !6
  %143 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul170 = mul nsw i32 %142, %143
  %add171 = add nsw i32 %141, %mul170
  %144 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %add172 = add nsw i32 %add171, %144
  %sub173 = sub nsw i32 %add172, 1
  %call174 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub173)
  %145 = load i32, i32* %call174, align 4, !tbaa !6
  %or175 = or i32 %145, 16
  store i32 %or175, i32* %call174, align 4, !tbaa !6
  br label %if.end191

if.else176:                                       ; preds = %if.end164
  %146 = load i32, i32* %planeInc, align 4, !tbaa !6
  %147 = load i32, i32* %j, align 4, !tbaa !6
  %148 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul177 = mul nsw i32 %147, %148
  %add178 = add nsw i32 %146, %mul177
  %149 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %add179 = add nsw i32 %add178, %149
  %sub180 = sub nsw i32 %add179, 1
  %call181 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this1, i32 %sub180)
  %150 = load i32, i32* %call181, align 4, !tbaa !6
  %or182 = or i32 %150, 32
  store i32 %or182, i32* %call181, align 4, !tbaa !6
  %arrayidx183 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  %151 = load i32, i32* %arrayidx183, align 4, !tbaa !6
  %152 = load i32, i32* %rowInc, align 4, !tbaa !6
  %add184 = add nsw i32 %151, %152
  %153 = load i32, i32* %j, align 4, !tbaa !6
  %add185 = add nsw i32 %add184, %153
  %154 = load i32, i32* %planeInc, align 4, !tbaa !6
  %155 = load i32, i32* %j, align 4, !tbaa !6
  %156 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %mul186 = mul nsw i32 %155, %156
  %add187 = add nsw i32 %154, %mul186
  %157 = load i32, i32* %edgeElems.addr, align 4, !tbaa !6
  %add188 = add nsw i32 %add187, %157
  %sub189 = sub nsw i32 %add188, 1
  %call190 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this1, i32 %sub189)
  store i32 %add185, i32* %call190, align 4, !tbaa !6
  br label %if.end191

if.end191:                                        ; preds = %if.else176, %if.then169
  br label %for.inc192

for.inc192:                                       ; preds = %if.end191
  %158 = load i32, i32* %j, align 4, !tbaa !6
  %inc193 = add nsw i32 %158, 1
  store i32 %inc193, i32* %j, align 4, !tbaa !6
  br label %for.cond60, !llvm.loop !89

for.end194:                                       ; preds = %for.cond.cleanup62
  %159 = bitcast i32* %rowInc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #14
  %160 = bitcast i32* %planeInc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #14
  br label %for.inc195

for.inc195:                                       ; preds = %for.end194
  %161 = load i32, i32* %i52, align 4, !tbaa !6
  %inc196 = add nsw i32 %161, 1
  store i32 %inc196, i32* %i52, align 4, !tbaa !6
  br label %for.cond53, !llvm.loop !90

for.end197:                                       ; preds = %for.cond.cleanup55
  %162 = bitcast i32* %pidx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %162) #14
  %163 = bitcast [6 x i32]* %ghostIdx to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %163) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtfixed = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 73
  ret double* %m_dtfixed
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_stoptime = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 79
  ret double* %m_stoptime
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatimemultlb = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 76
  ret double* %m_deltatimemultlb
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatimemultub = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 77
  ret double* %m_deltatimemultub
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtcourant = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 70
  ret double* %m_dtcourant
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dthydro = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 71
  ret double* %m_dthydro
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_dtmax = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 78
  ret double* %m_dtmax
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_time = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 74
  ret double* %m_time
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_cycle = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 72
  ret i32* %m_cycle
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %mul = mul nsw i32 8, %0
  %conv = sext i32 %mul to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_nodelist, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_x, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_y, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_z, i64 %conv) #14
  ret double* %call
}

declare dso_local double @_Z14CalcElemVolumePKdS0_S0_(double*, double*, double*) #5

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_volo, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_elemMass, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind readnone
declare dso_local double @cbrt(double) #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_deltatime = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 75
  ret double* %m_deltatime
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !91
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load double*, double** %_M_finish, align 8, !tbaa !94
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %1, double* %3, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %5) #14
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %9) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %5) #14
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %9) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN6DomainD2Ev(%class.Domain* %this) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %i = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 19
  %0 = load i32*, i32** %m_regNumList, align 8, !tbaa !13
  %isnull = icmp eq i32* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @_ZdaPv(i8* %1) #18
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %2 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !34
  %isnull2 = icmp eq i32* %2, null
  br i1 %isnull2, label %delete.end4, label %delete.notnull3

delete.notnull3:                                  ; preds = %delete.end
  %3 = bitcast i32* %2 to i8*
  call void @_ZdaPv(i8* %3) #18
  br label %delete.end4

delete.end4:                                      ; preds = %delete.notnull3, %delete.end
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  %4 = load i32*, i32** %m_nodeElemCornerList, align 8, !tbaa !35
  %isnull5 = icmp eq i32* %4, null
  br i1 %isnull5, label %delete.end7, label %delete.notnull6

delete.notnull6:                                  ; preds = %delete.end4
  %5 = bitcast i32* %4 to i8*
  call void @_ZdaPv(i8* %5) #18
  br label %delete.end7

delete.end7:                                      ; preds = %delete.notnull6, %delete.end4
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 18
  %6 = load i32*, i32** %m_regElemSize, align 8, !tbaa !8
  %isnull8 = icmp eq i32* %6, null
  br i1 %isnull8, label %delete.end10, label %delete.notnull9

delete.notnull9:                                  ; preds = %delete.end7
  %7 = bitcast i32* %6 to i8*
  call void @_ZdaPv(i8* %7) #18
  br label %delete.end10

delete.end10:                                     ; preds = %delete.notnull9, %delete.end7
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %delete.end10
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %call = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %10 = load i32, i32* %call, align 4, !tbaa !6
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %invoke.cont
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #14
  br label %for.end

lpad:                                             ; preds = %for.cond
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #14
  %m_elemMass18 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass18) #14
  %m_ss19 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss19) #14
  %m_arealg20 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg20) #14
  %m_vdov21 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov21) #14
  %m_delv22 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv22) #14
  %m_vnew23 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew23) #14
  %m_volo24 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo24) #14
  %m_v25 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v25) #14
  %m_qq26 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq26) #14
  %m_ql27 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql27) #14
  %m_q28 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q28) #14
  %m_p29 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p29) #14
  %m_e30 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e30) #14
  %m_elemBC31 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC31) #14
  %m_lzetap32 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap32) #14
  %m_lzetam33 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam33) #14
  %m_letap34 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap34) #14
  %m_letam35 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam35) #14
  %m_lxip36 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip36) #14
  %m_lxim37 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim37) #14
  %m_nodelist38 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist38) #14
  %m_symmZ39 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ39) #14
  %m_symmY40 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY40) #14
  %m_symmX41 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX41) #14
  %m_nodalMass42 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass42) #14
  %m_fz43 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz43) #14
  %m_fy44 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy44) #14
  %m_fx45 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx45) #14
  %m_zdd46 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd46) #14
  %m_ydd47 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd47) #14
  %m_xdd48 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd48) #14
  %m_zd49 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd49) #14
  %m_yd50 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd50) #14
  %m_xd51 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd51) #14
  %m_z52 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z52) #14
  %m_y53 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y53) #14
  %m_x54 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x54) #14
  br label %terminate.handler

for.body:                                         ; preds = %invoke.cont
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %16 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !14
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %16, i64 %idxprom
  %18 = load i32*, i32** %arrayidx, align 8, !tbaa !2
  %isnull11 = icmp eq i32* %18, null
  br i1 %isnull11, label %delete.end13, label %delete.notnull12

delete.notnull12:                                 ; preds = %for.body
  %19 = bitcast i32* %18 to i8*
  call void @_ZdaPv(i8* %19) #18
  br label %delete.end13

delete.end13:                                     ; preds = %delete.notnull12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %delete.end13
  %20 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond.cleanup
  %m_regElemlist14 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %21 = load i32**, i32*** %m_regElemlist14, align 8, !tbaa !14
  %isnull15 = icmp eq i32** %21, null
  br i1 %isnull15, label %delete.end17, label %delete.notnull16

delete.notnull16:                                 ; preds = %for.end
  %22 = bitcast i32** %21 to i8*
  call void @_ZdaPv(i8* %22) #18
  br label %delete.end17

delete.end17:                                     ; preds = %delete.notnull16, %for.end
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass) #14
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss) #14
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg) #14
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov) #14
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv) #14
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew) #14
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo) #14
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v) #14
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq) #14
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql) #14
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q) #14
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p) #14
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e) #14
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC) #14
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap) #14
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam) #14
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap) #14
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam) #14
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip) #14
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim) #14
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist) #14
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ) #14
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY) #14
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX) #14
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass) #14
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz) #14
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy) #14
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx) #14
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd) #14
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd) #14
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd) #14
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd) #14
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd) #14
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd) #14
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z) #14
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y) #14
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x) #14
  ret void

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_numReg = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 16
  ret i32* %m_numReg
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #17
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: uwtable
define dso_local void @_ZN6Domain28SetupThreadSupportStructuresEv(%class.Domain* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %numthreads = alloca i32, align 4
  %nodeElemCount = alloca i32*, align 8
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nl = alloca i32*, align 8
  %j = alloca i32, align 4
  %i32 = alloca i32, align 4
  %i57 = alloca i32, align 4
  %i68 = alloca i32, align 4
  %nl74 = alloca i32*, align 8
  %j76 = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %offset = alloca i32, align 4
  %clSize = alloca i32, align 4
  %i106 = alloca i32, align 4
  %clv = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %0 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  store i32 1, i32* %numthreads, align 4, !tbaa !6
  %1 = load i32, i32* %numthreads, align 4, !tbaa !6
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end123

if.then:                                          ; preds = %entry
  %2 = bitcast i32** %nodeElemCount to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %3 = load i32, i32* %call, align 4, !tbaa !6
  %conv = sext i32 %3 to i64
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %call2 = call noalias nonnull i8* @_Znam(i64 %7) #15
  %8 = bitcast i8* %call2 to i32*
  store i32* %8, i32** %nodeElemCount, align 8, !tbaa !2
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #14
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %11 = load i32, i32* %call3, align 4, !tbaa !6
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %14 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond, !llvm.loop !100

for.end:                                          ; preds = %for.cond.cleanup
  %16 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #14
  store i32 0, i32* %i5, align 4, !tbaa !6
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc24, %for.end
  %17 = load i32, i32* %i5, align 4, !tbaa !6
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %18 = load i32, i32* %call7, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond6
  store i32 5, i32* %cleanup.dest.slot, align 4
  %19 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #14
  br label %for.end26

for.body10:                                       ; preds = %for.cond6
  %20 = bitcast i32** %nl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #14
  %21 = load i32, i32* %i5, align 4, !tbaa !6
  %call11 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this1, i32 %21)
  store i32* %call11, i32** %nl, align 8, !tbaa !2
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #14
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %for.body10
  %23 = load i32, i32* %j, align 4, !tbaa !6
  %cmp13 = icmp slt i32 %23, 8
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  store i32 8, i32* %cleanup.dest.slot, align 4
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #14
  br label %for.end23

for.body15:                                       ; preds = %for.cond12
  %25 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %26 = load i32*, i32** %nl, align 8, !tbaa !2
  %27 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom16 = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %26, i64 %idxprom16
  %28 = load i32, i32* %arrayidx17, align 4, !tbaa !6
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 %idxprom18
  %29 = load i32, i32* %arrayidx19, align 4, !tbaa !6
  %inc20 = add nsw i32 %29, 1
  store i32 %inc20, i32* %arrayidx19, align 4, !tbaa !6
  br label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %30 = load i32, i32* %j, align 4, !tbaa !6
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, i32* %j, align 4, !tbaa !6
  br label %for.cond12, !llvm.loop !101

for.end23:                                        ; preds = %for.cond.cleanup14
  %31 = bitcast i32** %nl to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #14
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %32 = load i32, i32* %i5, align 4, !tbaa !6
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, i32* %i5, align 4, !tbaa !6
  br label %for.cond6, !llvm.loop !102

for.end26:                                        ; preds = %for.cond.cleanup9
  %call27 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %33 = load i32, i32* %call27, align 4, !tbaa !6
  %add = add nsw i32 %33, 1
  %conv28 = sext i32 %add to i64
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv28, i64 4)
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  %37 = select i1 %35, i64 -1, i64 %36
  %call29 = call noalias nonnull i8* @_Znam(i64 %37) #15
  %38 = bitcast i8* %call29 to i32*
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  store i32* %38, i32** %m_nodeElemStart, align 8, !tbaa !34
  %m_nodeElemStart30 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %39 = load i32*, i32** %m_nodeElemStart30, align 8, !tbaa !34
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %arrayidx31, align 4, !tbaa !6
  %40 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #14
  store i32 1, i32* %i32, align 4, !tbaa !6
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc48, %for.end26
  %41 = load i32, i32* %i32, align 4, !tbaa !6
  %call34 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %42 = load i32, i32* %call34, align 4, !tbaa !6
  %cmp35 = icmp sle i32 %41, %42
  br i1 %cmp35, label %for.body37, label %for.cond.cleanup36

for.cond.cleanup36:                               ; preds = %for.cond33
  store i32 11, i32* %cleanup.dest.slot, align 4
  %43 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #14
  br label %for.end50

for.body37:                                       ; preds = %for.cond33
  %m_nodeElemStart38 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %44 = load i32*, i32** %m_nodeElemStart38, align 8, !tbaa !34
  %45 = load i32, i32* %i32, align 4, !tbaa !6
  %sub = sub nsw i32 %45, 1
  %idxprom39 = sext i32 %sub to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %44, i64 %idxprom39
  %46 = load i32, i32* %arrayidx40, align 4, !tbaa !6
  %47 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %48 = load i32, i32* %i32, align 4, !tbaa !6
  %sub41 = sub nsw i32 %48, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %47, i64 %idxprom42
  %49 = load i32, i32* %arrayidx43, align 4, !tbaa !6
  %add44 = add nsw i32 %46, %49
  %m_nodeElemStart45 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %50 = load i32*, i32** %m_nodeElemStart45, align 8, !tbaa !34
  %51 = load i32, i32* %i32, align 4, !tbaa !6
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %50, i64 %idxprom46
  store i32 %add44, i32* %arrayidx47, align 4, !tbaa !6
  br label %for.inc48

for.inc48:                                        ; preds = %for.body37
  %52 = load i32, i32* %i32, align 4, !tbaa !6
  %inc49 = add nsw i32 %52, 1
  store i32 %inc49, i32* %i32, align 4, !tbaa !6
  br label %for.cond33, !llvm.loop !103

for.end50:                                        ; preds = %for.cond.cleanup36
  %m_nodeElemStart51 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %53 = load i32*, i32** %m_nodeElemStart51, align 8, !tbaa !34
  %call52 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %54 = load i32, i32* %call52, align 4, !tbaa !6
  %idxprom53 = sext i32 %54 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %53, i64 %idxprom53
  %55 = load i32, i32* %arrayidx54, align 4, !tbaa !6
  %conv55 = sext i32 %55 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv55, i64 4)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %call56 = call noalias nonnull i8* @_Znam(i64 %59) #15
  %60 = bitcast i8* %call56 to i32*
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  store i32* %60, i32** %m_nodeElemCornerList, align 8, !tbaa !35
  %61 = bitcast i32* %i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %61) #14
  store i32 0, i32* %i57, align 4, !tbaa !6
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc65, %for.end50
  %62 = load i32, i32* %i57, align 4, !tbaa !6
  %call59 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %63 = load i32, i32* %call59, align 4, !tbaa !6
  %cmp60 = icmp slt i32 %62, %63
  br i1 %cmp60, label %for.body62, label %for.cond.cleanup61

for.cond.cleanup61:                               ; preds = %for.cond58
  store i32 14, i32* %cleanup.dest.slot, align 4
  %64 = bitcast i32* %i57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #14
  br label %for.end67

for.body62:                                       ; preds = %for.cond58
  %65 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %66 = load i32, i32* %i57, align 4, !tbaa !6
  %idxprom63 = sext i32 %66 to i64
  %arrayidx64 = getelementptr inbounds i32, i32* %65, i64 %idxprom63
  store i32 0, i32* %arrayidx64, align 4, !tbaa !6
  br label %for.inc65

for.inc65:                                        ; preds = %for.body62
  %67 = load i32, i32* %i57, align 4, !tbaa !6
  %inc66 = add nsw i32 %67, 1
  store i32 %inc66, i32* %i57, align 4, !tbaa !6
  br label %for.cond58, !llvm.loop !104

for.end67:                                        ; preds = %for.cond.cleanup61
  %68 = bitcast i32* %i68 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %68) #14
  store i32 0, i32* %i68, align 4, !tbaa !6
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc99, %for.end67
  %69 = load i32, i32* %i68, align 4, !tbaa !6
  %call70 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %70 = load i32, i32* %call70, align 4, !tbaa !6
  %cmp71 = icmp slt i32 %69, %70
  br i1 %cmp71, label %for.body73, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond69
  store i32 17, i32* %cleanup.dest.slot, align 4
  %71 = bitcast i32* %i68 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #14
  br label %for.end101

for.body73:                                       ; preds = %for.cond69
  %72 = bitcast i32** %nl74 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %72) #14
  %73 = load i32, i32* %i68, align 4, !tbaa !6
  %call75 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this1, i32 %73)
  store i32* %call75, i32** %nl74, align 8, !tbaa !2
  %74 = bitcast i32* %j76 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %74) #14
  store i32 0, i32* %j76, align 4, !tbaa !6
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc96, %for.body73
  %75 = load i32, i32* %j76, align 4, !tbaa !6
  %cmp78 = icmp slt i32 %75, 8
  br i1 %cmp78, label %for.body80, label %for.cond.cleanup79

for.cond.cleanup79:                               ; preds = %for.cond77
  store i32 20, i32* %cleanup.dest.slot, align 4
  %76 = bitcast i32* %j76 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #14
  br label %for.end98

for.body80:                                       ; preds = %for.cond77
  %77 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %77) #14
  %78 = load i32*, i32** %nl74, align 8, !tbaa !2
  %79 = load i32, i32* %j76, align 4, !tbaa !6
  %idxprom81 = sext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %78, i64 %idxprom81
  %80 = load i32, i32* %arrayidx82, align 4, !tbaa !6
  store i32 %80, i32* %m, align 4, !tbaa !6
  %81 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %81) #14
  %82 = load i32, i32* %i68, align 4, !tbaa !6
  %mul = mul nsw i32 %82, 8
  %83 = load i32, i32* %j76, align 4, !tbaa !6
  %add83 = add nsw i32 %mul, %83
  store i32 %add83, i32* %k, align 4, !tbaa !6
  %84 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %84) #14
  %m_nodeElemStart84 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %85 = load i32*, i32** %m_nodeElemStart84, align 8, !tbaa !34
  %86 = load i32, i32* %m, align 4, !tbaa !6
  %idxprom85 = sext i32 %86 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %85, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4, !tbaa !6
  %88 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %89 = load i32, i32* %m, align 4, !tbaa !6
  %idxprom87 = sext i32 %89 to i64
  %arrayidx88 = getelementptr inbounds i32, i32* %88, i64 %idxprom87
  %90 = load i32, i32* %arrayidx88, align 4, !tbaa !6
  %add89 = add nsw i32 %87, %90
  store i32 %add89, i32* %offset, align 4, !tbaa !6
  %91 = load i32, i32* %k, align 4, !tbaa !6
  %m_nodeElemCornerList90 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  %92 = load i32*, i32** %m_nodeElemCornerList90, align 8, !tbaa !35
  %93 = load i32, i32* %offset, align 4, !tbaa !6
  %idxprom91 = sext i32 %93 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %92, i64 %idxprom91
  store i32 %91, i32* %arrayidx92, align 4, !tbaa !6
  %94 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %95 = load i32, i32* %m, align 4, !tbaa !6
  %idxprom93 = sext i32 %95 to i64
  %arrayidx94 = getelementptr inbounds i32, i32* %94, i64 %idxprom93
  %96 = load i32, i32* %arrayidx94, align 4, !tbaa !6
  %inc95 = add nsw i32 %96, 1
  store i32 %inc95, i32* %arrayidx94, align 4, !tbaa !6
  %97 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %97) #14
  %98 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #14
  %99 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #14
  br label %for.inc96

for.inc96:                                        ; preds = %for.body80
  %100 = load i32, i32* %j76, align 4, !tbaa !6
  %inc97 = add nsw i32 %100, 1
  store i32 %inc97, i32* %j76, align 4, !tbaa !6
  br label %for.cond77, !llvm.loop !105

for.end98:                                        ; preds = %for.cond.cleanup79
  %101 = bitcast i32** %nl74 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %101) #14
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %102 = load i32, i32* %i68, align 4, !tbaa !6
  %inc100 = add nsw i32 %102, 1
  store i32 %inc100, i32* %i68, align 4, !tbaa !6
  br label %for.cond69, !llvm.loop !106

for.end101:                                       ; preds = %for.cond.cleanup72
  %103 = bitcast i32* %clSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %103) #14
  %m_nodeElemStart102 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 92
  %104 = load i32*, i32** %m_nodeElemStart102, align 8, !tbaa !34
  %call103 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this1)
  %105 = load i32, i32* %call103, align 4, !tbaa !6
  %idxprom104 = sext i32 %105 to i64
  %arrayidx105 = getelementptr inbounds i32, i32* %104, i64 %idxprom104
  %106 = load i32, i32* %arrayidx105, align 4, !tbaa !6
  store i32 %106, i32* %clSize, align 4, !tbaa !6
  %107 = bitcast i32* %i106 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107) #14
  store i32 0, i32* %i106, align 4, !tbaa !6
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc120, %for.end101
  %108 = load i32, i32* %i106, align 4, !tbaa !6
  %109 = load i32, i32* %clSize, align 4, !tbaa !6
  %cmp108 = icmp slt i32 %108, %109
  br i1 %cmp108, label %for.body110, label %for.cond.cleanup109

for.cond.cleanup109:                              ; preds = %for.cond107
  store i32 23, i32* %cleanup.dest.slot, align 4
  %110 = bitcast i32* %i106 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #14
  br label %for.end122

for.body110:                                      ; preds = %for.cond107
  %111 = bitcast i32* %clv to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %111) #14
  %m_nodeElemCornerList111 = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 93
  %112 = load i32*, i32** %m_nodeElemCornerList111, align 8, !tbaa !35
  %113 = load i32, i32* %i106, align 4, !tbaa !6
  %idxprom112 = sext i32 %113 to i64
  %arrayidx113 = getelementptr inbounds i32, i32* %112, i64 %idxprom112
  %114 = load i32, i32* %arrayidx113, align 4, !tbaa !6
  store i32 %114, i32* %clv, align 4, !tbaa !6
  %115 = load i32, i32* %clv, align 4, !tbaa !6
  %cmp114 = icmp slt i32 %115, 0
  br i1 %cmp114, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body110
  %116 = load i32, i32* %clv, align 4, !tbaa !6
  %call115 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this1)
  %117 = load i32, i32* %call115, align 4, !tbaa !6
  %mul116 = mul nsw i32 %117, 8
  %cmp117 = icmp sgt i32 %116, %mul116
  br i1 %cmp117, label %if.then118, label %if.end

if.then118:                                       ; preds = %lor.lhs.false, %for.body110
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %119 = bitcast i32* %clv to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #14
  br label %for.inc120

for.inc120:                                       ; preds = %if.end
  %120 = load i32, i32* %i106, align 4, !tbaa !6
  %inc121 = add nsw i32 %120, 1
  store i32 %inc121, i32* %i106, align 4, !tbaa !6
  br label %for.cond107, !llvm.loop !107

for.end122:                                       ; preds = %for.cond.cleanup109
  %121 = load i32*, i32** %nodeElemCount, align 8, !tbaa !2
  %isnull = icmp eq i32* %121, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end122
  %122 = bitcast i32* %121 to i8*
  call void @_ZdaPv(i8* %122) #18
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end122
  %123 = bitcast i32* %clSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #14
  %124 = bitcast i32** %nodeElemCount to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %124) #14
  br label %if.end123

if.end123:                                        ; preds = %delete.end, %entry
  %125 = bitcast i32* %numthreads to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #14
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #10

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeX = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 85
  ret i32* %m_sizeX
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeY = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 86
  ret i32* %m_sizeY
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_sizeZ = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 87
  ret i32* %m_sizeZ
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %this, i64 %__new_size) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__new_size.addr = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i64 %__new_size, i64* %__new_size.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %sub = sub i64 %1, %call2
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* %this1, i64 %sub)
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %cmp4 = icmp ult i64 %2, %call3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %4 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %5 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5
  call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* %this1, i32* %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 19
  %0 = load i32*, i32** %m_regNumList, align 8, !tbaa !13
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  ret i32* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 18
  %0 = load i32*, i32** %m_regElemSize, align 8, !tbaa !8
  %1 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  ret i32* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %__x, i32 %__y) #11 comdat {
entry:
  %__x.addr = alloca i32, align 4
  %__y.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4, !tbaa !6
  store i32 %__y, i32* %__y.addr, align 4, !tbaa !6
  %0 = load i32, i32* %__x.addr, align 4, !tbaa !6
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %__y.addr, align 4, !tbaa !6
  %conv1 = sitofp i32 %1 to double
  %call = call double @pow(double %conv, double %conv1) #14
  ret double %call
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this, i32 %r, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %r.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %r, i32* %r.addr, align 4, !tbaa !6
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 20
  %0 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !14
  %1 = load i32, i32* %r.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8, !tbaa !2
  %3 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %2, i64 %idxprom2
  ret i32* %arrayidx3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %this, i64 %__n) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %2
  ret i32* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 22
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxim, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 23
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxip, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 24
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letam, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 25
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letap, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 26
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetam, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 27
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetap, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Domain*, align 8
  %idx.addr = alloca i32, align 4
  store %class.Domain* %this, %class.Domain** %this.addr, align 8, !tbaa !2
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !6
  %this1 = load %class.Domain*, %class.Domain** %this.addr, align 8
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this1, i32 0, i32 28
  %0 = load i32, i32* %idx.addr, align 4, !tbaa !6
  %conv = sext i32 %0 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_elemBC, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: uwtable
define dso_local void @_Z14InitMeshDecompiiPiS_S_S_(i32 %numRanks, i32 %myRank, i32* %col, i32* %row, i32* %plane, i32* %side) #0 {
entry:
  %numRanks.addr = alloca i32, align 4
  %myRank.addr = alloca i32, align 4
  %col.addr = alloca i32*, align 8
  %row.addr = alloca i32*, align 8
  %plane.addr = alloca i32*, align 8
  %side.addr = alloca i32*, align 8
  %testProcs = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %myDom = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i32 %numRanks, i32* %numRanks.addr, align 4, !tbaa !6
  store i32 %myRank, i32* %myRank.addr, align 4, !tbaa !6
  store i32* %col, i32** %col.addr, align 8, !tbaa !2
  store i32* %row, i32** %row.addr, align 8, !tbaa !2
  store i32* %plane, i32** %plane.addr, align 8, !tbaa !2
  store i32* %side, i32** %side.addr, align 8, !tbaa !2
  %0 = bitcast i32* %testProcs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %1 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #14
  %2 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #14
  %3 = bitcast i32* %dz to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #14
  %4 = bitcast i32* %myDom to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #14
  %5 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %conv = sitofp i32 %5 to double
  %call = call double @cbrt(double %conv) #16
  %add = fadd double %call, 5.000000e-01
  %conv1 = fptosi double %add to i32
  store i32 %conv1, i32* %testProcs, align 4, !tbaa !6
  %6 = load i32, i32* %testProcs, align 4, !tbaa !6
  %7 = load i32, i32* %testProcs, align 4, !tbaa !6
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %testProcs, align 4, !tbaa !6
  %mul2 = mul nsw i32 %mul, %8
  %9 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %cmp = icmp ne i32 %mul2, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %testProcs, align 4, !tbaa !6
  store i32 %10, i32* %dx, align 4, !tbaa !6
  %11 = load i32, i32* %testProcs, align 4, !tbaa !6
  store i32 %11, i32* %dy, align 4, !tbaa !6
  %12 = load i32, i32* %testProcs, align 4, !tbaa !6
  store i32 %12, i32* %dz, align 4, !tbaa !6
  %13 = load i32, i32* %dx, align 4, !tbaa !6
  %14 = load i32, i32* %dy, align 4, !tbaa !6
  %mul4 = mul nsw i32 %13, %14
  %15 = load i32, i32* %dz, align 4, !tbaa !6
  %mul5 = mul nsw i32 %mul4, %15
  %16 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %cmp6 = icmp ne i32 %mul5, %16
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 -1) #17
  unreachable

if.end9:                                          ; preds = %if.end
  %17 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #14
  %18 = load i32, i32* %dx, align 4, !tbaa !6
  %19 = load i32, i32* %dy, align 4, !tbaa !6
  %mul10 = mul nsw i32 %18, %19
  %20 = load i32, i32* %dz, align 4, !tbaa !6
  %mul11 = mul nsw i32 %mul10, %20
  %21 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %rem = srem i32 %mul11, %21
  store i32 %rem, i32* %remainder, align 4, !tbaa !6
  %22 = load i32, i32* %myRank.addr, align 4, !tbaa !6
  %23 = load i32, i32* %remainder, align 4, !tbaa !6
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %24 = load i32, i32* %myRank.addr, align 4, !tbaa !6
  %25 = load i32, i32* %dx, align 4, !tbaa !6
  %26 = load i32, i32* %dy, align 4, !tbaa !6
  %mul14 = mul nsw i32 %25, %26
  %27 = load i32, i32* %dz, align 4, !tbaa !6
  %mul15 = mul nsw i32 %mul14, %27
  %28 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %div = sdiv i32 %mul15, %28
  %add16 = add nsw i32 1, %div
  %mul17 = mul nsw i32 %24, %add16
  store i32 %mul17, i32* %myDom, align 4, !tbaa !6
  br label %if.end28

if.else:                                          ; preds = %if.end9
  %29 = load i32, i32* %remainder, align 4, !tbaa !6
  %30 = load i32, i32* %dx, align 4, !tbaa !6
  %31 = load i32, i32* %dy, align 4, !tbaa !6
  %mul18 = mul nsw i32 %30, %31
  %32 = load i32, i32* %dz, align 4, !tbaa !6
  %mul19 = mul nsw i32 %mul18, %32
  %33 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %div20 = sdiv i32 %mul19, %33
  %add21 = add nsw i32 1, %div20
  %mul22 = mul nsw i32 %29, %add21
  %34 = load i32, i32* %myRank.addr, align 4, !tbaa !6
  %35 = load i32, i32* %remainder, align 4, !tbaa !6
  %sub = sub nsw i32 %34, %35
  %36 = load i32, i32* %dx, align 4, !tbaa !6
  %37 = load i32, i32* %dy, align 4, !tbaa !6
  %mul23 = mul nsw i32 %36, %37
  %38 = load i32, i32* %dz, align 4, !tbaa !6
  %mul24 = mul nsw i32 %mul23, %38
  %39 = load i32, i32* %numRanks.addr, align 4, !tbaa !6
  %div25 = sdiv i32 %mul24, %39
  %mul26 = mul nsw i32 %sub, %div25
  %add27 = add nsw i32 %mul22, %mul26
  store i32 %add27, i32* %myDom, align 4, !tbaa !6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  %40 = load i32, i32* %myDom, align 4, !tbaa !6
  %41 = load i32, i32* %dx, align 4, !tbaa !6
  %rem29 = srem i32 %40, %41
  %42 = load i32*, i32** %col.addr, align 8, !tbaa !2
  store i32 %rem29, i32* %42, align 4, !tbaa !6
  %43 = load i32, i32* %myDom, align 4, !tbaa !6
  %44 = load i32, i32* %dx, align 4, !tbaa !6
  %div30 = sdiv i32 %43, %44
  %45 = load i32, i32* %dy, align 4, !tbaa !6
  %rem31 = srem i32 %div30, %45
  %46 = load i32*, i32** %row.addr, align 8, !tbaa !2
  store i32 %rem31, i32* %46, align 4, !tbaa !6
  %47 = load i32, i32* %myDom, align 4, !tbaa !6
  %48 = load i32, i32* %dx, align 4, !tbaa !6
  %49 = load i32, i32* %dy, align 4, !tbaa !6
  %mul32 = mul nsw i32 %48, %49
  %div33 = sdiv i32 %47, %mul32
  %50 = load i32*, i32** %plane.addr, align 8, !tbaa !2
  store i32 %div33, i32* %50, align 4, !tbaa !6
  %51 = load i32, i32* %testProcs, align 4, !tbaa !6
  %52 = load i32*, i32** %side.addr, align 8, !tbaa !2
  store i32 %51, i32* %52, align 4, !tbaa !6
  %53 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #14
  %54 = bitcast i32* %myDom to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #14
  %55 = bitcast i32* %dz to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #14
  %56 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #14
  %57 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #14
  %58 = bitcast i32* %testProcs to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %this, i64 %__new_size) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__new_size.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store i64 %__new_size, i64* %__new_size.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call2 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %sub = sub i64 %1, %call2
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* %this1, i64 %sub)
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %cmp4 = icmp ult i64 %2, %call3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %4 = load double*, double** %_M_start, align 8, !tbaa !91
  %5 = load i64, i64* %__new_size.addr, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this1, double* %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load double*, double** %_M_finish, align 8, !tbaa !94
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load double*, double** %_M_start, align 8, !tbaa !91
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__len = alloca i64, align 8
  %__size = alloca i64, align 8
  %__new_start = alloca double*, align 8
  %__destroy_from = alloca double*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 2
  %2 = load double*, double** %_M_end_of_storage, align 8, !tbaa !110
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %4 = load double*, double** %_M_finish, align 8, !tbaa !94
  %sub.ptr.lhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %5 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp3 = icmp uge i64 %sub.ptr.div, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl5, i32 0, i32 1
  %7 = load double*, double** %_M_finish6, align 8, !tbaa !94
  %8 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #14
  %call7 = call double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %7, i64 %8, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call)
  %10 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl8, i32 0, i32 1
  store double* %call7, double** %_M_finish9, align 8, !tbaa !94
  br label %if.end53

if.else:                                          ; preds = %if.then
  %11 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #14
  %12 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call10 = call i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i64 %call10, i64* %__len, align 8, !tbaa !108
  %13 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #14
  %call11 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  store i64 %call11, i64* %__size, align 8, !tbaa !108
  %14 = bitcast double** %__new_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #14
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %16 = load i64, i64* %__len, align 8, !tbaa !108
  %call12 = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %15, i64 %16)
  store double* %call12, double** %__new_start, align 8, !tbaa !2
  %17 = bitcast double** %__destroy_from to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #14
  store double* null, double** %__destroy_from, align 8, !tbaa !2
  %18 = load double*, double** %__new_start, align 8, !tbaa !2
  %19 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds double, double* %18, i64 %19
  %20 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %21 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %21) #14
  %call14 = invoke double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %add.ptr, i64 %20, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call13)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %22 = load double*, double** %__new_start, align 8, !tbaa !2
  %23 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr15 = getelementptr inbounds double, double* %22, i64 %23
  store double* %add.ptr15, double** %__destroy_from, align 8, !tbaa !2
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %25 = load double*, double** %_M_start, align 8, !tbaa !91
  %26 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %26, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl17, i32 0, i32 1
  %27 = load double*, double** %_M_finish18, align 8, !tbaa !94
  %28 = load double*, double** %__new_start, align 8, !tbaa !2
  %29 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %29) #14
  %call21 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %25, double* %27, double* %28, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call19)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %if.else
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %33 = call i8* @__cxa_begin_catch(i8* %exn) #14
  %34 = load double*, double** %__destroy_from, align 8, !tbaa !2
  %tobool = icmp ne double* %34, null
  br i1 %tobool, label %if.then22, label %if.end

if.then22:                                        ; preds = %catch
  %35 = load double*, double** %__destroy_from, align 8, !tbaa !2
  %36 = load double*, double** %__destroy_from, align 8, !tbaa !2
  %37 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr23 = getelementptr inbounds double, double* %36, i64 %37
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call24 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %38) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %35, double* %add.ptr23, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call24)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %if.then22
  br label %if.end

lpad25:                                           ; preds = %invoke.cont27, %if.end, %if.then22
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %exn.slot, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont26, %catch
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %43 = load double*, double** %__new_start, align 8, !tbaa !2
  %44 = load i64, i64* %__len, align 8, !tbaa !108
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %42, double* %43, i64 %44)
          to label %invoke.cont27 unwind label %lpad25

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad25

invoke.cont28:                                    ; preds = %lpad25
  %45 = bitcast double** %__destroy_from to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #14
  %46 = bitcast double** %__new_start to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #14
  %47 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #14
  %48 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #14
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont20
  %49 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %49, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %50 = load double*, double** %_M_start30, align 8, !tbaa !91
  %51 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %51, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %52 = load double*, double** %_M_finish32, align 8, !tbaa !94
  %53 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call33 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %53) #14
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %50, double* %52, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call33)
  %54 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %56 = load double*, double** %_M_start35, align 8, !tbaa !91
  %57 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %57, i32 0, i32 0
  %_M_end_of_storage37 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %58 = load double*, double** %_M_end_of_storage37, align 8, !tbaa !110
  %59 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl38 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %_M_start39 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl38, i32 0, i32 0
  %60 = load double*, double** %_M_start39, align 8, !tbaa !91
  %sub.ptr.lhs.cast40 = ptrtoint double* %58 to i64
  %sub.ptr.rhs.cast41 = ptrtoint double* %60 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i64 %sub.ptr.sub42, 8
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %54, double* %56, i64 %sub.ptr.div43)
  %61 = load double*, double** %__new_start, align 8, !tbaa !2
  %62 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %62, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl44, i32 0, i32 0
  store double* %61, double** %_M_start45, align 8, !tbaa !91
  %63 = load double*, double** %__new_start, align 8, !tbaa !2
  %64 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr46 = getelementptr inbounds double, double* %63, i64 %64
  %65 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr47 = getelementptr inbounds double, double* %add.ptr46, i64 %65
  %66 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %66, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store double* %add.ptr47, double** %_M_finish49, align 8, !tbaa !94
  %67 = load double*, double** %__new_start, align 8, !tbaa !2
  %68 = load i64, i64* %__len, align 8, !tbaa !108
  %add.ptr50 = getelementptr inbounds double, double* %67, i64 %68
  %69 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store double* %add.ptr50, double** %_M_end_of_storage52, align 8, !tbaa !110
  %70 = bitcast double** %__destroy_from to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #14
  %71 = bitcast double** %__new_start to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #14
  %72 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #14
  %73 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73) #14
  br label %if.end53

if.end53:                                         ; preds = %try.cont, %if.then4
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %exn55 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn55, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %lpad25
  %74 = landingpad { i8*, i32 }
          catch i8* null
  %75 = extractvalue { i8*, i32 } %74, 0
  call void @__clang_call_terminate(i8* %75) #17
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %__pos) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__pos.addr = alloca double*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store double* %__pos, double** %__pos.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load double*, double** %__pos.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %2 = load double*, double** %_M_finish, align 8, !tbaa !94
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %0, double* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %4 = load double*, double** %__pos.addr, align 8, !tbaa !2
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store double* %4, double** %_M_finish3, align 8, !tbaa !94
  ret void

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #17
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %__first, i64 %__n, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !2
  %1 = load double*, double** %__first.addr, align 8, !tbaa !2
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call double* @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(double* %1, i64 %2)
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1) #14
  %call2 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #19
  unreachable

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %3 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %call4 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  store i64 %call4, i64* %ref.tmp, align 8, !tbaa !108
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  %4 = load i64, i64* %call5, align 8, !tbaa !108
  %add = add i64 %call3, %4
  %5 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #14
  store i64 %add, i64* %__len, align 8, !tbaa !108
  %6 = load i64, i64* %__len, align 8, !tbaa !108
  %call6 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1) #14
  %cmp7 = icmp ult i64 %6, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %__len, align 8, !tbaa !108
  %call8 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1) #14
  %cmp9 = icmp ugt i64 %7, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1) #14
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %__len, align 8, !tbaa !108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %8, %cond.false ]
  %9 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #14
  ret i64 %cond
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call double* @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call, %cond.true ], [ null, %cond.false ]
  ret double* %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %__alloc) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator", align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !2
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %call = call double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %1 = load double*, double** %__last.addr, align 8, !tbaa !2
  %call2 = call double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %2 = load double*, double** %__result.addr, align 8, !tbaa !2
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !2
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  %call6 = call double* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(double* %4, double* %5, double* %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3)
  ret double* %call6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__first, double* %__last, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !2
  %1 = load double*, double** %__first.addr, align 8, !tbaa !2
  %2 = load double*, double** %__last.addr, align 8, !tbaa !2
  call void @_ZSt8_DestroyIPdEvT_S1_(double* %1, double* %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  store double* %__p, double** %__p.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load double*, double** %__p.addr, align 8, !tbaa !2
  %tobool = icmp ne double* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load double*, double** %__p.addr, align 8, !tbaa !2
  %3 = load i64, i64* %__n.addr, align 8, !tbaa !108
  call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, double* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(double* %__first, i64 %__n) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__assignable = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__assignable) #14
  store i8 1, i8* %__assignable, align 1, !tbaa !111
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call double* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(double* %0, i64 %1)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__assignable) #14
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(double* %__first, i64 %__n) #0 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca double, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %2 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  store double 0.000000e+00, double* %ref.tmp, align 8, !tbaa !46
  %call = call double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %0, i64 %1, double* nonnull align 8 dereferenceable(8) %ref.tmp)
  %3 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #14
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nonnull align 8 dereferenceable(8) %__value) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store double* %__value, double** %__value.addr, align 8, !tbaa !2
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %2 = load double*, double** %__value.addr, align 8, !tbaa !2
  %call1 = call double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %call, i64 %1, double* nonnull align 8 dereferenceable(8) %2)
  ret double* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %__first, i64 %__n, double* nonnull align 8 dereferenceable(8) %__value) #11 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  %__tmp = alloca double, align 8
  %__niter = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store double* %__value, double** %__value.addr, align 8, !tbaa !2
  %0 = bitcast double* %__tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = load double*, double** %__value.addr, align 8, !tbaa !2
  %2 = load double, double* %1, align 8, !tbaa !46
  store double %2, double* %__tmp, align 8, !tbaa !46
  %3 = bitcast i64* %__niter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %4 = load i64, i64* %__n.addr, align 8, !tbaa !108
  store i64 %4, i64* %__niter, align 8, !tbaa !108
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %__niter, align 8, !tbaa !108
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i64* %__niter to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double, double* %__tmp, align 8, !tbaa !46
  %8 = load double*, double** %__first.addr, align 8, !tbaa !2
  store double %7, double* %8, align 8, !tbaa !46
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %__niter, align 8, !tbaa !108
  %dec = add i64 %9, -1
  store i64 %dec, i64* %__niter, align 8, !tbaa !108
  %10 = load double*, double** %__first.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8, !tbaa !2
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond.cleanup
  %11 = load double*, double** %__first.addr, align 8, !tbaa !2
  %12 = bitcast double* %__tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #14
  ret double* %11
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #11 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8, !tbaa !2
  %0 = load double*, double** %__it.addr, align 8, !tbaa !2
  ret double* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #14
  %call2 = call i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call) #14
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #13

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #11 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8, !tbaa !2
  store i64* %__b, i64** %__b.addr, align 8, !tbaa !2
  %0 = load i64*, i64** %__a.addr, align 8, !tbaa !2
  %1 = load i64, i64* %0, align 8, !tbaa !108
  %2 = load i64*, i64** %__b.addr, align 8, !tbaa !2
  %3 = load i64, i64* %2, align 8, !tbaa !108
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !tbaa !2
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !tbaa !2
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #14
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i8* %0, i8** %.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #14
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %mul = mul i64 %2, 8
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #20
  %3 = bitcast i8* %call2 to double*
  ret double* %3
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #4

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(double* %__first.coerce, double* %__last.coerce, double* %__result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !tbaa.struct !114
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !114
  %5 = load double*, double** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %7 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %6, double* %7, double* %5)
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %__i) #12 comdat {
entry:
  %retval = alloca %"class.std::move_iterator", align 8
  %__i.addr = alloca double*, align 8
  store double* %__i, double** %__i.addr, align 8, !tbaa !2
  %0 = load double*, double** %__i.addr, align 8, !tbaa !2
  call void @_ZNSt13move_iteratorIPdEC2ES0_(%"class.std::move_iterator"* %retval, double* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %retval, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  ret double* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %__first.coerce, double* %__last.coerce, double* %__result) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca double*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__assignable) #14
  store i8 1, i8* %__assignable, align 1, !tbaa !111
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !114
  %4 = load double*, double** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(double* %5, double* %6, double* %4)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__assignable) #14
  ret double* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(double* %__first.coerce, double* %__last.coerce, double* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !114
  %4 = load double*, double** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %5, double* %6, double* %4)
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %__first.coerce, double* %__last.coerce, double* %__result) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive2, align 8
  %call = call double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %2)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !114
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call5 = call double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %5)
  %6 = load double*, double** %__result.addr, align 8, !tbaa !2
  %call6 = call double* @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(double* %call, double* %call5, double* %6)
  ret double* %call6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8, !tbaa !2
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__result.addr, align 8, !tbaa !2
  %call2 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %2)
  %call3 = call double* @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %call2)
  ret double* %call3
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  %call = call double* @_ZNKSt13move_iteratorIPdE4baseEv(%"class.std::move_iterator"* %__it)
  %call1 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %call)
  ret double* %call1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__simple = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__simple) #14
  store i8 1, i8* %__simple, align 1, !tbaa !111
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %1 = load double*, double** %__last.addr, align 8, !tbaa !2
  %2 = load double*, double** %__result.addr, align 8, !tbaa !2
  %call = call double* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %0, double* %1, double* %2)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__simple) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #1 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %_Num = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  store double* %__result, double** %__result.addr, align 8, !tbaa !2
  %0 = bitcast i64* %_Num to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = load double*, double** %__last.addr, align 8, !tbaa !2
  %2 = load double*, double** %__first.addr, align 8, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8, !tbaa !108
  %3 = load i64, i64* %_Num, align 8, !tbaa !108
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double*, double** %__result.addr, align 8, !tbaa !2
  %5 = bitcast double* %4 to i8*
  %6 = load double*, double** %__first.addr, align 8, !tbaa !2
  %7 = bitcast double* %6 to i8*
  %8 = load i64, i64* %_Num, align 8, !tbaa !108
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load double*, double** %__result.addr, align 8, !tbaa !2
  %10 = load i64, i64* %_Num, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds double, double* %9, i64 %10
  %11 = bitcast i64* %_Num to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #14
  ret double* %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #11 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8, !tbaa !2
  %0 = load double*, double** %__it.addr, align 8, !tbaa !2
  ret double* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_ZNKSt13move_iteratorIPdE4baseEv(%"class.std::move_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8, !tbaa !115
  ret double* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPdEC2ES0_(%"class.std::move_iterator"* %this, double* %__i) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  %__i.addr = alloca double*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8, !tbaa !2
  store double* %__i, double** %__i.addr, align 8, !tbaa !2
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %__i.addr, align 8, !tbaa !2
  store double* %0, double** %_M_current, align 8, !tbaa !115
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(double* %__first, double* %__last) #12 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8, !tbaa !2
  store double* %__last, double** %__last.addr, align 8, !tbaa !2
  %0 = load double*, double** %__first.addr, align 8, !tbaa !2
  %1 = load double*, double** %__last.addr, align 8, !tbaa !2
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double* %0, double* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double* %0, double* %1) #1 comdat align 2 {
entry:
  %.addr = alloca double*, align 8
  %.addr1 = alloca double*, align 8
  store double* %0, double** %.addr, align 8, !tbaa !2
  store double* %1, double** %.addr1, align 8, !tbaa !2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %__a, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  store double* %__p, double** %__p.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load double*, double** %__p.addr, align 8, !tbaa !2
  %3 = load i64, i64* %__n.addr, align 8, !tbaa !108
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.__gnu_cxx::new_allocator"* %1, double* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.__gnu_cxx::new_allocator"* %this, double* %__p, i64 %0) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !2
  store double* %__p, double** %__p.addr, align 8, !tbaa !2
  store i64 %0, i64* %.addr, align 8, !tbaa !108
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load double*, double** %__p.addr, align 8, !tbaa !2
  %2 = bitcast double* %1 to i8*
  call void @_ZdlPv(i8* %2) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %this, i64 %__n) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !91
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds double, double* %1, i64 %2
  ret double* %add.ptr
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__len = alloca i64, align 8
  %__size = alloca i64, align 8
  %__new_start = alloca i32*, align 8
  %__destroy_from = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 2
  %2 = load i32*, i32** %_M_end_of_storage, align 8, !tbaa !117
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %4 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %sub.ptr.lhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %5 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp3 = icmp uge i64 %sub.ptr.div, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl5, i32 0, i32 1
  %7 = load i32*, i32** %_M_finish6, align 8, !tbaa !98
  %8 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %9) #14
  %call7 = call i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %7, i64 %8, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
  %10 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl8, i32 0, i32 1
  store i32* %call7, i32** %_M_finish9, align 8, !tbaa !98
  br label %if.end53

if.else:                                          ; preds = %if.then
  %11 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #14
  %12 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this1, i64 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i64 %call10, i64* %__len, align 8, !tbaa !108
  %13 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #14
  %call11 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  store i64 %call11, i64* %__size, align 8, !tbaa !108
  %14 = bitcast i32** %__new_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #14
  %15 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %16 = load i64, i64* %__len, align 8, !tbaa !108
  %call12 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %15, i64 %16)
  store i32* %call12, i32** %__new_start, align 8, !tbaa !2
  %17 = bitcast i32** %__destroy_from to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #14
  store i32* null, i32** %__destroy_from, align 8, !tbaa !2
  %18 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %19 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds i32, i32* %18, i64 %19
  %20 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %21 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %21) #14
  %call14 = invoke i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %add.ptr, i64 %20, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call13)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %22 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %23 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr15 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %add.ptr15, i32** %__destroy_from, align 8, !tbaa !2
  %24 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %24, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %25 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %26 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %26, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl17, i32 0, i32 1
  %27 = load i32*, i32** %_M_finish18, align 8, !tbaa !98
  %28 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %29 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %29) #14
  %call21 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %25, i32* %27, i32* %28, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call19)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %if.else
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %33 = call i8* @__cxa_begin_catch(i8* %exn) #14
  %34 = load i32*, i32** %__destroy_from, align 8, !tbaa !2
  %tobool = icmp ne i32* %34, null
  br i1 %tobool, label %if.then22, label %if.end

if.then22:                                        ; preds = %catch
  %35 = load i32*, i32** %__destroy_from, align 8, !tbaa !2
  %36 = load i32*, i32** %__destroy_from, align 8, !tbaa !2
  %37 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr23 = getelementptr inbounds i32, i32* %36, i64 %37
  %38 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call24 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %38) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %35, i32* %add.ptr23, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call24)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %if.then22
  br label %if.end

lpad25:                                           ; preds = %invoke.cont27, %if.end, %if.then22
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %exn.slot, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont26, %catch
  %42 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %43 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %44 = load i64, i64* %__len, align 8, !tbaa !108
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %42, i32* %43, i64 %44)
          to label %invoke.cont27 unwind label %lpad25

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad25

invoke.cont28:                                    ; preds = %lpad25
  %45 = bitcast i32** %__destroy_from to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #14
  %46 = bitcast i32** %__new_start to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #14
  %47 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #14
  %48 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #14
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont20
  %49 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %49, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %50 = load i32*, i32** %_M_start30, align 8, !tbaa !95
  %51 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %51, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %52 = load i32*, i32** %_M_finish32, align 8, !tbaa !98
  %53 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call33 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %53) #14
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %50, i32* %52, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call33)
  %54 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %55 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %55, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %56 = load i32*, i32** %_M_start35, align 8, !tbaa !95
  %57 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %57, i32 0, i32 0
  %_M_end_of_storage37 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %58 = load i32*, i32** %_M_end_of_storage37, align 8, !tbaa !117
  %59 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl38 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %59, i32 0, i32 0
  %_M_start39 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl38, i32 0, i32 0
  %60 = load i32*, i32** %_M_start39, align 8, !tbaa !95
  %sub.ptr.lhs.cast40 = ptrtoint i32* %58 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i32* %60 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i64 %sub.ptr.sub42, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %54, i32* %56, i64 %sub.ptr.div43)
  %61 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %62 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %62, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl44, i32 0, i32 0
  store i32* %61, i32** %_M_start45, align 8, !tbaa !95
  %63 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %64 = load i64, i64* %__size, align 8, !tbaa !108
  %add.ptr46 = getelementptr inbounds i32, i32* %63, i64 %64
  %65 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %add.ptr47 = getelementptr inbounds i32, i32* %add.ptr46, i64 %65
  %66 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %66, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store i32* %add.ptr47, i32** %_M_finish49, align 8, !tbaa !98
  %67 = load i32*, i32** %__new_start, align 8, !tbaa !2
  %68 = load i64, i64* %__len, align 8, !tbaa !108
  %add.ptr50 = getelementptr inbounds i32, i32* %67, i64 %68
  %69 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store i32* %add.ptr50, i32** %_M_end_of_storage52, align 8, !tbaa !117
  %70 = bitcast i32** %__destroy_from to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #14
  %71 = bitcast i32** %__new_start to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #14
  %72 = bitcast i64* %__size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #14
  %73 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73) #14
  br label %if.end53

if.end53:                                         ; preds = %try.cont, %if.then4
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %exn55 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn55, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %lpad25
  %74 = landingpad { i8*, i32 }
          catch i8* null
  %75 = extractvalue { i8*, i32 } %74, 0
  call void @__clang_call_terminate(i8* %75) #17
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* %this, i32* %__pos) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__pos.addr = alloca i32*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i32* %__pos, i32** %__pos.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i32*, i32** %__pos.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %2 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %0, i32* %2, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %4 = load i32*, i32** %__pos.addr, align 8, !tbaa !2
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store i32* %4, i32** %_M_finish3, align 8, !tbaa !98
  ret void

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #17
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %__first, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8, !tbaa !2
  %1 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %1, i64 %2)
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this1) #14
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !tbaa !2
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #19
  unreachable

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %3 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %call4 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  store i64 %call4, i64* %ref.tmp, align 8, !tbaa !108
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  %4 = load i64, i64* %call5, align 8, !tbaa !108
  %add = add i64 %call3, %4
  %5 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #14
  store i64 %add, i64* %__len, align 8, !tbaa !108
  %6 = load i64, i64* %__len, align 8, !tbaa !108
  %call6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this1) #14
  %cmp7 = icmp ult i64 %6, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %__len, align 8, !tbaa !108
  %call8 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this1) #14
  %cmp9 = icmp ugt i64 %7, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this1) #14
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %__len, align 8, !tbaa !108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %8, %cond.false ]
  %9 = bitcast i64* %__len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #14
  ret i64 %cond
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__alloc) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__alloc.addr = alloca %"class.std::allocator.2"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator.5", align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  store %"class.std::allocator.2"* %__alloc, %"class.std::allocator.2"** %__alloc.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %call = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %1 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  %call2 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp1, i32 0, i32 0
  store i32* %call2, i32** %coerce.dive3, align 8
  %2 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__alloc.addr, align 8, !tbaa !2
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp1, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive5, align 8
  %call6 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %4, i32* %5, i32* %2, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %3)
  ret i32* %call6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8, !tbaa !2
  %1 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %2 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  store i32* %__p, i32** %__p.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8, !tbaa !2
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %2 = load i32*, i32** %__p.addr, align 8, !tbaa !2
  %3 = load i64, i64* %__n.addr, align 8, !tbaa !108
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %__first, i64 %__n) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__assignable) #14
  store i8 1, i8* %__assignable, align 1, !tbaa !111
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %0, i64 %1)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__assignable) #14
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %__first, i64 %__n) #0 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i32, align 4
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %2 = bitcast i32* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #14
  store i32 0, i32* %ref.tmp, align 4, !tbaa !6
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %0, i64 %1, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  %3 = bitcast i32* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #14
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i32* %__value, i32** %__value.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %2 = load i32*, i32** %__value.addr, align 8, !tbaa !2
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %1, i32* nonnull align 4 dereferenceable(4) %2)
  ret i32* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #11 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  %__niter = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i32* %__value, i32** %__value.addr, align 8, !tbaa !2
  %0 = bitcast i32* %__tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %1 = load i32*, i32** %__value.addr, align 8, !tbaa !2
  %2 = load i32, i32* %1, align 4, !tbaa !6
  store i32 %2, i32* %__tmp, align 4, !tbaa !6
  %3 = bitcast i64* %__niter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %4 = load i64, i64* %__n.addr, align 8, !tbaa !108
  store i64 %4, i64* %__niter, align 8, !tbaa !108
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %__niter, align 8, !tbaa !108
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i64* %__niter to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %__tmp, align 4, !tbaa !6
  %8 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  store i32 %7, i32* %8, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %__niter, align 8, !tbaa !108
  %dec = add i64 %9, -1
  store i64 %dec, i64* %__niter, align 8, !tbaa !108
  %10 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8, !tbaa !2
  br label %for.cond, !llvm.loop !118

for.end:                                          ; preds = %for.cond.cleanup
  %11 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %12 = bitcast i32* %__tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #14
  ret i32* %11
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #11 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__it.addr, align 8, !tbaa !2
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %0) #14
  %call2 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call) #14
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %1) #14
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  store i8* %0, i8** %.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this1) #14
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !tbaa !108
  %mul = mul i64 %2, 4
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #20
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %__result.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !tbaa.struct !114
  %3 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !114
  %5 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %6, i32* %7, i32* %5)
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__i) #12 comdat {
entry:
  %retval = alloca %"class.std::move_iterator.5", align 8
  %__i.addr = alloca i32*, align 8
  store i32* %__i, i32** %__i.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__i.addr, align 8, !tbaa !2
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.5"* %retval, i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %__result.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__assignable) #14
  store i8 1, i8* %__assignable, align 1, !tbaa !111
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %2 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !114
  %4 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %5, i32* %6, i32* %4)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__assignable) #14
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %2 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !114
  %4 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #12 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !114
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %2)
  %3 = bitcast %"class.std::move_iterator.5"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !114
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %5)
  %6 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %call6 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call5, i32* %6)
  ret i32* %call6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  %call1 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %call2 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %2)
  %call3 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.5"* %__it)
  %call1 = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %call)
  ret i32* %call1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %__simple) #14
  store i8 1, i8* %__simple, align 1, !tbaa !111
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %1 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  %2 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %call = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %__simple) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #1 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  store i32* %__result, i32** %__result.addr, align 8, !tbaa !2
  %0 = bitcast i64* %_Num to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  %2 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %_Num, align 8, !tbaa !108
  %3 = load i64, i64* %_Num, align 8, !tbaa !108
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %5 = bitcast i32* %4 to i8*
  %6 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %7 = bitcast i32* %6 to i8*
  %8 = load i64, i64* %_Num, align 8, !tbaa !108
  %mul = mul i64 4, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %__result.addr, align 8, !tbaa !2
  %10 = load i64, i64* %_Num, align 8, !tbaa !108
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = bitcast i64* %_Num to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #14
  ret i32* %add.ptr
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__it) #11 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__it.addr, align 8, !tbaa !2
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.5"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator.5"*, align 8
  store %"class.std::move_iterator.5"* %this, %"class.std::move_iterator.5"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::move_iterator.5"*, %"class.std::move_iterator.5"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8, !tbaa !119
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.5"* %this, i32* %__i) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator.5"*, align 8
  %__i.addr = alloca i32*, align 8
  store %"class.std::move_iterator.5"* %this, %"class.std::move_iterator.5"** %this.addr, align 8, !tbaa !2
  store i32* %__i, i32** %__i.addr, align 8, !tbaa !2
  %this1 = load %"class.std::move_iterator.5"*, %"class.std::move_iterator.5"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__i.addr, align 8, !tbaa !2
  store i32* %0, i32** %_M_current, align 8, !tbaa !119
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #12 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8, !tbaa !2
  store i32* %__last, i32** %__last.addr, align 8, !tbaa !2
  %0 = load i32*, i32** %__first.addr, align 8, !tbaa !2
  %1 = load i32*, i32** %__last.addr, align 8, !tbaa !2
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1) #1 comdat align 2 {
entry:
  %.addr = alloca i32*, align 8
  %.addr1 = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8, !tbaa !2
  store i32* %1, i32** %.addr1, align 8, !tbaa !2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  store i32* %__p, i32** %__p.addr, align 8, !tbaa !2
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !108
  %0 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %__a.addr, align 8, !tbaa !2
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load i32*, i32** %__p.addr, align 8, !tbaa !2
  %3 = load i64, i64* %__n.addr, align 8, !tbaa !108
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.3"* %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.3"* %this, i32* %__p, i64 %0) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8, !tbaa !2
  store i32* %__p, i32** %__p.addr, align 8, !tbaa !2
  store i64 %0, i64* %.addr, align 8, !tbaa !108
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8, !tbaa !2
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #14
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %0) #14
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this1, i32 0, i32 0
  store double* null, double** %_M_start, align 8, !tbaa !121
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this1, i32 0, i32 1
  store double* null, double** %_M_finish, align 8, !tbaa !122
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this1, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(%"class.std::allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1 to %"class.std::allocator.2"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %0) #14
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8, !tbaa !124
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8, !tbaa !125
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8, !tbaa !126
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load double*, double** %_M_start, align 8, !tbaa !91
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load double*, double** %_M_end_of_storage, align 8, !tbaa !110
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load double*, double** %_M_start4, align 8, !tbaa !91
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this1, double* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev to void (%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl5) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev to void (%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl6) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8, !tbaa !2
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8, !tbaa !117
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8, !tbaa !95
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void bitcast (void (%"class.__gnu_cxx::new_allocator.3"*)* @_ZN9__gnu_cxx13new_allocatorIiED2Ev to void (%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl5) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void bitcast (void (%"class.__gnu_cxx::new_allocator.3"*)* @_ZN9__gnu_cxx13new_allocatorIiED2Ev to void (%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl6) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8, !tbaa !2
  %this1 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 392}
!9 = !{!"_ZTS6Domain", !10, i64 0, !10, i64 24, !10, i64 48, !10, i64 72, !10, i64 96, !10, i64 120, !10, i64 144, !10, i64 168, !10, i64 192, !10, i64 216, !10, i64 240, !10, i64 264, !10, i64 288, !11, i64 312, !11, i64 336, !11, i64 360, !7, i64 384, !7, i64 388, !3, i64 392, !3, i64 400, !3, i64 408, !11, i64 416, !11, i64 440, !11, i64 464, !11, i64 488, !11, i64 512, !11, i64 536, !11, i64 560, !11, i64 584, !3, i64 608, !3, i64 616, !3, i64 624, !3, i64 632, !3, i64 640, !3, i64 648, !3, i64 656, !3, i64 664, !3, i64 672, !10, i64 680, !10, i64 704, !10, i64 728, !10, i64 752, !10, i64 776, !10, i64 800, !10, i64 824, !10, i64 848, !10, i64 872, !10, i64 896, !10, i64 920, !10, i64 944, !10, i64 968, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !7, i64 1160, !12, i64 1168, !12, i64 1176, !12, i64 1184, !12, i64 1192, !12, i64 1200, !12, i64 1208, !12, i64 1216, !7, i64 1224, !7, i64 1228, !7, i64 1232, !7, i64 1236, !7, i64 1240, !7, i64 1244, !7, i64 1248, !7, i64 1252, !7, i64 1256, !7, i64 1260, !7, i64 1264, !7, i64 1268, !3, i64 1272, !3, i64 1280, !7, i64 1288, !7, i64 1292, !7, i64 1296, !7, i64 1300, !7, i64 1304, !7, i64 1308}
!10 = !{!"_ZTSSt6vectorIdSaIdEE"}
!11 = !{!"_ZTSSt6vectorIiSaIiEE"}
!12 = !{!"double", !4, i64 0}
!13 = !{!9, !3, i64 400}
!14 = !{!9, !3, i64 408}
!15 = !{!9, !12, i64 992}
!16 = !{!9, !12, i64 1000}
!17 = !{!9, !12, i64 1008}
!18 = !{!9, !12, i64 1016}
!19 = !{!9, !12, i64 1024}
!20 = !{!9, !12, i64 1032}
!21 = !{!9, !12, i64 1040}
!22 = !{!9, !12, i64 1048}
!23 = !{!9, !12, i64 1056}
!24 = !{!9, !12, i64 1064}
!25 = !{!9, !12, i64 1072}
!26 = !{!9, !12, i64 1080}
!27 = !{!9, !12, i64 1088}
!28 = !{!9, !12, i64 1096}
!29 = !{!9, !12, i64 1104}
!30 = !{!9, !12, i64 1112}
!31 = !{!9, !12, i64 1120}
!32 = !{!9, !12, i64 1128}
!33 = !{!9, !12, i64 1136}
!34 = !{!9, !3, i64 1272}
!35 = !{!9, !3, i64 1280}
!36 = !{!9, !7, i64 1240}
!37 = !{!9, !7, i64 1224}
!38 = !{!9, !7, i64 1228}
!39 = !{!9, !7, i64 1232}
!40 = !{!9, !7, i64 1236}
!41 = !{!9, !7, i64 1244}
!42 = !{!9, !7, i64 1248}
!43 = !{!9, !7, i64 1252}
!44 = !{!9, !7, i64 1256}
!45 = !{!9, !7, i64 1260}
!46 = !{!12, !12, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{!9, !7, i64 1264}
!57 = !{!9, !7, i64 1268}
!58 = !{!9, !7, i64 1288}
!59 = !{!9, !7, i64 1292}
!60 = !{!9, !7, i64 1296}
!61 = !{!9, !7, i64 1300}
!62 = !{!9, !7, i64 1304}
!63 = !{!9, !7, i64 1308}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !48}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = !{!92, !3, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !3, i64 0, !3, i64 8, !3, i64 16}
!94 = !{!92, !3, i64 8}
!95 = !{!96, !3, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !3, i64 0, !3, i64 8, !3, i64 16}
!98 = !{!96, !3, i64 8}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !48}
!106 = distinct !{!106, !48}
!107 = distinct !{!107, !48}
!108 = !{!109, !109, i64 0}
!109 = !{!"long", !4, i64 0}
!110 = !{!92, !3, i64 16}
!111 = !{!112, !112, i64 0}
!112 = !{!"bool", !4, i64 0}
!113 = distinct !{!113, !48}
!114 = !{i64 0, i64 8, !2}
!115 = !{!116, !3, i64 0}
!116 = !{!"_ZTSSt13move_iteratorIPdE", !3, i64 0}
!117 = !{!96, !3, i64 16}
!118 = distinct !{!118, !48}
!119 = !{!120, !3, i64 0}
!120 = !{!"_ZTSSt13move_iteratorIPiE", !3, i64 0}
!121 = !{!93, !3, i64 0}
!122 = !{!93, !3, i64 8}
!123 = !{!93, !3, i64 16}
!124 = !{!97, !3, i64 0}
!125 = !{!97, !3, i64 8}
!126 = !{!97, !3, i64 16}
