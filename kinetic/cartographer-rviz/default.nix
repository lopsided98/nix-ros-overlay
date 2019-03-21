
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cartographer-ros-msgs, roslib, rviz, qt5, message-runtime, cartographer, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-rviz";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_rviz/0.2.0-0.tar.gz;
    sha256 = "c6a1b6f8f330707000654165ebd30de105fed8724066f1cd71e85e4cdd377939";
  };

  propagatedBuildInputs = [ roscpp qt5.qtbase cartographer-ros-msgs rviz message-runtime cartographer eigen-conversions roslib ];
  nativeBuildInputs = [ catkin roscpp qt5.qtbase cartographer-ros-msgs rviz message-runtime cartographer eigen-conversions roslib ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    #license = lib.licenses.Apache 2.0;
  };
}
