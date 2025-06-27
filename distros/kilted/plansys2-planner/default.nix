
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-lifecycle, ros2run }:
buildRosPackage {
  pname = "ros-kilted-plansys2-planner";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_planner/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d2d5d00fa7bf8342a71f1b6997d43b69ab10a78e5ba80751192f1aa5d4163751";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver plansys2-problem-expert pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based Planner module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
