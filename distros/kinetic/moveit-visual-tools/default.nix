
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen-conversions, geometry-msgs, graph-msgs, moveit-core, moveit-ros-planning, roscpp, roslint, rviz-visual-tools, std-msgs, tf-conversions, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-visual-tools";
  version = "3.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.4.1-0.tar.gz";
    name = "3.4.1-0.tar.gz";
    sha256 = "fcff31c9a81c3cd874cc91af2dad5c6cc3e1d8995f68ea436f0e3335d967b185";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen-conversions geometry-msgs graph-msgs moveit-core moveit-ros-planning roscpp roslint rviz-visual-tools std-msgs tf-conversions trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper functions for displaying and debugging MoveIt! data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
