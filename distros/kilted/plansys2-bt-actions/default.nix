
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, lifecycle-msgs, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, test-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-bt-actions";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_bt_actions/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "3bfccaa01813e1ad8b9840072b050317a4b4336c5fb7710c2be155c83d660be0";
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
