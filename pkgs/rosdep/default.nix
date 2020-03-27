{ buildPythonPackage, fetchPypi, catkin-pkg, rospkg, pyyaml, rosdistro, setuptools }:

buildPythonPackage rec {
  pname = "rosdep";
  version = "0.17.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1vxbjfj60lkg8b9m8kcv0v1bvi355xs53np27pdjlil27j53sxm9";
  };

  # Tries to download files
  doCheck = false;

  propagatedBuildInputs = [ catkin-pkg rospkg pyyaml rosdistro setuptools ];

  meta = {
    description = "Package manager abstraction tool for ROS";
    homepage = http://wiki.ros.org/rosdep;
  };
}
