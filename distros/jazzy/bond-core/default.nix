
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib }:
buildRosPackage {
  pname = "ros-jazzy-bond-core";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/bond_core/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "808139178cb54ce2009936b276e0d4125ddfd309613b719d3e79ffc1150df1e0";
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
