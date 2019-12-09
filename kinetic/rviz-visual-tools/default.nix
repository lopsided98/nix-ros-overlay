
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-stl-containers, trajectory-msgs, sensor-msgs, geometry-msgs, eigen-conversions, graph-msgs, std-msgs, catkin, rosunit, roslint, qt5, rviz, visualization-msgs, roscpp, tf-conversions, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rviz-visual-tools";
  version = "3.6.0";

  src = fetchurl {
    url = "https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/kinetic/rviz_visual_tools/3.6.0-0.tar.gz";
    name = "3.6.0-0.tar.gz";
    sha256 = "c31874ae535654e6ef65b52efae8b86799ffcbe0afadf58e13dc22838dd754b6";
  };

  buildType = "catkin";
  buildInputs = [ eigen-stl-containers sensor-msgs trajectory-msgs geometry-msgs eigen-conversions graph-msgs std-msgs roslint rviz visualization-msgs roscpp tf-conversions qt5.qtx11extras ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers sensor-msgs trajectory-msgs geometry-msgs eigen-conversions graph-msgs std-msgs roslint rviz visualization-msgs roscpp tf-conversions qt5.qtx11extras ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
