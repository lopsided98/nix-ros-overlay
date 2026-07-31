
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, popf, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-tests";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_tests/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "f7919423fbddab1e255532268b0947ebb94ac8389b271484770f0207d39e0265";
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
