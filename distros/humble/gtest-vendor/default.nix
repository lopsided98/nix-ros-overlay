
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-gtest-vendor";
  version = "1.10.9004-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/humble/gtest_vendor/1.10.9004-4.tar.gz";
    name = "1.10.9004-4.tar.gz";
    sha256 = "ae16d684d1edfd58c42d6ae250d16d07c888c789a601ab56bb964d23f90990c4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
