
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbuild, rosnode, std-srvs, rosgraph, cmake-modules, pythonPackages, roslib, catkin, rosbag, rosservice, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-roswtf";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roswtf/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "4b80685e087fb64bb3c54d156c2a5b7953092dd83c14906d311def246ebfdd93";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosbag std-srvs cmake-modules ];
  propagatedBuildInputs = [ rosbuild rosnode rosgraph pythonPackages.rospkg roslib pythonPackages.paramiko rosservice roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
