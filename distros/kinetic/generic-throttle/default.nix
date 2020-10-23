
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pythonPackages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-generic-throttle";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/generic_throttle/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "c77c396e2d140f6b7fb0278390288d59c03e13300400a264da1146cfd3c96b41";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
