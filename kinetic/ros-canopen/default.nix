
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, socketcan-bridge, canopen-master, canopen-motor-node, catkin, socketcan-interface, canopen-chain-node, canopen-402, can-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-canopen";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/ros_canopen/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "7ddc0dd062ddfaa42416a604d1046020dc26681b802d65ebd6f674991f6dd21d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ canopen-master socketcan-bridge canopen-motor-node socketcan-interface canopen-chain-node canopen-402 can-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
