
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, rtt-ros }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosparam";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosparam/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "3c9d8518696741768458d10b479a496023d4850370800fcdaf181e1bed9fd4cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT service and service-requester for associating RTT component properties with ROS parameters'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
