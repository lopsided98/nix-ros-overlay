
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, python3Packages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-generic-throttle";
  version = "0.6.33-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/generic_throttle/0.6.33-1.tar.gz";
    name = "0.6.33-1.tar.gz";
    sha256 = "bab46157741cdb6b1a083c1e5e47a10532ee32e23868643a8bf8db7a11c97ac7";
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
