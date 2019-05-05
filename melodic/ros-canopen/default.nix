
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, socketcan-bridge, can-msgs, catkin, canopen-402, canopen-motor-node, socketcan-interface, canopen-chain-node, canopen-master }:
buildRosPackage {
  pname = "ros-melodic-ros-canopen";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/ros_canopen/0.8.0-0.tar.gz;
    sha256 = "8a5c65352a4fdb30215c811264abe1e29d326afebac95bb06f50124bb78ca5f1";
  };

  propagatedBuildInputs = [ socketcan-bridge can-msgs canopen-402 canopen-motor-node socketcan-interface canopen-chain-node canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
