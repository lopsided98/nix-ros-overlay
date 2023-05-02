
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.10.9005-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.10.9005-1.tar.gz";
    name = "1.10.9005-1.tar.gz";
    sha256 = "2707731a0bd4da7dce25143228eb90d86749db1c88251cfc2c80551d847db108";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
