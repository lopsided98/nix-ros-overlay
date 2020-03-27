{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-pkg-config";
  version = "0.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "18xzqs78bv1w3881091wbwqsvkii79bhr5r3gfx3140m6z84dz41";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to set an environment variable to find pkg-config files.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
