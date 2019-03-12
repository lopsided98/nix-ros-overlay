{ buildPythonPackage, fetchPypi, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rospkg";
  version = "1.1.7";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "1axj16vc145njnn6hq8yxrkb0k2fysca5f87zmib6lba7bhiisf6";
  };

  propagatedBuildInputs = [ catkin-pkg pyyaml ];

  meta = {
    description = "Library for retrieving information about ROS packages and stacks";
    homepage = http://wiki.ros.org/rospkg;
  };
}
