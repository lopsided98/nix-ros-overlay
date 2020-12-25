
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-planner, plansys2-problem-expert, rclcpp, rclcpp-action, rclcpp-lifecycle, readline }:
buildRosPackage {
  pname = "ros-foxy-plansys2-terminal";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_terminal/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d7cb7e4fb6dc5a7278fbd69f0a76fb37156d6069aa42941650d890c9e87ac3ea";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-planner plansys2-problem-expert rclcpp rclcpp-action rclcpp-lifecycle readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A terminal tool for monitor and manage the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
