
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-network-traffic-control";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_traffic_control/1.0.13-2.tar.gz;
    sha256 = "a6ab6e3990f79606e3b67d8e1ee877c85a13469f3fcfc51faa321d79dfceafe1";
  };

  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ rospy catkin dynamic-reconfigure ];

  meta = {
    description = ''A ROS node that allows control of network emulation parameters such as bandwidth, loss and latency for a Linux network interface.'';
    #license = lib.licenses.BSD;
  };
}
