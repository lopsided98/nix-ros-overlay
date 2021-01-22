
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-sdf";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_sdf/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "5b7ba54ef786b5fa0743939fdc14fabd87137e829cd0ba14d5df8ae0e1d42b77";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
