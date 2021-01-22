
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-msgs, grid-map-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-loader";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_loader/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "d5c6f226ec84691a75e24c3e7a3b2a73e652e5f0d442805a0c095de043597f85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
