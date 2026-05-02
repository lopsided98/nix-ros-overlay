
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, gtest-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-graphs";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_graphs/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "abf6e0978fe2a62061adfd9eecab0914a814ea05b2f19634cf933293fb25d03d";
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
