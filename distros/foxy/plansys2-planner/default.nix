
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2run }:
buildRosPackage {
  pname = "ros-foxy-plansys2-planner";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_planner/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7ba75e03abfa5c5cb944227886588e5824349e3734272a0517e0193d237fab58";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-problem-expert pluginlib rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based Planner module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
