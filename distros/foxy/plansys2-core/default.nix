
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-core";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_core/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ed8cf1a1c9876be5c3e7e95d5b3e0e92df141d78ee4d9cb8f217785637f46bbc";
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
