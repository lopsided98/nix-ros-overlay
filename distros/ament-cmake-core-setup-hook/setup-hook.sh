isAmentPackage() {
  [ -d "$1/share/ament_index" ]
}

declare -gA _amentPackagesSeen

_findAmentPackages() {
  local pkg="$1"
  # Deduplicate the packages
  if [ -z "${_amentPackagesSeen["$pkg"]:-}" ] \
    && isAmentPackage "$pkg" \
    && [ -n "$(shopt -s nullglob; echo $pkg/share/*/local_setup.sh)" ]
  then
    # ROS scripts use unbound variables
    set +u
    for setup in "$pkg"/share/*/local_setup.sh; do
      source "$setup"
    done
    set -u
  fi
  _amentPackagesSeen["$pkg"]=1
}
addEnvHooks "$targetOffset" _findAmentPackages

_amentCmakeCorePreConfigureHook() {
  # Don't create share/ament_index/resource_index/parent_prefix_path resource
  # that contains references to all dependencies. This file isn't used with Nix
  # and just bloats the closure.
  cmakeFlags+=" -DAMENT_CMAKE_ENVIRONMENT_PARENT_PREFIX_PATH_GENERATION:BOOL=OFF"
  # Point CMake at build platform Python so it can run it at build time
  cmakeFlags+=" -DPython3_EXECUTABLE:FILEPATH=@python_executable@"
}
preConfigureHooks+=(_amentCmakeCorePreConfigureHook)
