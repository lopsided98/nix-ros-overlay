
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-gtest-vendor";
  version = "1.11.9000-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/rolling/gtest_vendor/1.11.9000-2.tar.gz";
    name = "1.11.9000-2.tar.gz";
    sha256 = "3a80c0855bccd88896d9e5200450a2daa774b24a7e68fe9f470d0e3dc734c4a3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
