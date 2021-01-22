
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rtt-ros }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosnode";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosnode/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "5096a5df675cccf88117ff81f0807462458f4c9032881064e162fdfe2831ead5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
