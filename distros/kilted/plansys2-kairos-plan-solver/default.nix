
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, kairos, plansys2-core, plansys2-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-plansys2-kairos-plan-solver";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_kairos_plan_solver/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "d188d185f74b63e30150accda9b1a1dd59a2ac92d2ebc7cf04babe9cecc5e3f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ kairos plansys2-core plansys2-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlanSys2 plan solver plugin that runs the Kairos PDDL planner in-process";
    license = with lib.licenses; [ asl20 ];
  };
}
