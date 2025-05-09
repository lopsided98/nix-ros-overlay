
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, python3Packages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roswtf";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roswtf/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "258dd1e1e2f777afa493fd59fe19e78d2a8193091d3a98a7740734ab16d31cce";
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
