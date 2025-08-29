
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gtest-vendor, libsForQt5, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-loss";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_loss/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "a2bb5997821809f38be12dd4692a65b6c23197e8aaaa5572e73a3e753e848de1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common libsForQt5.qwt qt5.qtbase ];
  propagatedBuildInputs = [ ament-cmake-ros ceres-solver fuse-core gtest-vendor pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_loss package provides a set of commonly used loss functions, such as the basic ones provided by Ceres.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
