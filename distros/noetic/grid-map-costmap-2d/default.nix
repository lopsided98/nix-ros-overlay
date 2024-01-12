
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, grid-map-core, gtest, tf }:
buildRosPackage {
  pname = "ros-noetic-grid-map-costmap-2d";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_costmap_2d/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "836ad71ca7a5188ccc6295889cd1a391c8e9e55254b705215c6f7eb579489e36";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ costmap-2d grid-map-core tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
