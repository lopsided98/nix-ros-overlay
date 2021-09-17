
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-foxy-gmock-vendor";
  version = "1.8.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/foxy/gmock_vendor/1.8.9001-1.tar.gz";
    name = "1.8.9001-1.tar.gz";
    sha256 = "581615dd9b22b96edc37031e5198792b5166e9ad36bda361f72d748c20c1ef38";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
