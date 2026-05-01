
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, eigen, fuse-msgs, geometry-msgs, glog, gtest-vendor, launch, launch-pytest, pluginlib, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-fuse-core";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_core/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "c15e5dbfd8a5831a7b5a35782abe46f56847e75c60cb8c392aa4ec8103d6a141";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs launch launch-pytest rclcpp ];
  propagatedBuildInputs = [ ament-cmake-ros boost ceres-solver eigen fuse-msgs glog gtest-vendor pluginlib rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
