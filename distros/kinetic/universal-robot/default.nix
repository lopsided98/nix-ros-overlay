
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, universal-robots }:
buildRosPackage {
  pname = "ros-kinetic-universal-robot";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/universal_robot/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "f6b205055847e84bb8ca23f1f5fc0a199347f0d56d71f232dc234b08c6d99dbd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ universal-robots ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers, description, and utilities for Universal Robot Arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
