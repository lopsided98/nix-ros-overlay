
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gmock";
  version = "2.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gmock/2.8.5-1.tar.gz";
    name = "2.8.5-1.tar.gz";
    sha256 = "978e8193f842806d699715f975fb3ee730cdb490f8998abb2dceb7fcb515ed25";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gmock-vendor gtest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-gtest ament-cmake-test gmock-vendor gtest ];

  meta = {
    description = "The ability to add Google mock-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
