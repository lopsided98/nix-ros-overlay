
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-kilted-gmock-vendor";
  version = "1.15.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/kilted/gmock_vendor/1.15.1-2.tar.gz";
    name = "1.15.1-2.tar.gz";
    sha256 = "22f4479002f36360d55fa00ece18a3ec24c5451015a10070b79cf3074e3d09ec";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleMock.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
