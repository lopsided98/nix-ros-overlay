
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-gtest-vendor";
  version = "1.10.9006-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/humble/gtest_vendor/1.10.9006-1.tar.gz";
    name = "1.10.9006-1.tar.gz";
    sha256 = "912593c99ddf9072c2a60b9fe0ae7f2356b935aee723702a4bf6a397d5f4d263";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
