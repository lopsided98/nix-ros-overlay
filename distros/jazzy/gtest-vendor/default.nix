
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-gtest-vendor";
  version = "1.14.9000-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/jazzy/gtest_vendor/1.14.9000-2.tar.gz";
    name = "1.14.9000-2.tar.gz";
    sha256 = "7d19c3bc89e66acbff13b4f2d5a4e1b43c0d35aea2202ad1473ca902e5a7d20c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides GoogleTest.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
