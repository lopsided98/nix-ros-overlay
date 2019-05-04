
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, eigen-stl-containers, catkin, sensor-msgs, roscpp, rostest, rviz, tf-conversions, qt5, graph-msgs, std-msgs, eigen-conversions, visualization-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rviz-visual-tools";
  version = "3.6.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/kinetic/rviz_visual_tools/3.6.0-0.tar.gz;
    sha256 = "c31874ae535654e6ef65b52efae8b86799ffcbe0afadf58e13dc22838dd754b6";
  };

  buildInputs = [ roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp rviz tf-conversions graph-msgs std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roslint qt5.qtx11extras trajectory-msgs eigen-stl-containers sensor-msgs roscpp rviz tf-conversions graph-msgs std-msgs eigen-conversions visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
