
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, python3Packages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roswtf";
  version = "1.15.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roswtf/1.15.15-1.tar.gz";
    name = "1.15.15-1.tar.gz";
    sha256 = "68b0c0dae326caf7b051cfac0c5723a2f18c535ba9c4e2d14e123450506e2809";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ cmake-modules rosbag roslang std-srvs ];
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.rospkg rosbuild rosgraph roslaunch roslib rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
