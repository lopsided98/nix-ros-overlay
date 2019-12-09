
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, grid-map-cv, geometry-msgs, grid-map-rviz-plugin, grid-map-filters, octomap-msgs, catkin, grid-map-octomap, grid-map-core, cv-bridge, grid-map-loader, roscpp, grid-map-msgs, grid-map-ros, grid-map-visualization }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-demos";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_demos/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "01cbf50c1f042af1e1a17550b5e26d1321e100a94c94ea98098cfb01492a67fb";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-cv sensor-msgs geometry-msgs grid-map-rviz-plugin grid-map-filters octomap-msgs grid-map-octomap grid-map-core cv-bridge grid-map-loader roscpp grid-map-msgs grid-map-ros grid-map-visualization ];
  propagatedBuildInputs = [ sensor-msgs grid-map-cv geometry-msgs grid-map-rviz-plugin grid-map-filters octomap-msgs grid-map-octomap grid-map-core cv-bridge grid-map-loader roscpp grid-map-visualization grid-map-ros grid-map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo nodes to demonstrate the usage of the grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
