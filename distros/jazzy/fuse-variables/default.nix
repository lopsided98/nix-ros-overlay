
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-fuse-variables";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_variables/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "a8df3df101a491273650466e9d5661e76cc9d0e7669db3ca850f36d7d8b572d8";
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
