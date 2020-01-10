
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, grid-map-core, tf }:
buildRosPackage {
  pname = "ros-melodic-grid-map-costmap-2d";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_costmap_2d/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "28bb4e0ac05d626c6dc51df229dadf8fa4cc51cdb7d7fae02e252dc6215974c3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d grid-map-core tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
