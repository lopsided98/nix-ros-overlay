
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, grid-map-core, grid-map-cv, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization, octomap-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-demos";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_demos/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "01cbf50c1f042af1e1a17550b5e26d1321e100a94c94ea98098cfb01492a67fb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-filters grid-map-loader grid-map-msgs grid-map-octomap grid-map-ros grid-map-rviz-plugin grid-map-visualization octomap-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo nodes to demonstrate the usage of the grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
