
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, bondcpp, bondpy, catkin, smclib }:
buildRosPackage {
  pname = "ros-noetic-bond-core";
  version = "1.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bond_core/1.8.6-1.tar.gz";
    name = "1.8.6-1.tar.gz";
    sha256 = "32a0898dc6881cf91f411f8eef9b329950f006017ab1c037a801cbbf9b0bbcd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
