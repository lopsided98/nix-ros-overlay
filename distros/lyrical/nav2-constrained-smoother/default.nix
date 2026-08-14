
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, ceres-solver, eigen, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-constrained-smoother";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_constrained_smoother/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "572e8dbad13a8a69738d3ad7f3583925943571857a30f1c050d14619f87020c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ceres-solver eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common angles ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rclcpp rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ceres constrained smoother";
    license = with lib.licenses; [ asl20 ];
  };
}
