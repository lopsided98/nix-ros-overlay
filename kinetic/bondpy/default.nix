
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, utillinux, catkin, bond, smclib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-bondpy";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/kinetic/bondpy/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "0aa53cb5fb4da50b9d6a3422ecd25e2bf2a25e33e55080f95349da79eb228fe1";
  };

  buildType = "catkin";
  buildInputs = [ smclib rospy bond ];
  propagatedBuildInputs = [ smclib utillinux rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
