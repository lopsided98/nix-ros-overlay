
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-humble-gmock-vendor";
  version = "1.10.9006-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/humble/gmock_vendor/1.10.9006-1.tar.gz";
    name = "1.10.9006-1.tar.gz";
    sha256 = "cbc87b003ed0fed24f465cbd8a8a76d2daf0b804ccef81a58cad0fc1b2520b34";
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
