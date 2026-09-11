
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-ros";
  version = "0.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/jazzy/ament_cmake_ros/0.12.2-1.tar.gz";
    name = "0.12.2-1.tar.gz";
    sha256 = "77017c5b43c4a47e0fe41ca4ee9912756ec47ea5e75c3c66f90f0abe9aca6396";
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
