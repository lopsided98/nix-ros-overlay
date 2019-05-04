
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, grid-map-core, catkin, costmap-2d }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-costmap-2d";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_costmap_2d/1.6.1-0.tar.gz;
    sha256 = "1b0cef78ed381ec06f7a46800aa432dc084edb0ef1fda60f2893f5cf3a585e3e";
  };

  buildInputs = [ grid-map-core tf costmap-2d ];
  propagatedBuildInputs = [ grid-map-core tf costmap-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
