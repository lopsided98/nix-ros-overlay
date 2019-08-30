
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rostopic, rospy }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.14-1.tar.gz;
    sha256 = "a5c438d170ff589aac32cc111d56ff1ff1b1594e78418ccdceaacbbdcac4b5da";
  };

  propagatedBuildInputs = [ cv-bridge rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
