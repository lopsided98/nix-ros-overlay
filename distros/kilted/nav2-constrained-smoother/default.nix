
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, ceres-solver, eigen, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-constrained-smoother";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_constrained_smoother/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "a59a47c8c0b715d9732a19040901403bbc8b602981489ed55c7f60b9fe9ecc03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common angles ];
  propagatedBuildInputs = [ ceres-solver geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ceres constrained smoother";
    license = with lib.licenses; [ asl20 ];
  };
}
