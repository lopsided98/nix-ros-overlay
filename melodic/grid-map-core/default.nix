
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-grid-map-core";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_core/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "b6182772a4ba707cbe209e08bf94790af1710976e43c7d71a770980e3cf376ae";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
