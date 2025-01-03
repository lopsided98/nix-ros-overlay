
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, python3Packages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roswtf";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roswtf/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "c62a06b1001bcc3b28d7ac7ac86a3b493b924b6b46446aa70ad359a4fe08b74f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ cmake-modules rosbag roslang std-srvs ];
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.rospkg rosbuild rosgraph roslaunch roslib rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
