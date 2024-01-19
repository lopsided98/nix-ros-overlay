
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-gmock-vendor";
  version = "1.11.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gmock_vendor/1.11.9000-1.tar.gz";
    name = "1.11.9000-1.tar.gz";
    sha256 = "b1942108e40a22e9b6450b09be08154e993f225542989e3bd747930f532dcaaf";
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
