
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-planner, plansys2-problem-expert, rclcpp, rclcpp-action, rclcpp-lifecycle, readline }:
buildRosPackage {
  pname = "ros-foxy-plansys2-terminal";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_terminal/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "e2d4e2ad49f253cdadcb3ae453c962d588d33f8cd4e5c950ff83f340185af44a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common lifecycle-msgs ];
  propagatedBuildInputs = [ plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-planner plansys2-problem-expert rclcpp rclcpp-action rclcpp-lifecycle readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A terminal tool for monitor and manage the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
