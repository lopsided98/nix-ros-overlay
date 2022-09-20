
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, graph-msgs, moveit-core, moveit-ros-planning, roscpp, roslint, rviz-visual-tools, std-msgs, tf2-eigen, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-visual-tools";
  version = "3.5.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/melodic/moveit_visual_tools/3.5.2-0.tar.gz";
    name = "3.5.2-0.tar.gz";
    sha256 = "89188c2b6459781c14abe35014f937e5c199cd11f8fd45f943ff21e1b654ec84";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules geometry-msgs graph-msgs moveit-core moveit-ros-planning roscpp roslint rviz-visual-tools std-msgs tf2-eigen tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
