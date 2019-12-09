
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-stl-containers, trajectory-msgs, sensor-msgs, geometry-msgs, eigen-conversions, graph-msgs, std-msgs, ogre1_9, catkin, rosunit, roslint, qt5, rviz, visualization-msgs, roscpp, tf-conversions, rostest }:
buildRosPackage {
  pname = "ros-melodic-rviz-visual-tools";
  version = "3.8.0-r4";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/melodic/rviz_visual_tools/3.8.0-4.tar.gz";
    name = "3.8.0-4.tar.gz";
    sha256 = "4b4eb5dcac945413442686e3c37cb0f383c40fd7cb491044ca7e0505fffb2976";
  };

  buildType = "catkin";
  buildInputs = [ eigen-stl-containers sensor-msgs trajectory-msgs geometry-msgs eigen-conversions graph-msgs std-msgs ogre1_9 roslint rviz visualization-msgs roscpp tf-conversions qt5.qtx11extras ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers sensor-msgs trajectory-msgs geometry-msgs eigen-conversions graph-msgs std-msgs ogre1_9 roslint rviz visualization-msgs roscpp tf-conversions qt5.qtx11extras ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
