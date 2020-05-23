
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, utillinux }:
buildRosPackage {
  pname = "ros-noetic-bondcpp";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondcpp/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "ff7e50c91051a60b26ee28a2817243516f4f8d0c79d37a58e52d08829ef8d123";
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
