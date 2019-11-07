
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-ros, rviz, qt5, grid-map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-rviz-plugin";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_rviz_plugin/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "257e1f6ff17799b30972b83025c1350e040a107426c88dea6d9ca57efec53e5d";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-msgs grid-map-ros rviz qt5.qtbase ];
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz plugin for displaying grid map messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
