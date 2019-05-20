
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, rtt-rospack, genmsg, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-roscomm";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_roscomm/2.9.2-1.tar.gz;
    sha256 = "7468576737f7e469721c1c6e59b1b268c8b9d75b2a404fcdef5af425428e5040";
  };

  buildInputs = [ rtt-rosnode rtt-ros rtt-rospack genmsg roscpp ];
  propagatedBuildInputs = [ rtt-rosnode rtt-ros rtt-rospack genmsg roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_roscomm provides the necessary template files and cmake macros for
    automatic rtt typekit and transport generation from ROS msg files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
