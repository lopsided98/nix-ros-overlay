
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-gtest-vendor";
  version = "1.16.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/lyrical/gtest_vendor/1.16.1-3.tar.gz";
    name = "1.16.1-3.tar.gz";
    sha256 = "1f34231f50b06e9047d26d4f553b0e5f8975e0ff4ba6082f303614bb925795a6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
