
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, diagnostic-updater, message-generation, message-runtime, pluginlib, rosconsole-bridge, roscpp, roslib, socketcan-interface, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-canopen-chain-node";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/canopen_chain_node/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "4b863fbed3a3508ca9c6e4e99ceaed82751d43080042ae771e508469b657dd0d";
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
