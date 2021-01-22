
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-core";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_core/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "97e9e074b91c075352f6b44d43ad79cfa542c2a81983fdc4af22162b6a7c0009";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
