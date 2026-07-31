
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, lifecycle-msgs, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, test-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-bt-actions";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_bt_actions/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "d1c7be1f5877a4168f27acc629428119b3a4f68325411ba310e13550cc6f14a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs plansys2-msgs test-msgs tf2-geometry-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp lifecycle-msgs plansys2-executor rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Problem Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
