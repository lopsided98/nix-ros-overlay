
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gtest";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gtest/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "677c17ac10ec0590c4bf4ffaaa84c9417bf3ad586b74708f85e228a56f918ce6";
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
