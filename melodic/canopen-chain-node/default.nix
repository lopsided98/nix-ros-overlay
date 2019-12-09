
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, canopen-master, pluginlib, std-msgs, std-srvs, catkin, roslib, socketcan-interface, roscpp, message-runtime, rosconsole-bridge, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-canopen-chain-node";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_chain_node/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "cfe86ad277238bab8a585f6a337c8abe1607e0493b3d20e6305a2d522a381616";
  };

  buildType = "catkin";
  buildInputs = [ canopen-master pluginlib std-msgs std-srvs roslib socketcan-interface roscpp message-generation rosconsole-bridge diagnostic-updater ];
  propagatedBuildInputs = [ canopen-master pluginlib std-srvs std-msgs roslib socketcan-interface roscpp message-runtime rosconsole-bridge diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
