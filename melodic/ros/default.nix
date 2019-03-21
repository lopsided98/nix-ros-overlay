
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, rosbash, mk, catkin, rosbuild, rosmake, roslang, rosclean, rosunit, roslib, roscreate }:
buildRosPackage {
  pname = "ros-melodic-ros";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/ros/1.14.6-0.tar.gz;
    sha256 = "f92a3cbe96dd8d490c60a52ff22ed01bb00d7c9a6e59a1bbfc7700d9b693d82e";
  };

  propagatedBuildInputs = [ rosboost-cfg rosbash mk catkin rosbuild rosmake roslang roscreate rosclean roslib rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    #license = lib.licenses.BSD;
  };
}
