
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros-msgs, catkin, eigen-conversions, message-runtime, qt5, roscpp, roslib, rviz }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-rviz";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_rviz/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "c6a1b6f8f330707000654165ebd30de105fed8724066f1cd71e85e4cdd377939";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartographer cartographer-ros-msgs eigen-conversions message-runtime qt5.qtbase roscpp roslib rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
