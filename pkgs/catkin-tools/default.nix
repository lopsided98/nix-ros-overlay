{ lib, buildPythonPackage, fetchPypi, setuptools, osrf-pycommon, pyyaml
, catkin-pkg }:

buildPythonPackage rec {
  pname = "catkin_tools";
  version = "0.9.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-JlOjtDMAxkglzWb+Ou3+hnadQn9F6mTxDPqJc2yh/Lc=";
  };

  propagatedBuildInputs = [ setuptools osrf-pycommon pyyaml catkin-pkg ];

  # No tests in PyPi tarball
  doCheck = false;
  pythonImportsCheck = [ "catkin_tools" ];

  meta = with lib; {
    description = "Command line tools for working with catkin";
    homepage = "https://catkin-tools.readthedocs.io/";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
