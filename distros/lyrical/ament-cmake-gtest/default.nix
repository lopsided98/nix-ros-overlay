
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-gtest";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_gtest/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "09754c0415fc1fc8db8b2a6e9f5d34911c6f0b4bcddc817385fd45d015021e37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test gtest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test gtest ];

  meta = {
    description = "The ability to add gtest-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
