
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-planner, plansys2-problem-expert, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-plansys2-bringup";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_bringup/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "2443a7c4806ece4713d9df44b6c69a4c5c577f9a5755c6a056799eccf23f1903";
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
