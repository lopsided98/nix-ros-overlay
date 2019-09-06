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

  passthru = passthru // {
    rosPackage = true;
  };
} // lib.optionalAttrs (buildType != "ament_python") {
  nativeBuildInputs = [ pythonPackages.wrapPython ] ++ nativeBuildInputs;
})
