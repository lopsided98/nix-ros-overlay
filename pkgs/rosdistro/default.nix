{ lib, buildPythonPackage, fetchPypi, pyyaml, setuptools, catkin-pkg, rospkg }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "0.9.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-5+aSdOwhlaLWeCa4MxMNmjC9DYg3oUqHZsrAzmC/pZs=";
  };

  propagatedBuildInputs = [ pyyaml setuptools catkin-pkg rospkg ];

  meta = with lib; {
    description = "A tool to work with rosdistro files";
    homepage = "https://wiki.ros.org/rosdistro";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
