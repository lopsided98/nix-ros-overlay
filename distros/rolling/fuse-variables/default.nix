
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ceres-solver, fuse-core, fuse-graphs, gtest-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-fuse-variables";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_variables/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "57ac49fbfcffd10fe63e63d811c4771626d8f5d196560ee1e376b86688389afc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common fuse-graphs rclcpp ];
  propagatedBuildInputs = [ ament-cmake-ros ceres-solver fuse-core gtest-vendor pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_variables package provides a set of commonly used variable types, such as 2D and 3D positions, \\
    orientations, velocities, and accelerations.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
