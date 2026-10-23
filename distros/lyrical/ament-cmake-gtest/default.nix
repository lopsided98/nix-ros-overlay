
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-gtest";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_gtest/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "04344ed94c19739106459dff29a14665e9845b0482ee9a8dc2689af6ef6b3d8d";
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
