
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, sensor-msgs, catkin, roscpp, grid-map-ros, nav-msgs, visualization-msgs, grid-map-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-grid-map-visualization";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_visualization/1.6.1-0.tar.gz;
    sha256 = "c35030b57adc01d75f9d3e5e061c933839f850d7a4d6dbc4d9a0f3fcdd1e0803";
  };

  buildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  propagatedBuildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
