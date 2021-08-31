{ lib, buildPythonPackage, fetchPypi, fetchpatch, setuptools, catkin-pkg, osrf-pycommon, pyyaml}:

buildPythonPackage rec {
  pname = "catkin_tools";
  version = "0.7.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "17r6sz7jdq78mab8n5ihcf991f8lwykdjcddlgsz7c1ab7j4dkns";
  };

  propagatedBuildInputs = [ catkin-pkg setuptools osrf-pycommon pyyaml ];

  doCheck = false;
  pythonImportsCheck = ["catkin_tools" ];

  meta = with lib; {
    description = "Command line tools for working with catkin";
    homepage = "https://catkin-tools.readthedocs.io/";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
