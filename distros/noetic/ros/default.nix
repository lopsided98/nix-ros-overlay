
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosbash, rosboost-cfg, rosbuild, rosclean, roscreate, roslang, roslib, rosmake, rosunit }:
buildRosPackage {
  pname = "ros-noetic-ros";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/ros/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "5e4cf2015f02111c42def612881475a1ff67757c11b051ed463bc2a173b8998e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin mk rosbash rosboost-cfg rosbuild rosclean roscreate roslang roslib rosmake rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS packaging system";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
