
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-msgs, grid-map-ros, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-grid-map-rviz-plugin";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_rviz_plugin/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "8d1696811adae639f83474e88ba141bdac58213ef7037178f854996060a3fa1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz plugin for displaying grid map messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
