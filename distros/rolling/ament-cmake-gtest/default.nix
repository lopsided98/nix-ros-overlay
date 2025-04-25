
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gtest";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gtest/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "15fe551311d4a1626e703f5b54ae7cdff6aef2e19189eb172c1eebf3eca319ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test gtest gtest-vendor ];

  meta = {
    description = "The ability to add gtest-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
