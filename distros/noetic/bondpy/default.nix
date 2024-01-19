
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, python3Packages, rospy, smclib, util-linux }:
buildRosPackage {
  pname = "ros-noetic-bondpy";
  version = "1.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondpy/1.8.6-1.tar.gz";
    name = "1.8.6-1.tar.gz";
    sha256 = "392cc88d81ede0d5902f36458a88cefe3c66213f4def1cb972d4c4fe80af693b";
  };

  buildType = "catkin";
  buildInputs = [ bond catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy smclib util-linux ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
