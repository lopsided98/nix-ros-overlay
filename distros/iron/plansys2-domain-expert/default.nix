
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-iron-plansys2-domain-expert";
  version = "2.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_domain_expert/2.0.11-1.tar.gz";
    name = "2.0.11-1.tar.gz";
    sha256 = "896508e829c1fcddac05af53db8bdcbd4c3ea1dfaec565ad929cfeea66e8b59a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-core plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Domain Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
