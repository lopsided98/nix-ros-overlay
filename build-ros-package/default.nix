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

  passthru = passthru // {
    rosPackage = true;
  };
} // (if buildType == "ament_python" then {
  dontUseCmakeConfigure = true;
} else {
  nativeBuildInputs = [ pythonPackages.wrapPython ] ++ nativeBuildInputs;
}))
