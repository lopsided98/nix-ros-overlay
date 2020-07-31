
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosbash, rosboost-cfg, rosbuild, rosclean, roscreate, roslang, roslib, rosmake, rosunit }:
buildRosPackage {
  pname = "ros-noetic-ros";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/ros/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "2c0cc911ea51054e78793030c2b15061a156e7619048bee51414c938cb16bd11";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin mk rosbash rosboost-cfg rosbuild rosclean roscreate roslang roslib rosmake rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
