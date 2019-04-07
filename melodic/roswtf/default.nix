
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, rosbag, rosbuild, pythonPackages, catkin, rosservice, rostest, rosgraph, roslaunch, roslib, rosnode }:
buildRosPackage {
  pname = "ros-melodic-roswtf";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roswtf/1.14.3-0.tar.gz;
    sha256 = "4b80685e087fb64bb3c54d156c2a5b7953092dd83c14906d311def246ebfdd93";
  };

  buildInputs = [ rostest ];
  checkInputs = [ std-srvs rosbag cmake-modules ];
  propagatedBuildInputs = [ roslib pythonPackages.rospkg rosgraph pythonPackages.paramiko roslaunch rosbuild rosservice rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    #license = lib.licenses.BSD;
  };
}
