
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp, lifecycle-msgs, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-tests";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_tests/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "ac21e5d259b7fdf0e653ab67f0c9c25f62c301293541364672d4fc4b0aa8c805";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp behaviortree-cpp lifecycle-msgs plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert popf rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the tests package for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
