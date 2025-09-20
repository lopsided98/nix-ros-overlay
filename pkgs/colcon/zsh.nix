{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-zsh";
  version = "0.5.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-7/91xD3asmSYU1KeQc7jbg+DttTIZMBzY1PQ3s54M0o=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide Z shell scripts";
    homepage = "https://github.com/colcon/colcon-zsh";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
