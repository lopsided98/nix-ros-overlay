
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-planner";
  version = "2.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_planner/2.0.13-1.tar.gz";
    name = "2.0.13-1.tar.gz";
    sha256 = "5ae72c37d53c72abf937251f6660215de37ec87af5499d988939a02b34fe5768";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver plansys2-problem-expert pluginlib rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based Planner module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
