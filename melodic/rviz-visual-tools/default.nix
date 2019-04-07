
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ogre1_9, roslint, trajectory-msgs, eigen-stl-containers, catkin, sensor-msgs, rostest, std-msgs, rviz, qt5, visualization-msgs, graph-msgs, tf-conversions, eigen-conversions, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-visual-tools";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/melodic/rviz_visual_tools/3.7.0-0.tar.gz;
    sha256 = "e8e3e49bb0e1512cf87c0fbfe97639e415e0c304dc83bc357a0da93c56c45674";
  };

  buildInputs = [ ogre1_9 roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp rviz tf-conversions graph-msgs std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ ogre1_9 roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp rviz tf-conversions graph-msgs std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    #license = lib.licenses.BSD;
  };
}
