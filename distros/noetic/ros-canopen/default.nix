
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, canopen-402, canopen-chain-node, canopen-master, canopen-motor-node, catkin, socketcan-bridge, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-ros-canopen";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/ros_canopen/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "c7a0d3494c60a140418396cd2a4bb190c3496ee9492f8dd3d3af2ac0df172458";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ can-msgs canopen-402 canopen-chain-node canopen-master canopen-motor-node socketcan-bridge socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
