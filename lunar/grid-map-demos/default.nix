
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, sensor-msgs, cv-bridge, catkin, grid-map-filters, octomap-msgs, grid-map-cv, grid-map-octomap, grid-map-ros, grid-map-msgs, roscpp, grid-map-loader, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-grid-map-demos";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_demos/1.6.1-0.tar.gz;
    sha256 = "d9070318b2f1b8b178a3d596e1dada817428604b24a00d81c4c1e0555649799e";
  };

  buildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];
  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo nodes to demonstrate the usage of the grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
