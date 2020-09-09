
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, diagnostic-updater, message-generation, message-runtime, pluginlib, rosconsole-bridge, roscpp, roslib, socketcan-interface, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-canopen-chain-node";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_chain_node/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "5f9290748c5cf415b10595a1c677bce4cd3c4871411b1c57cd90349e02e282b2";
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
