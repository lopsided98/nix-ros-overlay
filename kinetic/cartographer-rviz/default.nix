
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, cartographer-ros-msgs, rviz, qt5, message-runtime, cartographer, eigen-conversions, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-rviz";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_rviz/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "c6a1b6f8f330707000654165ebd30de105fed8724066f1cd71e85e4cdd377939";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase cartographer-ros-msgs roslib rviz message-runtime cartographer eigen-conversions roscpp ];
  propagatedBuildInputs = [ qt5.qtbase cartographer-ros-msgs roslib rviz message-runtime cartographer eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
