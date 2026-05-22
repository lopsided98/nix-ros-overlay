
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, nav-msgs, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-fuse-publishers";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_publishers/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "780eaa980bf891c39f86a6b321f77c7f678b0031b2652ae78a4897b296d0e84f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common fuse-constraints fuse-graphs rclcpp ];
  propagatedBuildInputs = [ ament-cmake-ros fuse-core fuse-msgs fuse-variables geometry-msgs gtest-vendor nav-msgs pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_publishers package provides a set of common publisher plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
