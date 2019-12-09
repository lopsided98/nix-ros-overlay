
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-conversions, cartographer, catkin, roslib, roscpp, rviz, qt5, cartographer-ros-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-rviz";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_rviz/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "c6a1b6f8f330707000654165ebd30de105fed8724066f1cd71e85e4cdd377939";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions cartographer roslib qt5.qtbase rviz roscpp cartographer-ros-msgs message-runtime ];
  propagatedBuildInputs = [ eigen-conversions cartographer roslib qt5.qtbase rviz roscpp cartographer-ros-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
