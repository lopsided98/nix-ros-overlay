
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, canopen-402, canopen-chain-node, canopen-master, canopen-motor-node, catkin, socketcan-bridge, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-canopen";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/ros_canopen/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "aadded2d0cbb3a22d1548ad1e625d38c697863cc920bfbf4d7f9850d50cb4bc7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs canopen-402 canopen-chain-node canopen-master canopen-motor-node socketcan-bridge socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
