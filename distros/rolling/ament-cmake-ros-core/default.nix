
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-libraries, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-ros-core";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/ament_cmake_ros_core/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "34eb0619d019a317ad857cd7d851323c48aa760bf831b9cdff98489c0cbd3e34";
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
