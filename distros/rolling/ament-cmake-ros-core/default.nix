
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros-core";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros_core/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "ca46ea587c7fe51da11e40df7e5e651173549136bedca90c6961d9249871b379";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];

  meta = {
    description = "Core ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
