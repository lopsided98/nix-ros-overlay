
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosbash, rosboost-cfg, rosbuild, rosclean, roscreate, roslang, roslib, rosmake, rosunit }:
buildRosPackage {
  pname = "ros-noetic-ros";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/ros/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "84a51b386e543407cdf8fe3e318adc5dbffeebd7ec9f1eda709b7d64d3ead11f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin mk rosbash rosboost-cfg rosbuild rosclean roscreate roslang roslib rosmake rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
