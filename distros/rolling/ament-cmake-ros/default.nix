
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw-test-fixture-implementation }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros";
  version = "0.15.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros/0.15.7-2.tar.gz";
    name = "0.15.7-2.tar.gz";
    sha256 = "e05336e6f0d70237a16b43a18eaf7b5f8914c9c8d3de60efdba156a31cc8f672";
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
