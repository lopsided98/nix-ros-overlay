
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, kairos, lifecycle-msgs, plansys2-core, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-domain-expert";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_domain_expert/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "ff3586ef7714d6f12f30dd588240173f13820fbd840a176d3a29ba8bd0f605d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common lifecycle-msgs ];
  propagatedBuildInputs = [ ament-index-cpp kairos plansys2-core plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Domain Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
