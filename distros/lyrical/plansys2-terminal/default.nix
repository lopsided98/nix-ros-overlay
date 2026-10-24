
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-core, plansys2-domain-expert, plansys2-executor, plansys2-kairos-plan-solver, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, rclcpp, readline }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-terminal";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_terminal/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "1640c454f394737c73e46ce41ed20f83ad97caa843858220866eee129d5d4f66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-index-cpp ament-lint-auto ament-lint-common plansys2-core plansys2-kairos-plan-solver ];
  propagatedBuildInputs = [ plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert rclcpp readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A terminal tool for monitor and manage the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
