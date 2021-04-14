add_llvm_library( LLVMInfeasiblePath MODULE
  InfeasiblePass.cpp

  PLUGIN_TOOL
  opt
)