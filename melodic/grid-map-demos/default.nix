
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, sensor-msgs, cv-bridge, catkin, grid-map-filters, octomap-msgs, grid-map-cv, grid-map-octomap, grid-map-ros, grid-map-msgs, roscpp, grid-map-loader, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-demos";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_demos/1.6.1-0.tar.gz;
    sha256 = "b3d00b7333759db2f16c379f918ba9bb9d172292fd31f64c853d8b31b4e21bb7";
  };

  buildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];
  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization geometry-msgs sensor-msgs cv-bridge grid-map-filters octomap-msgs grid-map-cv grid-map-ros grid-map-msgs roscpp grid-map-loader grid-map-octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo nodes to demonstrate the usage of the grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
