
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, diagnostic-updater, message-generation, message-runtime, pluginlib, roscpp, roslib, socketcan-interface, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-canopen-chain-node";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_chain_node/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "be5a71b21bebe322b446ac3e1981cedc8be87076b2fb0b615844f3e714e831f5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ canopen-master diagnostic-updater message-runtime pluginlib roscpp roslib socketcan-interface std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
