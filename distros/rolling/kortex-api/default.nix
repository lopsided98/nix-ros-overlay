
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-kortex-api";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_api/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "6f09a0d2a8ae4194e0fc063f33c643cddcf5d6d009a139713e491b6c120c020e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KINOVA KORTEX™ API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
