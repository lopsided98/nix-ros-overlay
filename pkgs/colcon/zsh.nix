{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-zsh";
  version = "0.4.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-VVwbFlP5qXwayxb7NQBCs8zl1pKhPbmmy8w7Tem5S+s=";
  };

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide Z shell scripts.";
    homepage = "https://github.com/colcon/colcon-zsh";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
