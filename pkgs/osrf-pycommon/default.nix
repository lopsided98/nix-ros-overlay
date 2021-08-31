{ lib, buildPythonPackage, fetchPypi, fetchpatch, python, nose}:

buildPythonPackage rec {
  pname = "osrf_pycommon";
  version = "1.0.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "01qi6m7frc6g2pyy2wmy29c3xdpbgxmwn11ax48qy3fav4mq5ky3";
  };

  buildInputs = [ nose ];
  checkPhase = "${python.interpreter} ./setup.py nosetests";

  meta = with lib; {
    description = "Commonly needed Python modules, used by Python software developed at OSRF";
    homepage = "https://github.com/osrf/osrf_pycommon";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
