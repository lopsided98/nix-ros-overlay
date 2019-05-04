
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, socketcan-bridge, can-msgs, catkin, canopen-402, canopen-motor-node, socketcan-interface, canopen-chain-node, canopen-master }:
buildRosPackage {
  pname = "ros-kinetic-ros-canopen";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/ros_canopen/0.7.10-0.tar.gz;
    sha256 = "a129042c1ce3770ae51ee93c5343ca195d44d60dde34431ff48fa0eee5189461";
  };

  propagatedBuildInputs = [ socketcan-bridge can-msgs canopen-402 canopen-motor-node socketcan-interface canopen-chain-node canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
