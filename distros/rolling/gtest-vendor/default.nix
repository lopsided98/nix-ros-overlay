
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "947aee3ce6e40fa9a725f99936eb5a3f62de2b50d261670e4d328aad303f09c3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
