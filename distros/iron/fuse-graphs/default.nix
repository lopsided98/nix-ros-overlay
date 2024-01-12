
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gbenchmark, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-iron-fuse-graphs";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/iron/fuse_graphs/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "9409d35c8a5fb3b33dd6cd41ba76b19723538bf430eab4e3a451de10fd69d056";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_graphs package provides some concrete implementations of the fuse_core::Graph interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
