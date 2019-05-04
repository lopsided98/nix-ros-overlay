
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, sensor-msgs, catkin, roscpp, grid-map-ros, nav-msgs, visualization-msgs, grid-map-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-visualization";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_visualization/1.6.1-0.tar.gz;
    sha256 = "7bf9e5db3452570856dbc6cc59362c7acc0f9ce30567079d2633ae08c6786871";
  };

  buildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  propagatedBuildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
