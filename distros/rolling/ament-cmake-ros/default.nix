
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw-test-fixture-implementation }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "4c3c233909e1c34641f2f09d7d58b0903627faa24c5f421a1a9d051b78ad7f86";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros-core rmw-test-fixture-implementation ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros-core ];

  meta = {
    description = "The ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
