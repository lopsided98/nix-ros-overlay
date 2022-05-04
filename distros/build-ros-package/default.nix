{ stdenv, lib, colcon, python3Packages }:
{ buildType ? "catkin"
  # Too difficult to fix all the problems with the tests in each package
, doCheck ? false
  # ROS is sloppy with specifying build/runtime dependencies and
  # buildPythonPackage turns on strictDeps by default
  # FIXME: figure out a way to avoid this to eventually allow cross-compiling
, strictDeps ? false
# nixpkgs requires that either dontWrapQtApps is set or wrapQtAppsHook is added
# to nativeBuildInputs if a package depends on Qt5. This is difficult to achieve
# with auto-generated packages, so we just always disable wrapping except for
# packages that are overridden in distro-overlay.nix. This means some Qt5
# applications are broken, but allows all libraries that depend on Qt5 to build
# correctly.
, dontWrapQtApps ? true
, CXXFLAGS ? ""
, nativeBuildInputs ? []
, passthru ? {}
, ...
}@args:

stdenv.mkDerivation (args // {
  inherit doCheck strictDeps dontWrapQtApps;

  # Disable warnings that cause "Log limit exceeded" errors on Hydra in lots of
  # packages that use Eigen
  CXXFLAGS = CXXFLAGS + "-Wno-deprecated-declarations -Wno-deprecated-copy";

  nativeBuildInputs = nativeBuildInputs ++ [ colcon python3Packages.colcon-core ];

  dontUseCmakeConfigure = true;
  buildPhase = ''
    runHook preBuild
    colcon --log-level info build --install-base "$out" --merge-install
    runHook postBuild
  '';

  passthru = passthru // {
    rosPackage = true;
  };
})
