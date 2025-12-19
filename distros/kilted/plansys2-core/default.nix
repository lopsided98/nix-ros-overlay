
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-plansys2-core";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_core/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "53aeaf5d72cea3e454921ad172a597e30b0f6f35f25da13a1c0af5e5ec6227b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based core  for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
