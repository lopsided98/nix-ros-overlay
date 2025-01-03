
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-variables";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_variables/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "b2b5b07b3eb658ecbb158b36187c2e9980fd95309bacc5048c5c04798c731aa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_variables package provides a set of commonly used variable types, such as 2D and 3D positions, \\
    orientations, velocities, and accelerations.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
