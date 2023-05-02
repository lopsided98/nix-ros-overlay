
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, python3Packages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-generic-throttle";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/generic_throttle/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "d2f9387192531ec3f0a41f6fc7d069bdc642cfb441077ac9caf7a801f11e4c86";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
