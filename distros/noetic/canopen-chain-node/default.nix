
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, diagnostic-updater, message-generation, message-runtime, pluginlib, rosconsole-bridge, roscpp, roslib, socketcan-interface, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-canopen-chain-node";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/canopen_chain_node/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "4a2cf8bcdabbb514ff3700e2db8edc0f0a86ee8a28fdc2d0e0c21beeb92a359a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ canopen-master diagnostic-updater message-runtime pluginlib rosconsole-bridge roscpp roslib socketcan-interface std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
