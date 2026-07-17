
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gtest";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gtest/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "03bbc700996f9a9748fafc49d88c5180da02fb1deb653259ae448b7368e4f163";
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
