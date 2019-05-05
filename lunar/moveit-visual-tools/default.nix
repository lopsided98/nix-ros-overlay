
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, moveit-ros-robot-interaction, trajectory-msgs, catkin, roscpp, rviz-visual-tools, moveit-core, graph-msgs, tf-conversions, std-msgs, eigen-conversions, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-moveit-visual-tools";
  version = "3.3.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/lunar/moveit_visual_tools/3.3.0-0.tar.gz;
    sha256 = "92e377ec2867296230cb12276bcace5288a106c5034b59925a9e81933d876104";
  };

  buildInputs = [ roslint cmake-modules moveit-ros-robot-interaction trajectory-msgs roscpp rviz-visual-tools moveit-core graph-msgs tf-conversions std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ roslint cmake-modules moveit-ros-robot-interaction trajectory-msgs roscpp rviz-visual-tools moveit-core graph-msgs tf-conversions std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
