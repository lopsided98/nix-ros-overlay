
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-fuse-constraints";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_constraints/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "1543cc408735ad55f48f384bff64392930d97bdc609f12c99c5ad988f7f0e41e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-core fuse-graphs fuse-variables geometry-msgs pluginlib rclcpp suitesparse ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_constraints package provides a set of commonly used constraint types, such as direct measurements on \
    state variables (absolute constraints) or measurements of the state changes (relative constraints).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
