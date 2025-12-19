
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-libraries, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros-core";
  version = "0.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros_core/0.15.6-1.tar.gz";
    name = "0.15.6-1.tar.gz";
    sha256 = "742e085acb136376d89718cefba0890c0eb6229e25bf9de7d9f59ba66be77e09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-libraries ];

  meta = {
    description = "Core ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
