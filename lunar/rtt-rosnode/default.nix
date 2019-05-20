
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-ros, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-rosnode";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rosnode/2.9.2-1.tar.gz;
    sha256 = "074a788cb6e2a10cd16ce5c6684032dce7b4a0daa956071a502a615008069c98";
  };

  buildInputs = [ roscpp rtt-ros ];
  propagatedBuildInputs = [ roscpp rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
