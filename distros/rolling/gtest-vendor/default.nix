
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "ae5437a528d5e19209c5b9fa6383d9edf59ed1071ae4496433422114e710700b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
