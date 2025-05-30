
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, util-linux }:
buildRosPackage {
  pname = "ros-noetic-bondcpp";
  version = "1.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondcpp/1.8.7-1.tar.gz";
    name = "1.8.7-1.tar.gz";
    sha256 = "9aacfb8a4bbb131bde3812d127bfc4c6776f89c5b718b8fe58c06da3974caa1b";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ bond boost roscpp smclib util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ implementation of bond, a mechanism for checking when
    another process has terminated.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
