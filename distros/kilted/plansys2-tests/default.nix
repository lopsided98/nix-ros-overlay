
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, popf, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-plansys2-tests";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_tests/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "d30aa51b4c43c89ac8dda01c34fac0c1c2cf69f8ff026403341badfa89bb33df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common plansys2-domain-expert plansys2-pddl-parser plansys2-planner plansys2-problem-expert ];
  propagatedBuildInputs = [ plansys2-executor plansys2-msgs popf rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the tests package for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
