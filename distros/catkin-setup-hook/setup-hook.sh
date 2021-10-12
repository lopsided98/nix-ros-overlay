# Include guard to prevent running hooks more than once
if [ -n "${_catkin_setup_hook_loaded:-}" ]; then return; fi
_catkin_setup_hook_loaded=1

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
  if [ -z "${_catkinPackagesSeen["$pkg"]:-}" ] && isCatkinPackage "$pkg" && [ -d "$pkgEnvHookDir" ]; then
    while IFS= read -rd '' hook; do
      case "$hook" in
        *.sh) _catkinGenericEnvHooks["$(basename "$hook")"]="$hook" ;;
        *) _catkinSpecificEnvHooks["$(basename "$hook")"]="$hook" ;;
      esac
    done < <(find "$pkgEnvHookDir" \( -name "*.sh" -o -name "*.$CATKIN_SHELL" \) -print0)
  fi
  _catkinPackagesSeen["$pkg"]=1
}
addEnvHooks "$hostOffset" _findCatkinEnvHooks

_runCatkinEnvHook() {
  [ -n "$1" ] || return 0
  # Causes hooks to look in the wrong place
  unset CATKIN_ENV_HOOK_WORKSPACE
  # Some hooks assume set +u
  set +u
  # Some hooks fail in stripped down bash during builds
  source "$1" || true
  set -u
}

_runCatkinEnvHooksArray() {
  # Run hooks in sorted order of their file names
  # This would fail if a filename contained EOT
  
  # Work around https://github.com/NixOS/nix/issues/5262
  local eot=$(printf '\004')
  while IFS= read -rd '' hook; do
    _runCatkinEnvHook "$hook"
  done < <(printf "%s\0" "$@" | \
           # Replace final / with EOT, separating the file name
           sed -z 's|\(.*\)/|\1'${eot}'|' | \
           # Sort on second EOT separated field (file name)
           LC_ALL=C sort -zt${eot} -k2 | \
           # Substitute / back in for EOT
           sed -z 's|'${eot}'|/|')
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
  # Don't try to detect Debian/Ubuntu when sandbox is disabled
  cmakeFlags+=" -DSETUPTOOLS_DEB_LAYOUT=OFF"
}
preConfigureHooks+=(_catkinPreConfigureHook)

_catkinPostInstallHook() {
  pushd $out
  rm -f *setup.*sh
  rm -f _setup_util.py env.sh .rosinstall
  popd
}
postInstallHooks+=(_catkinPostInstallHook)

_catkinWrapperHook() {
  wrapPythonPrograms
}
postFixupHooks+=(_catkinWrapperHook)

export CATKIN_SHELL=bash
