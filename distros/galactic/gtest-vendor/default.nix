
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-gtest-vendor";
  version = "1.10.9003-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/galactic/gtest_vendor/1.10.9003-2.tar.gz";
    name = "1.10.9003-2.tar.gz";
    sha256 = "f13bf156d50ceaeb2ff668daab276470f5f68877e8275a9a03ff47dfae11eeee";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
