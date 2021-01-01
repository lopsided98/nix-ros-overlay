
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-action, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-problem-expert";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_problem_expert/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ba7effadb8706dc9768006efbf9a9ad21556604150e22bcb2aa8b0693630efe8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-domain-expert plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Problem Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
