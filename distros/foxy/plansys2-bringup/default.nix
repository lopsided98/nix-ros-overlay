
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-planner, plansys2-problem-expert, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-plansys2-bringup";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_bringup/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "34c9c86651238a0e9cddc7ee35d46296eae2060427a011b76d4070511c03c3e3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros plansys2-domain-expert plansys2-executor plansys2-lifecycle-manager plansys2-planner plansys2-problem-expert rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
