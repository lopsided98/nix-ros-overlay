
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, actionlib, message-runtime, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-melodic-network-monitor-udp";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_monitor_udp/1.0.13-2.tar.gz;
    sha256 = "d203956bc49ba42bf2f54ef0cb57253ec42fd8278260bd5090fd998765198154";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib rospy diagnostic-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs actionlib diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Facilities to monitor a network connection by sending UDP packets from
    a client to a server, which bounces them back to the client. The client
    collects statistics on latency and loss. The server is a C standalone utility
    or a ROS node. The client can be a ROS node, a standalone utility or a python class.'';
    #license = lib.licenses.BSD;
  };
}
