
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-ros, roscpp, eigen }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosparam";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosparam/2.9.1-0.tar.gz;
    sha256 = "7727b0f85c88c28f9cd48e0843223afbdaf24ed9dbffe22016a155f1618573c2";
  };

  buildInputs = [ roscpp rtt-ros eigen ];
  propagatedBuildInputs = [ roscpp rtt-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT service and service-requester for associating RTT component properties with ROS parameters'';
    #license = lib.licenses.BSD;
  };
}
