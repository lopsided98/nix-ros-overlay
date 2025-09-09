
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-fuse-graphs";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_graphs/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "f6be241a39bff3648afdf187c82a20df597efd0bed3af8fefdbd3a3024f2e562";
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
