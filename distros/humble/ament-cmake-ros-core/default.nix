
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-ros-core";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/humble/ament_cmake_ros_core/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "22f828dd299110c5b9a05f11ea2e49b37d0cf8c48d2dd4fa916501f3a1c69799";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ament-cmake-export-targets ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ];

  meta = {
    description = "Core ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
