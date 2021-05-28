
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-galactic-gmock-vendor";
  version = "1.10.9003-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/galactic/gmock_vendor/1.10.9003-2.tar.gz";
    name = "1.10.9003-2.tar.gz";
    sha256 = "ea92f59d0db55cf253bfaae34c22ec926cdc018812fa14fd94390c3b2edb28aa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
