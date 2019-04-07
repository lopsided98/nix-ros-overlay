
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-ros, rviz, qt5, grid-map-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-rviz-plugin";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_rviz_plugin/1.6.1-0.tar.gz;
    sha256 = "b08f8ea81daf464016e80cbe342b8d320237d799ac4529923a0068f43dfeac0d";
  };

  buildInputs = [ grid-map-msgs grid-map-ros rviz qt5.qtbase ];
  propagatedBuildInputs = [ grid-map-ros rviz grid-map-msgs qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz plugin for displaying grid map messages.'';
    #license = lib.licenses.BSD;
  };
}
