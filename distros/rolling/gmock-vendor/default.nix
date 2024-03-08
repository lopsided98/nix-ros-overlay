
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-gmock-vendor";
  version = "1.11.9000-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gmock_vendor/1.11.9000-2.tar.gz";
    name = "1.11.9000-2.tar.gz";
    sha256 = "4bbcee514276e50cf1293ba0ec4ff9e09620962ad9ce3022a94565795e7557f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
