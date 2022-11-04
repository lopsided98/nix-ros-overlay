
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, grid-map-core, gtest, tf }:
buildRosPackage {
  pname = "ros-melodic-grid-map-costmap-2d";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_costmap_2d/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "508952e1bd8e3dfc9a1109ad3295f08f7e53452992eef748bc56144e43691e57";
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
