
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, eigen, fuse-msgs, geometry-msgs, glog, launch, launch-pytest, pluginlib, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-fuse-core";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_core/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "df75bdc082dff9799ad8c3a0f2d909242ea36e79d28527d8967b52d1d2bbafc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs launch launch-pytest rclcpp ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-msgs glog pluginlib rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
