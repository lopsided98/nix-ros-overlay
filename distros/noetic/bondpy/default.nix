
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, pythonPackages, rospy, smclib, utillinux }:
buildRosPackage {
  pname = "ros-noetic-bondpy";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondpy/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "8cc92ec3a0514a803fdb422d0b23d4188c937499386126846ef53df4ab7eac31";
  };

  buildType = "catkin";
  buildInputs = [ bond ];
  propagatedBuildInputs = [ rospy smclib utillinux ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
