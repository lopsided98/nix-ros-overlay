isCatkinPackage() {
  local pkg="$1"
  [ -d "$pkg/share" ] && \
  [ -n "$(find "$pkg/share" \
    -maxdepth 2 -mindepth 2 \
    -name package.xml -print -quit)" ]
}

_addRosPackagePath() {
  if isCatkinPackage "$1"; then
    addToSearchPath ROS_PACKAGE_PATH "$1"
  fi
}
addEnvHooks "$hostOffset" _addRosPackagePath

_catkinPostPatchHook() {
  patchShebangs cfg
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

export ROS_DISTRO="@distro@"
