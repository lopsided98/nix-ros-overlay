
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-fuse-constraints";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_constraints/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d436183ee937b57fe8704e16b6cc24f0386dfbf9b3b9707e9950b289f92c6fa3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-core fuse-graphs fuse-variables geometry-msgs pluginlib rclcpp suitesparse ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_constraints package provides a set of commonly used constraint types, such as direct measurements on \\
    state variables (absolute constraints) or measurements of the state changes (relative constraints).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
