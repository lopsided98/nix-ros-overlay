{ stdenv, lib, pythonPackages }:
{ buildType ? "catkin"
  # Too difficult to fix all the problems with the tests in each package
, doCheck ? false
  # ROS is sloppy with specifying build/runtime dependencies and
  # buildPythonPackage turns on strictDeps by default
  # FIXME: figure out a way to avoid this to eventually allow cross-compiling
, strictDeps ? false
, CXXFLAGS ? ""
, passthru ? {}
, ...
}@args:

(if buildType == "ament_python" then pythonPackages.buildPythonPackage
else stdenv.mkDerivation) (args // {
  inherit doCheck strictDeps;

  # Disable warnings that cause "Log limit exceeded" errors on Hydra in lots of
  # packages that use Eigen
  CXXFLAGS = CXXFLAGS + "-Wno-deprecated-declarations -Wno-deprecated-copy";

  passthru = passthru // {
    rosPackage = true;
  };
} // lib.optionalAttrs (buildType == "ament_python") {
  dontUseCmakeConfigure = true;
})
