
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, ceres-solver, eigen, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-constrained-smoother";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_constrained_smoother/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "462439bbcb984c088d80cb8fb45d1bec21a1636c45f2ad0053e65946c60c4870";
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
