
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-problem-expert";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_problem_expert/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "3516eae119a29ca68b6ca832ccb4f6cfcb05d7c40c6e0ba81725824bf5f260ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-domain-expert plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Problem Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
