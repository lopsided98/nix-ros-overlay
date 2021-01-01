
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-plansys2-bt-actions";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_bt_actions/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "08d3fe7facbeb42250766997ed6588d0849c36006cf0b1884379d6293db74903";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common plansys2-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp-v3 plansys2-executor rclcpp rclcpp-action rclcpp-lifecycle test-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Problem Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
