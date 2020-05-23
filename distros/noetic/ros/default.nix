
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosbash, rosboost-cfg, rosbuild, rosclean, roscreate, roslang, roslib, rosmake, rosunit }:
buildRosPackage {
  pname = "ros-noetic-ros";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/ros/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "cf179df8b0c79e17be6250ef4842eadf64e4588b877c08695595b34e08201255";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin mk rosbash rosboost-cfg rosbuild rosclean roscreate roslang roslib rosmake rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
