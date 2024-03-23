
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-variables, geometry-msgs, nav-msgs, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-fuse-publishers";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_publishers/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "e5ecd432d37a05ad575336cf202e540d06604b3409a91c644046c9a455c6b6b2";
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
