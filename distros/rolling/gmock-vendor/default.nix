
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-gmock-vendor";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gmock_vendor/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "3cb90e84adb7d460e70c3a6686bbf3742f4c8e76a75e27b29465cbffdcc09d1d";
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
