{ lib, buildPythonPackage, fetchPypi, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rospkg";
  version = "1.1.10";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1picraw0ngj9ng0k7sdq7anfglk60i5w2rkag6zv294579aqp7zk";
  };

  propagatedBuildInputs = [ catkin-pkg pyyaml ];

  setupHook = ./setup-hook.sh;

  meta = with lib; {
    description = "Library for retrieving information about ROS packages and stacks";
    homepage = "http://wiki.ros.org/rospkg";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
