
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.11.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.11.9000-1.tar.gz";
    name = "1.11.9000-1.tar.gz";
    sha256 = "e5524eefa9b0803126c55ad0de5cd1e0aae6cba0a218166a16f4691126df6ed3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
