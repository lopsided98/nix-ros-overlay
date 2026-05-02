
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gtest";
  version = "2.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gtest/2.8.7-2.tar.gz";
    name = "2.8.7-2.tar.gz";
    sha256 = "62d7e66ad77df05a7243509621adf2e3143544206f7f21e91f7a449aa91fb496";
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
