
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-gtest";
  version = "1.3.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_gtest/1.3.4-2.tar.gz";
    name = "1.3.4-2.tar.gz";
    sha256 = "b8ec12df57850dfa21dac8c499f8353d5b1e146f0aaed3e72efc352e2d12312d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test gtest gtest-vendor ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
