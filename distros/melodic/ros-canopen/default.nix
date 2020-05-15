
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, canopen-402, canopen-chain-node, canopen-master, canopen-motor-node, catkin, socketcan-bridge, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-canopen";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/ros_canopen/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "79c31c825552fdb541e4c4044939c268afc26611a5627ff698000c617028e55f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs canopen-402 canopen-chain-node canopen-master canopen-motor-node socketcan-bridge socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
