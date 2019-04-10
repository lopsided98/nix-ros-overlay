
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, smclib, utillinux, bond }:
buildRosPackage {
  pname = "ros-lunar-bondpy";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/lunar/bondpy/1.8.3-0.tar.gz;
    sha256 = "c2b2ddcb5af8c31e4c07ea464b52a8fb733e70cb14c2779ae2367ee18fab7a4f";
  };

  buildInputs = [ smclib bond rospy ];
  propagatedBuildInputs = [ smclib utillinux rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    #license = lib.licenses.BSD;
  };
}
