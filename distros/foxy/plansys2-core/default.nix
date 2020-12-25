
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-core";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_core/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f70c00dbcf176c7a071f21741a9e801951f43e821781ffd0a5aa2ac272cd40c7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based core  for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
