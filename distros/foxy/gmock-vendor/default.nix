
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-foxy-gmock-vendor";
  version = "1.8.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/foxy/gmock_vendor/1.8.9000-1.tar.gz";
    name = "1.8.9000-1.tar.gz";
    sha256 = "fdce913e89d9dd510744956016fdc050556a3be85f2c680426afa49ab042fef6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
