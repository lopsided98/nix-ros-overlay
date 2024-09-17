{ lib, buildPythonPackage, fetchPypi, pyyaml, setuptools, catkin-pkg, rospkg }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "0.9.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-RwOCS1hwS8oZBhMuO9PUK6cq9zhh7QPVoZJUeKcr+ys=";
  };

  propagatedBuildInputs = [ pyyaml setuptools catkin-pkg rospkg ];

  meta = with lib; {
    description = "A tool to work with rosdistro files";
    homepage = "https://wiki.ros.org/rosdistro";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
