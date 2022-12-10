
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.10.9004-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.10.9004-3.tar.gz";
    name = "1.10.9004-3.tar.gz";
    sha256 = "5a023d69d03459948a5ca9d69911bea9e2dbbb176080c425738997fcaf72ae45";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
