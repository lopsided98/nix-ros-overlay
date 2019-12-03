isAmentPackage() {
  [ -d "$1/share/ament_index" ]
}

declare -gA _amentPackagesSeen

_findAmentPackages() {
  local pkg="$1"
  # Deduplicate the packages
  if [ -z "${_amentPackagesSeen["$pkg"]:-}" ] && isAmentPackage "$pkg"; then
    addToSearchPath AMENT_PREFIX_PATH "$pkg"
  fi
  _amentPackagesSeen["$pkg"]=1
}
addEnvHooks "$hostOffset" _findAmentPackages

