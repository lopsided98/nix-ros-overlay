
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-action, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-problem-expert";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_problem_expert/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "972727841d42f8c842fefbf380859274b4d2e9db9a078f3bd7cdf420d07b9f0a";
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
