
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, rosbag, rosbuild, pythonPackages, catkin, rosservice, rostest, rosgraph, roslaunch, roslib, rosnode }:
buildRosPackage {
  pname = "ros-lunar-roswtf";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/roswtf/1.13.7-0.tar.gz;
    sha256 = "e9a9e6d4a046ab1ee8a6314626cffcab36f735c737ab0df3f8dcd5efbccefdb5";
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
