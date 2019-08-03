
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, catkin, roscpp, diagnostic-updater, message-generation, message-runtime, socketcan-interface, std-msgs, roslib, canopen-master }:
buildRosPackage {
  pname = "ros-melodic-canopen-chain-node";
  version = "0.8.1-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_chain_node/0.8.1-1.tar.gz;
    sha256 = "e4130c5d434ce1e83c9b36b6db756acc56523b7ec10187195cdc9bd41744caef";
  };

  buildInputs = [ std-srvs pluginlib diagnostic-updater roslib message-generation socketcan-interface std-msgs roscpp canopen-master ];
  propagatedBuildInputs = [ std-srvs pluginlib diagnostic-updater roslib message-runtime socketcan-interface std-msgs roscpp canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
