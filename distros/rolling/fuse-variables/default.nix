
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-variables";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_variables/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "10205c842776ed0932f6499e1ad4079788c49b068d0576323207c35292614f8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_variables package provides a set of commonly used variable types, such as 2D and 3D positions, \
    orientations, velocities, and accelerations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
