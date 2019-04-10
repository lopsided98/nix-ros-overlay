
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, eigen-stl-containers, catkin, sensor-msgs, roscpp, rostest, std-msgs, rviz, qt5, graph-msgs, tf-conversions, eigen-conversions, visualization-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rviz-visual-tools";
  version = "3.4.1";

  src = fetchurl {
    url = https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/lunar/rviz_visual_tools/3.4.1-0.tar.gz;
    sha256 = "5d445d348f553165a8a6cacd153a5fd76edcc2b31b12c4c679122ebcea7ee5c5";
  };

  buildInputs = [ roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp std-msgs rviz graph-msgs tf-conversions eigen-conversions visualization-msgs geometry-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp std-msgs rviz graph-msgs tf-conversions eigen-conversions visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    #license = lib.licenses.BSD;
  };
}
