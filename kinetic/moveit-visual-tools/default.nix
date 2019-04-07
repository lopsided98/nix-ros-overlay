
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, cmake-modules, roslint, trajectory-msgs, catkin, roscpp, rviz-visual-tools, moveit-core, graph-msgs, tf-conversions, std-msgs, eigen-conversions, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-visual-tools";
  version = "3.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.4.1-0.tar.gz;
    sha256 = "fcff31c9a81c3cd874cc91af2dad5c6cc3e1d8995f68ea436f0e3335d967b185";
  };

  buildInputs = [ moveit-ros-planning roslint cmake-modules trajectory-msgs roscpp rviz-visual-tools moveit-core graph-msgs tf-conversions std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning roslint cmake-modules trajectory-msgs roscpp rviz-visual-tools moveit-core graph-msgs tf-conversions std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    #license = lib.licenses.BSD;
  };
}
