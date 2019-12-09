
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, gtest-vendor, ament-cmake-test, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-gtest";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_gtest/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "d3134f4f8676af0eaadba25e6efdbf132a0033a5a25000373cc6d33fc044089d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gtest gtest-vendor ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
