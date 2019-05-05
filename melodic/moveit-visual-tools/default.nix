
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, cmake-modules, roslint, trajectory-msgs, catkin, tf2-ros, rviz-visual-tools, roscpp, moveit-core, graph-msgs, tf2-eigen, std-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-visual-tools";
  version = "3.5.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/melodic/moveit_visual_tools/3.5.2-0.tar.gz;
    sha256 = "89188c2b6459781c14abe35014f937e5c199cd11f8fd45f943ff21e1b654ec84";
  };

  buildInputs = [ moveit-ros-planning roslint cmake-modules trajectory-msgs tf2-ros roscpp rviz-visual-tools moveit-core graph-msgs tf2-eigen std-msgs visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning roslint cmake-modules trajectory-msgs tf2-ros roscpp rviz-visual-tools moveit-core graph-msgs tf2-eigen std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
