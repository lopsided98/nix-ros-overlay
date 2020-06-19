
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-stl-containers, geometry-msgs, graph-msgs, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, shape-msgs, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-visual-tools";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/noetic/rviz_visual_tools/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "3ca4c817e553412b8159064691a3cfa64c7929a885b456e90a5fdea621201738";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers geometry-msgs graph-msgs ogre1_9 qt5.qtx11extras roscpp roslint rviz sensor-msgs shape-msgs std-msgs tf2-eigen tf2-geometry-msgs tf2-ros trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
