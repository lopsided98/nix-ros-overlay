
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, rosbash, mk, catkin, rosbuild, rosmake, roslang, rosclean, rosunit, roslib, roscreate }:
buildRosPackage {
  pname = "ros-kinetic-ros";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/ros/1.14.4-0.tar.gz;
    sha256 = "bce49473db484119c608b9b4e7c719ef8746d0ed65758e5798b1af71000429cb";
  };

  propagatedBuildInputs = [ rosboost-cfg rosbash mk catkin rosbuild rosmake roslang roscreate rosclean roslib rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    #license = lib.licenses.BSD;
  };
}
