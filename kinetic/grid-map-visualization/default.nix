
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, sensor-msgs, catkin, roscpp, grid-map-ros, nav-msgs, visualization-msgs, grid-map-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-visualization";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_visualization/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "1107c03f151b9dc6a82b53a9f675cb29180878b99d34cf0f36def0a607ca0ffa";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  propagatedBuildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
