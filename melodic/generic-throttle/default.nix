
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rostopic, rospy }:
buildRosPackage {
  pname = "ros-melodic-generic-throttle";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/generic_throttle/0.6.14-1.tar.gz;
    sha256 = "f31dd28bb3f853623614e04c3dd970b2e6e2576f61958bb27b61d0c33aea2fe6";
  };

  propagatedBuildInputs = [ cv-bridge rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
