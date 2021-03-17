{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, pyyaml }:

buildPythonPackage rec {
  pname = "colcon-metadata";
  version = "0.2.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1j0yjzdin19dzsb25g73nszld7jlr3dg1i499nf22a8fw4678z0k";
  };

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to fetch and manage package metadata from repositories.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
