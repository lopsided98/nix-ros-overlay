
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-gmock-vendor";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gmock_vendor/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "ddacd74b24ae841eaf8d1c3f6bfd3a52e9395a4310a81ac9dcb6b858f472c476";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleMock.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
