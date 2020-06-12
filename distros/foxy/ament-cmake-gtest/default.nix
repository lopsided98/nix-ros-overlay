
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-gtest";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_gtest/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "9d2f4253cc491dab3d3312fb0c9c88915486c046e1c1377d50f17c3c949396f4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
