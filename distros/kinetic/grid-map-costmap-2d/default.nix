
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, grid-map-core, tf }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-costmap-2d";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_costmap_2d/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "8c515bff45cf9289ba86c2611589dcf80bbbdff55cdb92fee6b6167bcb4dd4b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d grid-map-core tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
