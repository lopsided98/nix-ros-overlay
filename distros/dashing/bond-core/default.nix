
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib, test-bond }:
buildRosPackage {
  pname = "ros-dashing-bond-core";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/dashing/bond_core/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "10c6660f117efc80e3ce007e513436e20e8e6534ce43f6822ee81c83ff154515";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ bond bondcpp smclib test-bond ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing. The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
