
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, grid-map-msgs, catkin, grid-map-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-loader";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_loader/1.6.1-0.tar.gz;
    sha256 = "063c88f71f25e65653bb56cea1bc43fa7ecdba5fe09f1f67b01917f81339b87d";
  };

  buildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  propagatedBuildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
