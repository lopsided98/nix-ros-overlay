
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, gtest-vendor, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-fuse-constraints";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_constraints/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "88db97560a0490793b7864c76a5115e3d029429fef0ab3c76eee8ef129df6dc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ament-cmake-ros ceres-solver eigen fuse-core fuse-graphs fuse-variables geometry-msgs gtest-vendor pluginlib rclcpp suitesparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_constraints package provides a set of commonly used constraint types, such as direct measurements on \\
    state variables (absolute constraints) or measurements of the state changes (relative constraints).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
