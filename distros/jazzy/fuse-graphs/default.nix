
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-fuse-graphs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_graphs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "9b84ee4d3602f38209da01df26a1ef0160dc55575f5d95f9cac80f7d3ad1ec5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_graphs package provides some concrete implementations of the fuse_core::Graph interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
