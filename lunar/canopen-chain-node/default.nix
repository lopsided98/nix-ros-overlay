
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, catkin, diagnostic-updater, roslib, message-generation, message-runtime, socketcan-interface, std-msgs, roscpp, canopen-master }:
buildRosPackage {
  pname = "ros-lunar-canopen-chain-node";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_chain_node/0.7.9-0.tar.gz;
    sha256 = "665f9b3b988b05ade3e60f2ecb2f6b89b230a79141febb5c8909ce21a422124c";
  };

  buildInputs = [ std-srvs pluginlib roscpp diagnostic-updater message-generation socketcan-interface std-msgs roslib canopen-master ];
  propagatedBuildInputs = [ std-srvs pluginlib roscpp diagnostic-updater message-runtime socketcan-interface std-msgs roslib canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    #license = lib.licenses.LGPLv3;
  };
}
