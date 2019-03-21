
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-network-traffic-control";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/network_traffic_control/1.0.15-0.tar.gz;
    sha256 = "ad9a62ac1231a0bdacd6112805d018ce5d3d654682918794704d70b4ea619b2f";
  };

  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ rospy catkin dynamic-reconfigure ];

  meta = {
    description = ''A ROS node that allows control of network emulation parameters such as bandwidth, loss and latency for a Linux network interface.'';
    #license = lib.licenses.BSD;
  };
}
