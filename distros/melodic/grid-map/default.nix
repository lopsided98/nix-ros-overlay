
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization }:
buildRosPackage {
  pname = "ros-melodic-grid-map";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "5bc44d6241fa2000ba7ded5f92e296b2813905dd9ff43f1bdeeef2a7bee8bdd8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ grid-map-core grid-map-cv grid-map-demos grid-map-filters grid-map-loader grid-map-msgs grid-map-ros grid-map-rviz-plugin grid-map-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
