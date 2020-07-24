
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, boost, geometry-msgs, lifecycle-msgs, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-executor";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_executor/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "928143ee6cfbb14b0513157d0d184c6e57e1ff5e2479e6629ca034989a375959";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp behaviortree-cpp-v3 lifecycle-msgs plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert popf rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Executor module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
