{ lib, buildPythonPackage, fetchPypi, setuptools, catkin-pkg, osrf-pycommon
, pyyaml }:

buildPythonPackage rec {
  pname = "catkin_tools";
  version = "0.7.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1zspp8sgpg1chjzcshkyq7y7ah41si1ssh3ik3xwsrmmn4dnnk40";
  };

  propagatedBuildInputs = [ setuptools catkin-pkg osrf-pycommon pyyaml ];

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
