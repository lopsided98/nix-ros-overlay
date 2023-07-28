
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, rclcpp, rclcpp-action, rclcpp-lifecycle, readline }:
buildRosPackage {
  pname = "ros-iron-plansys2-terminal";
  version = "2.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_terminal/2.0.10-1.tar.gz";
    name = "2.0.10-1.tar.gz";
    sha256 = "597542d9dfb568f0fa35e8fd102a9644eaaccb9e6da69e75b689ba7799d3fefc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common lifecycle-msgs ];
  propagatedBuildInputs = [ plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert rclcpp rclcpp-action rclcpp-lifecycle readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A terminal tool for monitor and manage the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
