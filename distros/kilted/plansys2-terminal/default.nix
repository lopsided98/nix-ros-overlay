
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, rclcpp, readline }:
buildRosPackage {
  pname = "ros-kilted-plansys2-terminal";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_terminal/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e8c3465ddc4fb0dfaeeb4a9b3b84870b1fa79304c8fa3acc561de753d7967c7f";
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
