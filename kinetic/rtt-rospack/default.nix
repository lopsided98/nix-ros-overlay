
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, rtt-ros }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rospack";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rospack/2.9.1-0.tar.gz;
    sha256 = "dcb1cce59a0b22a2bd49d57750885cf1ddfb5a7896364b39f1ed80cc8c6bad4b";
  };

  propagatedBuildInputs = [ roslib rtt-ros ];
  nativeBuildInputs = [ catkin roslib rtt-ros ];

  meta = {
    description = ''rtt_rospack provides an RTT plugin to use rospack to find packages in your ROS_PACKAGE_PATH'';
    #license = lib.licenses.BSD;
  };
}
