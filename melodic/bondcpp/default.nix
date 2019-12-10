
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, utillinux }:
buildRosPackage {
  pname = "ros-melodic-bondcpp";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bondcpp/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "617c5cf1ac30c5af9d02024bef3b9a010ff70fb3779220d77eb9e4863530c790";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ bond boost roscpp smclib utillinux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
