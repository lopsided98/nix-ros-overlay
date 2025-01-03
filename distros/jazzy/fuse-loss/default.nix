
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, libsForQt5, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-fuse-loss";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_loss/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9552aeeffd101aa1b2fcaca15b6cf3984aa76bbbeac00f3f9fec6ac7792ccdc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common libsForQt5.qwt qt5.qtbase ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The fuse_loss package provides a set of commonly used loss functions, such as the basic ones provided by Ceres.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
