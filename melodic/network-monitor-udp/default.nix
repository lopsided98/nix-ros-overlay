
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, diagnostic-msgs, actionlib, catkin, actionlib-msgs, rospy, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-network-monitor-udp";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_monitor_udp/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "6d2e8f5054923d181f20ddee18fe669fefa9bafbc3e39edf2ed77d1b629a5ea4";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs actionlib actionlib-msgs rospy message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs actionlib actionlib-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Facilities to monitor a network connection by sending UDP packets from
    a client to a server, which bounces them back to the client. The client
    collects statistics on latency and loss. The server is a C standalone utility
    or a ROS node. The client can be a ROS node, a standalone utility or a python class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
