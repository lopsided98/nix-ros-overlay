
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gtest }:
buildRosPackage {
  pname = "ros-noetic-grid-map-core";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_core/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "9ea3e29d3f8c12c9af66a00d2c31446016dd0f627ee38fdb1ce16d5743143ee1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
