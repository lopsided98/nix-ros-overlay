
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, nav-msgs, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-fuse-publishers";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_publishers/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "d0cf87bc8547cd6f96930b4edc7a1068cb88f2dd912d9df3af3be9aa5e40e369";
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
