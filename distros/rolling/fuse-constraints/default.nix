
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-fuse-constraints";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_constraints/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "419ef1c50c960cd62653db389ebd01d7950b21170396bdffce53b0ca95d27d33";
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
