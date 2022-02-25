
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, cppzmq, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-executor";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_executor/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "a3a9e981c0b690cd60e9dfb8cfa33b0fad16c7d47380d8ac54e74057c349d572";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp behaviortree-cpp-v3 cppzmq lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert popf rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Executor module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
