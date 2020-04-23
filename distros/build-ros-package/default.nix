{ stdenv, lib, pythonPackages }:
{ buildType ? "catkin"
, nativeBuildInputs ? []
, passthru ? {}
, ...
}@args:

(if buildType == "ament_python" then pythonPackages.buildPythonPackage
else stdenv.mkDerivation) (args // {
  # Too difficult to fix all the problems with the tests in each package
  doCheck = false;

  # ROS is sloppy with specifying build/runtime dependencies and
  # buildPythonPackage turns on strictDeps by default
  # FIXME: figure out a way to avoid this to eventually allow cross-compiling
  strictDeps = false;

  # Disable warnings that cause "Log limit exceeded" errors on Hydra in lots of
  # packages that use Eigen
  CXXFLAGS = [ "-Wno-deprecated-declarations" ];

  passthru = passthru // {
    rosPackage = true;
  };
} // lib.optionalAttrs (buildType == "ament_python") {
  dontUseCmakeConfigure = true;
})
