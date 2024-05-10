
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-graphs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_graphs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "dc3690e2ca7b795973e40f085d8e546c26d27f670186d83ac1571b1bb5cfee7c";
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
