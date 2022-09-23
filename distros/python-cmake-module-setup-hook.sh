_pythonCmakeModulePreConfigureHook() {
  cmakeFlags+=" -DPYTHON_EXECUTABLE=@pythonExecutable@"
  cmakeFlags+=" -DPYTHON_LIBRARY=@pythonLibrary@"
  cmakeFlags+=" -DPYTHON_INCLUDE_DIR=@pythonIncludeDir@"
}
preConfigureHooks+=(_pythonCmakeModulePreConfigureHook)
