
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, python3Packages, rospy, smclib, util-linux }:
buildRosPackage {
  pname = "ros-noetic-bondpy";
  version = "1.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondpy/1.8.7-1.tar.gz";
    name = "1.8.7-1.tar.gz";
    sha256 = "ac1d299efc9320efd117597fb04ff371bee268761bad44c23eb27c34ea1d2c07";
  };

  buildType = "catkin";
  buildInputs = [ bond catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy smclib util-linux ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Python implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
