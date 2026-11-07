
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp, eigen, eigen3-cmake-module, kairos, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, rosgraph-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-executor";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_executor/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "49bb0931b0dbfde23ce928e065a7657d5a033cba7cb8829e3aa265dad3d058c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common kairos plansys2-popf-plan-solver rosgraph-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-cpp behaviortree-cpp eigen eigen3-cmake-module lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert pluginlib rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "This package contains the Executor module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
