
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-planner, plansys2-problem-expert, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-bringup";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_bringup/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "ca781cc33b1727538f20c1cc53ab1862fc6af1360737d4207a69c01f9e52ed68";
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
