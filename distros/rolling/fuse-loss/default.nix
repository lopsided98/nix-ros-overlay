
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, libsForQt5, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-loss";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_loss/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5a809f681606c9e9db0323b83676eb545be1268cd09d27484eeb9f9c410c9780";
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
