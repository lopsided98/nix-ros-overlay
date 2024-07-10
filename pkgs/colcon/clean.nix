{ lib, buildPythonPackage, fetchPypi, colcon-core, scantree }:

buildPythonPackage rec {
  pname = "colcon-clean";
  version = "0.2.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-4Xa2WiuckmDtkFBBTb2PUuxXr50tW6ou3Nu2WMQZOxk=";
  };

  propagatedBuildInputs = [ colcon-core scantree ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to clean package workspaces.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
