
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, rospy, smclib, utillinux }:
buildRosPackage {
  pname = "ros-melodic-bondpy";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bondpy/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "c7dde4bdb17c65092192cf7f2b28294b6271f6d19cf3778a90106b74f0750781";
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
