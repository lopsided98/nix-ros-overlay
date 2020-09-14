
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, canopen-402, canopen-chain-node, canopen-master, canopen-motor-node, catkin, socketcan-bridge, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-canopen";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/ros_canopen/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "2240ae96993c7594c522a1b75a815d8bf22c040352182ebe4d07a3e591b271e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs canopen-402 canopen-chain-node canopen-master canopen-motor-node socketcan-bridge socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
