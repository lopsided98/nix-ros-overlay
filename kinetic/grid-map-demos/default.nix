
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, sensor-msgs, cv-bridge, catkin, grid-map-filters, octomap-msgs, grid-map-cv, grid-map-octomap, grid-map-ros, grid-map-msgs, roscpp, grid-map-loader, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-demos";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_demos/1.6.1-0.tar.gz;
    sha256 = "4be5f16776d808d74f91df63bf52c23ffd3e71fcaf8dd65a704a5ca66f79ff1c";
  };

  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];
  nativeBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge catkin grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];

  meta = {
    description = ''Demo nodes to demonstrate the usage of the grid map library.'';
    #license = lib.licenses.BSD;
  };
}
