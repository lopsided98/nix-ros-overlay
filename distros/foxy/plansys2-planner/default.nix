
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2run }:
buildRosPackage {
  pname = "ros-foxy-plansys2-planner";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_planner/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "421a148313455ad93bf6773192be135fb665e8731b60cc75a18d207554612fb6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver plansys2-problem-expert pluginlib rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based Planner module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
