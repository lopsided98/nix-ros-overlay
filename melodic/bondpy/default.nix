
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, smclib, utillinux, bond }:
buildRosPackage {
  pname = "ros-melodic-bondpy";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bondpy/1.8.3-0.tar.gz;
    sha256 = "c7dde4bdb17c65092192cf7f2b28294b6271f6d19cf3778a90106b74f0750781";
  };

  buildInputs = [ smclib bond rospy ];
  propagatedBuildInputs = [ smclib utillinux rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
