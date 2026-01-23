
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-auto";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_auto/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "6ed330b8eee506c57fe931fef12866c102b65c49c93fee3460c10241e0b6daf5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
