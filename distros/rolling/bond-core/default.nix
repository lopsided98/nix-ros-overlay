
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib }:
buildRosPackage {
  pname = "ros-rolling-bond-core";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/rolling/bond_core/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "b20f509e3cd1f814316a6b86283403c904d35582c623b812ea9de33c669d5e26";
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
