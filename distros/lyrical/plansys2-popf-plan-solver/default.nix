
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, pluginlib, popf, rclcpp, ros2run }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-popf-plan-solver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_popf_plan_solver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "33c2af0ec2527de44ee898f571c499792ec86d13a6510a2b68f1e9c99435e392";
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
