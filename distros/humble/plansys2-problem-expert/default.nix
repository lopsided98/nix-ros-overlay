
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, kairos, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-humble-plansys2-problem-expert";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_problem_expert/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "acd77a45792aa184a0f35bd3e97b8c05518791bd74610806819c26bf5943d988";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common kairos ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Problem Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
