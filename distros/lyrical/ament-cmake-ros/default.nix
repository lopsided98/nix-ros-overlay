
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw-test-fixture-implementation }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-ros";
  version = "0.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/lyrical/ament_cmake_ros/0.15.8-1.tar.gz";
    name = "0.15.8-1.tar.gz";
    sha256 = "3a8d4cda0d4662733ba9644b4cb5702083c184dd85defa599d4cffa1987489c9";
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
