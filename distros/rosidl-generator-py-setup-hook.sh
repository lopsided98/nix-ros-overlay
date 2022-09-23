_rosidlGeneratorPyPreConfigureHook() {
  # Prevent "RPATH of binary ... contains a forbidden reference to /build/"
  # when cross-compiling
  cmakeFlags+=" -DCMAKE_SKIP_BUILD_RPATH:BOOL=ON"
}
preConfigureHooks+=(_rosidlGeneratorPyPreConfigureHook)
