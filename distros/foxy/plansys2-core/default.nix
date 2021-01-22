
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-core";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_core/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "948c105a3b52aee54785003e421fceac0c522837623d0895c6395b8cb0fb0c9e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based core  for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
