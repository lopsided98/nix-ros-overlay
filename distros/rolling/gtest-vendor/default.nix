
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "2216a493ce0f14652a4f18cca839030e1f1e8ed7815dc8f668390efca68da6bf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
