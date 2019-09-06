
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-gtest-vendor";
  version = "1.8.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/crystal/gtest_vendor/1.8.0-0.tar.gz";
    name = "1.8.0-0.tar.gz";
    sha256 = "f670a11cca4cf323c27c007c363ae1cdedcab5b04894fe9fb427075855c25854";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
