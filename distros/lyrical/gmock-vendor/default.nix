
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-lyrical-gmock-vendor";
  version = "1.16.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/lyrical/gmock_vendor/1.16.1-3.tar.gz";
    name = "1.16.1-3.tar.gz";
    sha256 = "2ef16586c1ce1c698575120897762180da18ff3519cfa6348c3d56a1a5e53baf";
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
