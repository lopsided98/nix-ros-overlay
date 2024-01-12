
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, graph-msgs, moveit-core, moveit-ros-planning, roscpp, roslint, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-visual-tools";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/noetic/moveit_visual_tools/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "06950a22f93d8e03119717c66af4b73f4b7f7b2a4f955041819e26318322ede6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules geometry-msgs graph-msgs moveit-core moveit-ros-planning roscpp roslint rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
