{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-zsh";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-8aXmPxYFeqcLUNO4+md2lyk2/SnVu21HPBRZGrB/HHM=";
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
