{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-test-result";
  version = "0.3.6";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0l7cfl77fb7cv79f0b5xx1qw527yrb70qcgda3z7sx4npdlb0i7l";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to provide information about the test results.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
