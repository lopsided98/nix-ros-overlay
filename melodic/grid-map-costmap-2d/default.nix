
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, grid-map-core, catkin, costmap-2d }:
buildRosPackage {
  pname = "ros-melodic-grid-map-costmap-2d";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_costmap_2d/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "540826a6431bd931bdb478756ef566b76e5ddad01b15d84ebc6803048efab182";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-core tf costmap-2d ];
  propagatedBuildInputs = [ grid-map-core tf costmap-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
