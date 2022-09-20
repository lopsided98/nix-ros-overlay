
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, pythonPackages, rospy, smclib, util-linux }:
buildRosPackage {
  pname = "ros-melodic-bondpy";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bondpy/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "715a74c4e9e51b449dbc01ecda2952e09bea6e1f60bd98e9d3d20c97c0fb5ed4";
  };

  buildType = "catkin";
  buildInputs = [ bond catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ rospy smclib util-linux ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
