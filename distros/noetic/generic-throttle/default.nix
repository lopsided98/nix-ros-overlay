
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, python3Packages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-generic-throttle";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/generic_throttle/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "bed8095818cd955e0afad4a0f3c9db2872c51b1ff44c2c5f4b0e08a534f722c4";
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
