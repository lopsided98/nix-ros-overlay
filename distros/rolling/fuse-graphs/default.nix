
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, gtest-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-graphs";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_graphs/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "a9700bb988ea16e48acf7ee0b7b992f211c28604bb3ea25e1836067c11e1e15f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ament-cmake-ros ceres-solver fuse-core gtest-vendor pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_graphs package provides some concrete implementations of the fuse_core::Graph interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
