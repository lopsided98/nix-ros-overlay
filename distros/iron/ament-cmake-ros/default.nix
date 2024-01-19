
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-ros";
  version = "0.11.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/iron/ament_cmake_ros/0.11.2-4.tar.gz";
    name = "0.11.2-4.tar.gz";
    sha256 = "57b954b78aa7ad4e4f6ee6226f30f22d42cb46fdfe7a48936b2995a9c9c106b9";
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
