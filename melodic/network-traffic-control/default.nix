
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-network-traffic-control";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_traffic_control/1.0.15-0.tar.gz;
    sha256 = "688195036f7eb3da7fe668ddd56bafdc53648a11e81fb61627e20bfca0187f70";
  };

  buildInputs = [ rospy dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that allows control of network emulation parameters such as bandwidth, loss and latency for a Linux network interface.'';
    #license = lib.licenses.BSD;
  };
}
