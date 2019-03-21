
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, rtt-rospack, genmsg, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-roscomm";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_roscomm/2.9.1-0.tar.gz;
    sha256 = "1f38ac50d24d8ac6a5ee9b7eeeecbdace2b80192adb1b82c63f5dd8f9b0a2084";
  };

  propagatedBuildInputs = [ rtt-rosnode rtt-ros rtt-rospack genmsg roscpp ];
  nativeBuildInputs = [ rtt-rosnode rtt-ros rtt-rospack genmsg catkin roscpp ];

  meta = {
    description = ''rtt_roscomm provides the necessary template files and cmake macros for
    automatic rtt typekit and transport generation from ROS msg files'';
    #license = lib.licenses.BSD;
  };
}
