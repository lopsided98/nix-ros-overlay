
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-grid-map-core";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_core/1.6.1-0.tar.gz;
    sha256 = "9c5d853645c8f9c831857907819f37bb444c328ecdb2d6e948bda548533da03b";
  };

  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
