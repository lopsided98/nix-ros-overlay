
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pythonPackages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "fbdb7e283cd0ed8346407bd9f632d6f81f866fa4596ca877c5f4ef2f95ed8e2b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
