
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, cppzmq, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, pluginlib, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-plansys2-executor";
  version = "2.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_executor/2.0.11-1.tar.gz";
    name = "2.0.11-1.tar.gz";
    sha256 = "70a178e88444303458144b4461919539267406c4ba2de507ffd5c37e62b7b990";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp behaviortree-cpp-v3 cppzmq lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert pluginlib popf rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Executor module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
