
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, catkin, smclib, roscpp, utillinux, bond }:
buildRosPackage {
  pname = "ros-kinetic-bondcpp";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/kinetic/bondcpp/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "169af3f64acf62ecf5dfbfe9e3d26bdf8f5ad36e921ff5a3821c0bb8bd848a9a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules boost smclib roscpp utillinux bond ];
  propagatedBuildInputs = [ boost smclib roscpp utillinux bond ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
