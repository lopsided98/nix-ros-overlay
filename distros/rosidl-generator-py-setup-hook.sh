_rosidlGeneratorPyPreConfigureHook() {
  # Prevent "RPATH of binary ... contains a forbidden reference to /build/"
  # when cross-compiling
  if [ -z "${dontSkipBuildRpath-}" ]; then
    cmakeFlags+=" -DCMAKE_SKIP_BUILD_RPATH:BOOL=ON"
  fi
}
preConfigureHooks+=(_rosidlGeneratorPyPreConfigureHook)
