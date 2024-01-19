
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-stl-containers, geometry-msgs, graph-msgs, interactive-markers, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, shape-msgs, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-visual-tools";
  version = "3.9.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/noetic/rviz_visual_tools/3.9.3-1.tar.gz";
    name = "3.9.3-1.tar.gz";
    sha256 = "2a58df0978990c85ba49b0dfbc4a4e7cb6fcc4febc2aafa2954377ffe919c29b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers geometry-msgs graph-msgs interactive-markers ogre1_9 qt5.qtx11extras roscpp roslint rviz sensor-msgs shape-msgs std-msgs tf2-eigen tf2-geometry-msgs tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
