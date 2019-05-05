
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-lunar-grid-map-core";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_core/1.6.1-0.tar.gz;
    sha256 = "37f71cc8c75c1428fe347538187d7e1ab024e523e191e9acdf539b3d0efbe6fa";
  };

  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
