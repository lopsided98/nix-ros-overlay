
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-msgs, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, rcl-interfaces, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-bringup";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_bringup/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "d1ef8050d36e33a8a0bfc5d55e40408f0360ebd251097b5e9ef5ee5def99f650";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-index-python ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake plansys2-msgs plansys2-popf-plan-solver rcl-interfaces rclpy ];
  propagatedBuildInputs = [ launch-ros lifecycle-msgs plansys2-domain-expert plansys2-executor plansys2-lifecycle-manager plansys2-planner plansys2-problem-expert rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
