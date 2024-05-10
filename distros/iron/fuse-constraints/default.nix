
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-iron-fuse-constraints";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/iron/fuse_constraints/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "02b5d6abfc092b43196054d818df780f026b9254e0d0e026e0e05297ef93468a";
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
