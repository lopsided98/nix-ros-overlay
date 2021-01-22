
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, rospy, smclib, utillinux }:
buildRosPackage {
  pname = "ros-kinetic-bondpy";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/kinetic/bondpy/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "0aa53cb5fb4da50b9d6a3422ecd25e2bf2a25e33e55080f95349da79eb228fe1";
  };

  buildType = "catkin";
  buildInputs = [ bond ];
  propagatedBuildInputs = [ rospy smclib utillinux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
