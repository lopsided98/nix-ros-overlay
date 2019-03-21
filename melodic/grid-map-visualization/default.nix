
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, tf, sensor-msgs, catkin, grid-map-ros, nav-msgs, visualization-msgs, grid-map-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-grid-map-visualization";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_visualization/1.6.1-0.tar.gz;
    sha256 = "c35030b57adc01d75f9d3e5e061c933839f850d7a4d6dbc4d9a0f3fcdd1e0803";
  };

  propagatedBuildInputs = [ grid-map-core grid-map-ros nav-msgs visualization-msgs tf grid-map-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ grid-map-core tf sensor-msgs catkin roscpp grid-map-ros nav-msgs grid-map-msgs visualization-msgs ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    #license = lib.licenses.BSD;
  };
}
