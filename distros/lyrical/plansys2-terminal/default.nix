
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, rclcpp, readline }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-terminal";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_terminal/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "5202cc38a8d3b6bf7a9358149c87ea23209717459651cc89d1b73e7504d442c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert rclcpp readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A terminal tool for monitor and manage the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
