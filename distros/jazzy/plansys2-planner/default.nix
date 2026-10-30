
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, kairos, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-kairos-plan-solver, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, plansys2-problem-expert, pluginlib, rclcpp, rclcpp-lifecycle, ros2run }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-planner";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_planner/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "e0a38ba624f105ff54511b9367afa555c7c3fdefca9b332b1f2f823cccd6eda6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common kairos plansys2-popf-plan-solver ros2run ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-kairos-plan-solver plansys2-msgs plansys2-pddl-parser plansys2-problem-expert pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based Planner module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
