
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-chomp";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_chomp/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "d590b6029f641f722cac925e1e479e559e636f9b1b9aba56d3e87458ee83d64c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The interface for using CHOMP within MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
