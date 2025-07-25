
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, plansys2-msgs, plansys2-pddl-parser, plansys2-popf-plan-solver, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-domain-expert";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_domain_expert/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "911aacf05a229f1cf45f06fba0014a917d856c5b847613310820f558a2fb0721";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common lifecycle-msgs ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-core plansys2-msgs plansys2-pddl-parser plansys2-popf-plan-solver rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Domain Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
