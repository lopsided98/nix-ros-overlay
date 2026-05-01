
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib }:
buildRosPackage {
  pname = "ros-lyrical-bond-core";
  version = "4.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/lyrical/bond_core/4.4.0-3.tar.gz";
    name = "4.4.0-3.tar.gz";
    sha256 = "b36967142c53c942070c60e391ceac8e21cee83e1e9539f038ce7322ec9584f0";
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
