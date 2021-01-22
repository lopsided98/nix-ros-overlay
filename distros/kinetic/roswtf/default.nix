
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pythonPackages, rosbuild, rosgraph, roslaunch, roslib, rosnode, rosservice, rostest }:
buildRosPackage {
  pname = "ros-kinetic-roswtf";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roswtf/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "a184de1c25849b152acfb9a5fc9da9d1a65664b3a4b4a97d5a6941d975d8a7cc";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ cmake-modules ];
  propagatedBuildInputs = [ pythonPackages.paramiko pythonPackages.rospkg rosbuild rosgraph roslaunch roslib rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
