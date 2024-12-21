{
  lib,
  buildPythonPackage,
  fetchPypi,
  colcon-core,
}:

buildPythonPackage rec {
  pname = "colcon-test-result";
  version = "0.3.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1lvfqd3yfqnbjc3hgpc6ikphs5823r7s1rr1ywfrzpavd9qjalma";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide information about the test results";
    homepage = "https://github.com/colcon/colcon-test-result";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
