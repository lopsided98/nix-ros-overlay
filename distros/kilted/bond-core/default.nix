
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib }:
buildRosPackage {
  pname = "ros-kilted-bond-core";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/kilted/bond_core/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "13aeaa8b47a2e1b171f31b3b7f2a849afc4704a496d158dc4061a5fc485d9a27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bond bondcpp smclib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing. The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.";
    license = with lib.licenses; [ bsd3 ];
  };
}
