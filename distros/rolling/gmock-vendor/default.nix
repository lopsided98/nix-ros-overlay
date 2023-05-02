
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-gmock-vendor";
  version = "1.10.9005-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gmock_vendor/1.10.9005-1.tar.gz";
    name = "1.10.9005-1.tar.gz";
    sha256 = "45b54a5db11aff53fb844e261ee8679a4905182af1953efaf0e84478a38c8a85";
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
