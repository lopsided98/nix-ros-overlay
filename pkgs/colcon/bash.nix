{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-bash";
  version = "0.4.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-hpUMpiKTtlXvjWVdKZTREDIf/y/Gc5xGpk8AWgzuG90=";
  };

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide Bash scripts.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
