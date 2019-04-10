
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, catkin, smclib, roscpp, utillinux, bond }:
buildRosPackage {
  pname = "ros-lunar-bondcpp";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/lunar/bondcpp/1.8.3-0.tar.gz;
    sha256 = "6de1d1c3c332ae222dbfe86cdd3a5b33cb8befe861eb9cf02842c65a3c17fb66";
  };

  buildInputs = [ cmake-modules boost smclib roscpp utillinux bond ];
  propagatedBuildInputs = [ boost smclib roscpp utillinux bond ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    #license = lib.licenses.BSD;
  };
}
