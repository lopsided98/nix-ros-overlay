
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, grid-map-core, catkin, costmap-2d }:
buildRosPackage {
  pname = "ros-lunar-grid-map-costmap-2d";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_costmap_2d/1.6.1-0.tar.gz;
    sha256 = "c6b99aa4fcc21a3d6b786af97fca824ad85d2553e34f2c7c1e7d5b9547e6f9f1";
  };

  buildInputs = [ grid-map-core tf costmap-2d ];
  propagatedBuildInputs = [ grid-map-core tf costmap-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    #license = lib.licenses.BSD;
  };
}
