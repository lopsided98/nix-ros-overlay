{ lib, buildPythonPackage, fetchPypi, pyyaml, python-dateutil }:

buildPythonPackage rec {
  pname = "vcstools";
  version = "0.1.42";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0ykp0847fk16fffa2l29gp5hk9d11pqmpq2nmwwsgp8gignxhj4y";
  };

  propagatedBuildInputs = [ pyyaml python-dateutil ];

  # Tries to download files and lots of other issues
  doCheck = false;

  meta = with lib; {
    description = "Python library for interacting with various VCS systems";
    homepage = "http://wiki.ros.org/vcstools";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}

