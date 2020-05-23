
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, bondcpp, bondpy, catkin, smclib }:
buildRosPackage {
  pname = "ros-noetic-bond-core";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bond_core/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "22a58d93f038a746f27ae2f311b365be6e11a19263fa22d6b8127142e76049c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bond bondcpp bondpy smclib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing. The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
