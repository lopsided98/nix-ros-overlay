
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-ros";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/humble/ament_cmake_ros/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "c71e90654d856f00bdd212dfdf5e06225b481cbddff93980c2f1f6e293ba4a9a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ];

  meta = {
    description = "The ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
