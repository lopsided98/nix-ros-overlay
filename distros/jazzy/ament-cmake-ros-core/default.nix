
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-ros-core";
  version = "0.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/jazzy/ament_cmake_ros_core/0.12.2-1.tar.gz";
    name = "0.12.2-1.tar.gz";
    sha256 = "d0902681e114605375c4921331ecd6f78e6fb213146bb8b55003818e70d1f55d";
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
