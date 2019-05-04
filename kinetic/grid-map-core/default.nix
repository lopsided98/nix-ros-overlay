
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-core";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_core/1.6.1-0.tar.gz;
    sha256 = "2cebfdf68fe9ca20cc7c4d57f0ac59ff8a9f43bad2dd29c93c07573ce5482e4c";
  };

  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
