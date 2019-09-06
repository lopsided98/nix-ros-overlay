
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-ros, rviz, qt5, grid-map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-rviz-plugin";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_rviz_plugin/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "409f35324a41675986209b4216b26292974d5d3f904737fcae422073a06269aa";
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
