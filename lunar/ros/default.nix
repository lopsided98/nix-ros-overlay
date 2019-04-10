
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, rosbash, mk, catkin, rosbuild, rosmake, roslang, rosclean, rosunit, roslib, roscreate }:
buildRosPackage {
  pname = "ros-lunar-ros";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/ros/1.14.4-0.tar.gz;
    sha256 = "a57d34c13a1b6dfd897b8befdfff01402d7895f07d588d83892b0a3636bcc44c";
  };

  propagatedBuildInputs = [ rosboost-cfg rosbash mk catkin rosbuild rosmake roslang roscreate rosclean roslib rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    #license = lib.licenses.BSD;
  };
}
