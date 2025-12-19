
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-planner, plansys2-problem-expert, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-plansys2-bringup";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_bringup/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c44f29780ea92fd83530e1e70143441385455ce57b1c1a41f99051392171a24a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros plansys2-domain-expert plansys2-executor plansys2-lifecycle-manager plansys2-planner plansys2-problem-expert rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
