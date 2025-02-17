
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, smclib }:
buildRosPackage {
  pname = "ros-humble-bond-core";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/humble/bond_core/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "6cbcdd4f802894db7a2ab1f926b4023e05d27bc3d200dea37bbeee9001beefb8";
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
