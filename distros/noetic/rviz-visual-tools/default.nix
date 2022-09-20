
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-stl-containers, geometry-msgs, graph-msgs, interactive-markers, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, shape-msgs, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-visual-tools";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/noetic/rviz_visual_tools/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "485cef44f1c3b20226dd16859d4ae5185091162fce6d5deb49636cda58acd34d";
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
