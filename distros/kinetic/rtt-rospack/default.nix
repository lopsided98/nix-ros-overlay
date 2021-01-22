
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, rtt-ros }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rospack";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rospack/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "d40ef41d9b277c6b8e5cd7558058a28a5a716f180a38218187a065295d942d2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslib rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_rospack provides an RTT plugin to use rospack to find packages in your ROS_PACKAGE_PATH'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
