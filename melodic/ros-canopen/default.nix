
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, socketcan-bridge, can-msgs, catkin, canopen-402, canopen-motor-node, socketcan-interface, canopen-chain-node, canopen-master }:
buildRosPackage {
  pname = "ros-melodic-ros-canopen";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/ros_canopen/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "550cd10ebf711cd81dd086201b32ae7ed767659ac3b6ad27580e02cc9f54feea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ socketcan-bridge can-msgs canopen-402 canopen-motor-node socketcan-interface canopen-chain-node canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
