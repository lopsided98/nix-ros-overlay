
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, grid-map-msgs, catkin, grid-map-ros }:
buildRosPackage {
  pname = "ros-lunar-grid-map-loader";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_loader/1.6.1-0.tar.gz;
    sha256 = "bffe0d14df10b4b38a55f7d9fd8d076f1762c8665b0cb8a3ce9f494003a734c5";
  };

  buildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  propagatedBuildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
