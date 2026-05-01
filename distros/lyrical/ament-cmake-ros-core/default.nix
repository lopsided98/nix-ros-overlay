
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-libraries, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-ros-core";
  version = "0.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/lyrical/ament_cmake_ros_core/0.15.8-1.tar.gz";
    name = "0.15.8-1.tar.gz";
    sha256 = "54496f97388edcf73230629b0f6192a560440a987fee6a8c026c6e04784d7093";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ament-cmake-export-targets ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ament-cmake-libraries ];

  meta = {
    description = "Core ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
