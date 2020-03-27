{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-library-path";
  version = "0.2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1qp94i5czv7zmp9aqf6z1b9zpznyg91zdzs53dvq4mmb3a8zr242";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to set an environment variable to find shared libraries at runtime.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
