
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ogre1_9, roslint, trajectory-msgs, eigen-stl-containers, catkin, sensor-msgs, rostest, std-msgs, rviz, qt5, visualization-msgs, graph-msgs, tf-conversions, eigen-conversions, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-visual-tools";
  version = "3.8.0-r4";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/melodic/rviz_visual_tools/3.8.0-4.tar.gz";
    name = "3.8.0-4.tar.gz";
    sha256 = "4b4eb5dcac945413442686e3c37cb0f383c40fd7cb491044ca7e0505fffb2976";
  };

  buildType = "catkin";
  buildInputs = [ ogre1_9 roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp rviz tf-conversions graph-msgs std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ ogre1_9 qt5.qtx11extras roslint trajectory-msgs eigen-stl-containers sensor-msgs rviz tf-conversions graph-msgs visualization-msgs std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
