
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, trajectory-msgs, geometry-msgs, graph-msgs, std-msgs, cmake-modules, catkin, moveit-ros-planning, roslint, tf2-eigen, visualization-msgs, roscpp, rviz-visual-tools, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-visual-tools";
  version = "3.5.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/melodic/moveit_visual_tools/3.5.2-0.tar.gz";
    name = "3.5.2-0.tar.gz";
    sha256 = "89188c2b6459781c14abe35014f937e5c199cd11f8fd45f943ff21e1b654ec84";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core trajectory-msgs geometry-msgs graph-msgs std-msgs cmake-modules moveit-ros-planning roslint tf2-eigen visualization-msgs roscpp rviz-visual-tools tf2-ros ];
  propagatedBuildInputs = [ moveit-core trajectory-msgs geometry-msgs graph-msgs std-msgs cmake-modules moveit-ros-planning roslint tf2-eigen visualization-msgs roscpp rviz-visual-tools tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
