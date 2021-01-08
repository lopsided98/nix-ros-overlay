
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, pluginlib, popf, rclcpp, ros2run }:
buildRosPackage {
  pname = "ros-foxy-plansys2-popf-plan-solver";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_popf_plan_solver/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "325fe2dd521b58c255a2786abaa636b9a3b9b769402af30b08f4a86152a940ab";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-core pluginlib popf rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based Planner module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
