
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

  propagatedBuildInputs = [ socketcan-bridge can-msgs canopen-402 canopen-motor-node socketcan-interface canopen-chain-node canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
