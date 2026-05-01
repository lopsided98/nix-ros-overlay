
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, gtest-vendor, libsForQt5, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-fuse-loss";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_loss/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "4160550f6412af6e769f179a6ede6a05452cb6080ddd5a052611b5f18d5b5eab";
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
