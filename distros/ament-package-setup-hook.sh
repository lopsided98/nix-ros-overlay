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
addEnvHooks "$hostOffset" _findAmentPackages
