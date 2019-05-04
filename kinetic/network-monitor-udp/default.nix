
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, actionlib, message-runtime, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-network-monitor-udp";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/network_monitor_udp/1.0.15-0.tar.gz;
    sha256 = "f8d6af3b278da088a1eb3a77ded41253797b55afebe21a4540733f0ce8b6bc4b";
  };

  buildInputs = [ actionlib-msgs rospy message-generation actionlib diagnostic-msgs ];
  propagatedBuildInputs = [ actionlib-msgs rospy message-runtime actionlib diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Facilities to monitor a network connection by sending UDP packets from
    a client to a server, which bounces them back to the client. The client
    collects statistics on latency and loss. The server is a C standalone utility
    or a ROS node. The client can be a ROS node, a standalone utility or a python class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
