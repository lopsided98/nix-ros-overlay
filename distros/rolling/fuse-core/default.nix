
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, eigen, fuse-msgs, geometry-msgs, glog, launch, launch-pytest, pluginlib, rcl-interfaces, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-fuse-core";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_core/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "2c8d60283d4d9e518b6d8dfa18650f1f89bb18137361e81cb2daa537bed7e884";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs launch launch-pytest rclcpp ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-msgs glog pluginlib rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
