{ buildPythonPackage, fetchPypi, pyyaml, python-dateutil }:

buildPythonPackage rec {
  pname = "vcstools";
  version = "0.1.40";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1mfasip71ky1g968n1zlramgn3fjxk4c922d0x9cs0nwm2snln4m";
  };

  propagatedBuildInputs = [ pyyaml python-dateutil ];

  # Tries to download files and lots of other issues
  doCheck = false;

  meta = {
    description = "Python library for interacting with various VCS systems";
    homepage = http://wiki.ros.org/vcstools;
  };
}

