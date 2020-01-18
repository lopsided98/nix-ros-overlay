
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "9eb448ec80ae9ceea827fc77686a0561e3d4e6911f7a3afd01ccca8eb868e081";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
