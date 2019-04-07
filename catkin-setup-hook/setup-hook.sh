isCatkinPackage() {
  [ -f "$1/.catkin" ]
}

declare -gA _rosPackagesSeen

_runCatkinEnvHooks() {
  local pkg="$1"
  # Deduplicate the packages. This prevents running hooks multiple times.
  if [ -z "${_rosPackagesSeen["$pkg"]}" ] && isCatkinPackage "$pkg"; then
    for hook in "$pkg"/etc/catkin/profile.d/{*.sh,*.bash}; do
      # Causes hooks to look in the wrong place
      unset CATKIN_ENV_HOOK_WORKSPACE
      # Some hooks fail in stripped down bash during builds
      source "$hook" || true
    done
  fi
  _rosPackagesSeen["$pkg"]=1
}
addEnvHooks "$hostOffset" _runCatkinEnvHooks

_catkinPostPatchHook() {
  find . -name '*.cfg' -executable -print0 | while IFS= read -rd '' cfg; do
    patchShebangs "$cfg"
  done
}
postPatchHooks+=(_catkinPostPatchHook)

_catkinPreConfigureHook() {
  cmakeFlags+=" -DCATKIN_ENABLE_TESTING=${doCheck:-OFF}"
}
preConfigureHooks+=(_catkinPreConfigureHook)

_catkinPostInstallHook() {
  pushd $out
  rm -f *setup.*sh
  rm -f _setup_util.py env.sh .rosinstall
  popd
}
postInstallHooks+=(_catkinPostInstallHook)

export CATKIN_SHELL=bash
