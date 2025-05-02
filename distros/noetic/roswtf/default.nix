
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, python3Packages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roswtf";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roswtf/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "433c0872a10c4506e0062d864533872cd22409c9b4fd5a1d8e69c95b7f8547a5";
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
