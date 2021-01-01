
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pythonPackages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "4ba99ef99bcdd5560fe017b87922e92caaca5c3da88c664282e0bc0cdbf63c91";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
