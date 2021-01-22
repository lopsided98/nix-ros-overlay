
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, roscpp, rtt-ros, rtt-rosnode, rtt-rospack }:
buildRosPackage {
  pname = "ros-kinetic-rtt-roscomm";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_roscomm/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "08ad9fa677c1ecbcba2a6fef4dfe4699e810fbbc56a6c7e38e4f1eab8963161b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg roscpp rtt-ros rtt-rosnode rtt-rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_roscomm provides the necessary template files and cmake macros for
    automatic rtt typekit and transport generation from ROS msg files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
