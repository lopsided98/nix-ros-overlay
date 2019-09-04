
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-crystal-gmock-vendor";
  version = "1.8.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/googletest-release/archive/release/crystal/gmock_vendor/1.8.0-0.tar.gz;
    sha256 = "c992c3560bfbf7ea20a1eeb8330b99c796f180e7b9d33bf2ce9d5d2cad429810";
  };

  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
