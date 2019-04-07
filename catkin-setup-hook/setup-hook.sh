isCatkinPackage() {
  [ -f "$1/.catkin" ]
}

# Load catkin environment hooks. This mimics the behavior of _setup_util.py.

declare -gA _catkinPackagesSeen
declare -gA _catkinGenericEnvHooks
declare -gA _catkinSpecificEnvHooks

_findCatkinEnvHooks() {
  local pkg="$1"
  local pkgEnvHookDir="$pkg/etc/catkin/profile.d"
  # Deduplicate the packages
  if [ -z "${_catkinPackagesSeen["$pkg"]}" ] && isCatkinPackage "$pkg"; then
    while IFS= read -rd '' hook; do
      _catkinGenericEnvHooks["$(basename "$hook")"]="$hook"
    done < <(find "$pkgEnvHookDir" -name "*.sh" -print0)
    while IFS= read -rd '' hook; do
      _catkinSpecificEnvHooks["$(basename "$hook")"]="$hook"
    done < <(find "$pkgEnvHookDir" -name "*.$CATKIN_SHELL" -print0)
  fi
  _catkinPackagesSeen["$pkg"]=1
}
addEnvHooks "$hostOffset" _findCatkinEnvHooks

_runCatkinEnvHook() {
  [ -n "$1" ] || return 0
  # Causes hooks to look in the wrong place
  unset CATKIN_ENV_HOOK_WORKSPACE
  # Some hooks fail in stripped down bash during builds
  source "$1" || true
}

_runCatkinEnvHooksArray() {
  # Run hooks in sorted order of their file names
  # This would fail if a filename contained EOT
  while IFS= read -rd '' hook; do
    _runCatkinEnvHook "$hook"
  done < <(printf "%s\0" "$@" | \
           # Replace final / with EOT, separating the file name
           sed -z 's|\(.*\)/|\1'$'\4''|' | \
           # Sort on second EOT separated field (file name)
           LC_ALL=C sort -zt$'\4' -k2 | \
           # Substitute / back in for EOT
           sed -z 's|'$'\4''|/|')
}

_runCatkinEnvHooks() {
  _runCatkinEnvHooksArray "${_catkinGenericEnvHooks[@]}"
  _runCatkinEnvHooksArray "${_catkinSpecificEnvHooks[@]}"
}
postHooks+=(_runCatkinEnvHooks)

_catkinPostPatchHook() {
  while IFS= read -rd '' cfg; do
    patchShebangs "$cfg"
  done < <(find . -name '*.cfg' -executable -print0)
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