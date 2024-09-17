{ lib, buildPythonPackage, fetchPypi, pyyaml, setuptools, catkin-pkg, rospkg
, rosdistro }:

buildPythonPackage rec {
  pname = "rosdep";
  version = "0.25.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-oKcA3r27EykySLprt6+ZAHBQ1XH+pNLkzGEZzkRj3nI=";
  };

  # Tries to download files
  doCheck = false;

  propagatedBuildInputs = [ pyyaml setuptools catkin-pkg rospkg rosdistro ];

  meta = with lib; {
    description = "Package manager abstraction tool for ROS";
    homepage = "https://wiki.ros.org/rosdep";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
