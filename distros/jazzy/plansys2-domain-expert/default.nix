
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-domain-expert";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_domain_expert/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "7cb4412b5a21a209e0f63cc7e55aa41cf4d593342a67a4f6fef39903d4f2bcf4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Domain Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
