
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-ros";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/humble/ament_cmake_ros/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "450f306cb53f820c9048af0f61d5638efb706d1a981ec8710c5c7636f1a363fe";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ];

  meta = {
    description = ''The ROS specific CMake bits in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
