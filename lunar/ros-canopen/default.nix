
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, socketcan-bridge, can-msgs, catkin, canopen-402, canopen-motor-node, socketcan-interface, canopen-chain-node, canopen-master }:
buildRosPackage {
  pname = "ros-lunar-ros-canopen";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/ros_canopen/0.7.9-0.tar.gz;
    sha256 = "a5bb3f182586a97ceb3af09a16bb59ffef821a9a26c044ef10f87e53d9d298fc";
  };

  propagatedBuildInputs = [ canopen-motor-node socketcan-interface socketcan-bridge canopen-chain-node can-msgs canopen-master canopen-402 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    #license = lib.licenses.LGPL;
  };
}
