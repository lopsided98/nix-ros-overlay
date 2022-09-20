
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, graph-msgs, moveit-core, moveit-ros-planning, roscpp, roslint, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-visual-tools";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/noetic/moveit_visual_tools/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "f6df4a22012e3f8aa930d07e68fdb21239ab8addabd48872bcecbd62b382af03";
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
