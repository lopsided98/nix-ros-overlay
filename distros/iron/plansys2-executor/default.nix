
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, cppzmq, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, pluginlib, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-plansys2-executor";
  version = "2.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_executor/2.0.10-1.tar.gz";
    name = "2.0.10-1.tar.gz";
    sha256 = "5ddbc3d808bfd04e1d240d2bab53012a6f022075b70176f693065acaa8dcdfb1";
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
