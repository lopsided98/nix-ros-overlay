
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-gtest";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_gtest/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "dcc6aad4664e4b19a5b8f67c44a5a9e6677d8ebc3136c16f2dedde8d3b3aa9e9";
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
