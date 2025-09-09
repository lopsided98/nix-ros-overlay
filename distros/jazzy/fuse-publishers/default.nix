
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-variables, geometry-msgs, nav-msgs, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fuse-publishers";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_publishers/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "ed63c930c361a8a978b469b9e6105d01d11c2bb793bfc077dc39f227b01c5936";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common fuse-constraints fuse-graphs rclcpp ];
  propagatedBuildInputs = [ fuse-core fuse-msgs fuse-variables geometry-msgs nav-msgs pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_publishers package provides a set of common publisher plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
