
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, graph-msgs, moveit-common, moveit-core, moveit-ros-planning, rclcpp, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-moveit-visual-tools";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_visual_tools-release/archive/release/galactic/moveit_visual_tools/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "9c1b9b19df75dfff79dcdd6e4140f9728f94e027038d13e6db319b1328970dc9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs graph-msgs moveit-common moveit-core moveit-ros-planning rclcpp rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
