
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rostopic, rospy }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.12-1.tar.gz;
    sha256 = "ec971d39f48e2a59065c2a47904ce21fcfeece1b1ab6d9a5d508bb0f0273ea8d";
  };

  propagatedBuildInputs = [ cv-bridge rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
