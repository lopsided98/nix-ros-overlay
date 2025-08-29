
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-gtest-vendor";
  version = "1.15.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/kilted/gtest_vendor/1.15.1-2.tar.gz";
    name = "1.15.1-2.tar.gz";
    sha256 = "09102f584be2ce36fc81137d32463fa18f77f11fffb4dd856cd777716d7d444f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
