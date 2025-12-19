
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, pluginlib, popf, rclcpp, ros2run }:
buildRosPackage {
  pname = "ros-kilted-plansys2-popf-plan-solver";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_popf_plan_solver/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7081c8e2923c28c46486e2e82ef7acd416a0773240537ffbff9bfb227840aecb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ plansys2-core pluginlib popf rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based Planner module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
