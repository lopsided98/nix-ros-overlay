{ lib, buildPythonPackage, fetchPypi, setuptools, osrf-pycommon, pyyaml
, catkin-pkg }:

buildPythonPackage rec {
  pname = "catkin_tools";
  version = "0.9.4";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-BjVwOJRD8L5ESOKlZbiuAc/NQdAsvDoU8INr1FiMBjo=";
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
