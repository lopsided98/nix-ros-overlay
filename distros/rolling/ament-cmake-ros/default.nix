
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "848fd0c67de193a9a987afd2e3fc5757f5f694e48c490b5127837baad36462ac";
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
