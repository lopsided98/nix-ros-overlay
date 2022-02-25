
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-domain-expert";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_domain_expert/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "a5dd7d002571c5070a88ae662cc0f7d16fd0ac312e45bb53d743ed9401bf92d6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Domain Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
