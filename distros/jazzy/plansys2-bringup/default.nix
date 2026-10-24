
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-msgs, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, rcl-interfaces, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-bringup";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_bringup/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "6c2ff65bb1f045d46df348be4ca0d056eb956bf510bdf61846c50ce62e191f99";
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
