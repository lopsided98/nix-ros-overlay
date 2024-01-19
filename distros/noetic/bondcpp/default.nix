
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, util-linux }:
buildRosPackage {
  pname = "ros-noetic-bondcpp";
  version = "1.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bondcpp/1.8.6-1.tar.gz";
    name = "1.8.6-1.tar.gz";
    sha256 = "0757b8c5410ae008a9238d13371c374eef0843c208aeb6be4965061239a56afc";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ bond boost roscpp smclib util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
