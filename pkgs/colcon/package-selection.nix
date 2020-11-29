{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-package-selection";
  version = "0.2.10";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1nq327rycxf9710ml7k9ivd1jrnaxyk6k7sydp76kb676vc96i29";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to select a subset of packages for processing.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
