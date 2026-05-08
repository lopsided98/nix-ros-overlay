
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, eigen, fuse-core, fuse-graphs, fuse-variables, gbenchmark, geometry-msgs, gtest-vendor, pluginlib, rclcpp, suitesparse }:
buildRosPackage {
  pname = "ros-kilted-fuse-constraints";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_constraints/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "91434eacb773118de51cf2a4d0d62b2f363d883f547e2bc0580aed8d41caac36";
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
