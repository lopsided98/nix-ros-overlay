
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-ros, roscpp, eigen }:
buildRosPackage {
  pname = "ros-lunar-rtt-rosparam";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rosparam/2.9.2-1.tar.gz;
    sha256 = "20897c124809327e81388a79301ac1522cfb4fe059bd120376b538fff9b8ec43";
  };

  buildInputs = [ roscpp rtt-ros eigen ];
  propagatedBuildInputs = [ roscpp rtt-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT service and service-requester for associating RTT component properties with ROS parameters'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
