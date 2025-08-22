
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, libsForQt5, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-fuse-loss";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_loss/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "b7a6bb0410f66369ed139f16ef2076a96176f656e16a74d26880ef04db2174b9";
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
