
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, eigen-stl-containers, geometry-msgs, graph-msgs, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, std-msgs, tf-conversions, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rviz-visual-tools";
  version = "3.6.0";

  src = fetchurl {
    url = "https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/kinetic/rviz_visual_tools/3.6.0-0.tar.gz";
    name = "3.6.0-0.tar.gz";
    sha256 = "c31874ae535654e6ef65b52efae8b86799ffcbe0afadf58e13dc22838dd754b6";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions eigen-stl-containers geometry-msgs graph-msgs qt5.qtx11extras roscpp roslint rviz sensor-msgs std-msgs tf-conversions trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
