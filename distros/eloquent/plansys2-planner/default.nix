
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-problem-expert, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2run }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-planner";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_planner/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "1ecd5c3b378bcc0e736b6e7f238116e53441f50afec895c51cc02b1f27df5ba1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ros2run ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-problem-expert rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based Planner module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
