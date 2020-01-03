
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, bondcpp, bondpy, catkin, smclib }:
buildRosPackage {
  pname = "ros-melodic-bond-core";
  version = "1.8.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bond_core/1.8.3-0.tar.gz";
    name = "1.8.3-0.tar.gz";
    sha256 = "c295706b5def3265868e81d63c1ee31e622e6f286cfde31a8a6c8ce43f9a07b5";
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
