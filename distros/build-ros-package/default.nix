{ stdenv, lib, pythonPackages, rosDistro, rosVersion }:
{ buildType ? "catkin"
, pname
  # Too difficult to fix all the problems with the tests in each package
, doCheck ? false
# nixpkgs requires that either dontWrapQtApps is set or wrapQtAppsHook is added
# to nativeBuildInputs if a package depends on Qt5. This is difficult to achieve
# with auto-generated packages, so we just always disable wrapping except for
# packages that are overridden in distro-overlay.nix. This means some Qt5
# applications are broken, but allows all libraries that depend on Qt5 to build
# correctly.
, dontWrapQtApps ? true
, CXXFLAGS ? ""
, postInstall ? ""
, passthru ? {}
, ...
}@args:

let
  # Convert pname to the original ROS package name (rosPkgName), e.g.,
  # ros-humble-rqt-robot-monitor -> rqt_robot_monitor
  wordsFromPname = builtins.filter (v: ! builtins.isList v) (builtins.split "-" pname);
  wordsRosPkgName =
    if (builtins.head wordsFromPname) == "ros" then
      lib.drop 2 wordsFromPname # strip distro prefix (from nix-ros-overlay packages)
    else
      wordsFromPname;           # external packages might not use ros-distro- prefix
  rosPkgName = builtins.concatStringsSep "_" wordsRosPkgName;
in
(if buildType == "ament_python" then pythonPackages.buildPythonPackage
else stdenv.mkDerivation) (args // {
  inherit pname doCheck dontWrapQtApps;

  # Disable warnings that cause "Log limit exceeded" errors on Hydra in lots of
  # packages that use Eigen
  CXXFLAGS = CXXFLAGS + "-Wno-deprecated-declarations -Wno-deprecated-copy";

  # ament_python packages built by colcon install binaries to
  # .../lib/$pkg. This is configured in setup.cfg in the package
  # source. buildPythonPackage builds packages differently than colcon
  # (via wheels) and ignores setup.cfg. Therefore, we have to move the
  # binaries to lib manually.
  postInstall = postInstall + lib.optionalString (buildType == "ament_python") ''
    files=($out/bin/*)
    if (( ''${#files[@]} )); then
      mkdir -p $out/lib/${rosPkgName}
      ln -sr "''${files[@]}" $out/lib/${rosPkgName}
    fi
  '';

  passthru = passthru // {
    rosPackage = true;
    inherit rosDistro rosVersion;
  };
} // lib.optionalAttrs (buildType == "ament_python") {
  dontUseCmakeConfigure = true;
})
