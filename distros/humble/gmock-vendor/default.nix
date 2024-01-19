
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-humble-gmock-vendor";
  version = "1.10.9004-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/humble/gmock_vendor/1.10.9004-4.tar.gz";
    name = "1.10.9004-4.tar.gz";
    sha256 = "efe60aaf74a6119bea8bacd12ca53ec5d4f4b7fb1e2e21f5785071385afed28a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
