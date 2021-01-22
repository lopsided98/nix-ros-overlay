
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, diagnostic-msgs, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-network-monitor-udp";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/network_monitor_udp/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "f8d6af3b278da088a1eb3a77ded41253797b55afebe21a4540733f0ce8b6bc4b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs diagnostic-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Facilities to monitor a network connection by sending UDP packets from
    a client to a server, which bounces them back to the client. The client
    collects statistics on latency and loss. The server is a C standalone utility
    or a ROS node. The client can be a ROS node, a standalone utility or a python class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
