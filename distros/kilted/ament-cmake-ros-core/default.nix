
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-libraries, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-ros-core";
  version = "0.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/ament_cmake_ros_core/0.14.6-1.tar.gz";
    name = "0.14.6-1.tar.gz";
    sha256 = "dfc6998256e5cedbe9d2810f0711286505a31294e9389663ea0388d588e8f219";
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
