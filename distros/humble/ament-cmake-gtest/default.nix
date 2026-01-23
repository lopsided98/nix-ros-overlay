
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-gtest";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_gtest/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "f97843d517a5a2c987ff0e26c58519d8ce894774716564f2fa3b5a3bc5f92987";
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
