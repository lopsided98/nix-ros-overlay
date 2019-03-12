{ buildPythonPackage, fetchPypi, catkin-pkg, rospkg, pyyaml, rosdistro }:

buildPythonPackage rec {
  pname = "rosdep";
  version = "0.15.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0y3hxyd84q7c0091cci3dnsg8pm9yw9i4fxgc09wzzgaiq8y3k40";
  };
  
  # Tries to download files
  doCheck = false;

  propagatedBuildInputs = [ catkin-pkg rospkg pyyaml rosdistro ];

  meta = {
    description = "Package manager abstraction tool for ROS";
    homepage = http://wiki.ros.org/rosdep;
  };
}
