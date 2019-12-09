
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, trajectory-msgs, geometry-msgs, graph-msgs, eigen-conversions, std-msgs, cmake-modules, catkin, moveit-ros-planning, roslint, visualization-msgs, roscpp, rviz-visual-tools, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-visual-tools";
  version = "3.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.4.1-0.tar.gz";
    name = "3.4.1-0.tar.gz";
    sha256 = "fcff31c9a81c3cd874cc91af2dad5c6cc3e1d8995f68ea436f0e3335d967b185";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core trajectory-msgs geometry-msgs eigen-conversions graph-msgs std-msgs cmake-modules moveit-ros-planning roslint visualization-msgs roscpp rviz-visual-tools tf-conversions ];
  propagatedBuildInputs = [ moveit-core trajectory-msgs geometry-msgs graph-msgs eigen-conversions std-msgs cmake-modules moveit-ros-planning roslint visualization-msgs roscpp rviz-visual-tools tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
