
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization }:
buildRosPackage {
  pname = "ros-kinetic-grid-map";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "4ae8f96aa5216a00d9fc2bcbfc9d4f5eadbe79d8f677e67151c3fff26f0f2cf9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core grid-map-cv grid-map-demos grid-map-filters grid-map-loader grid-map-msgs grid-map-ros grid-map-rviz-plugin grid-map-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
