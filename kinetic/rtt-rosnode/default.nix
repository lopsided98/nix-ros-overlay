
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosnode";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosnode/2.9.1-0.tar.gz;
    sha256 = "50e67866ba198b1ea3e868d575e325f67c9c95271a207a9eca27cfbce551d5f9";
  };

  buildInputs = [ roscpp rtt-ros ];
  propagatedBuildInputs = [ roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
