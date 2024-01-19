
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-map-tools";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_map_tools/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "2d6643594c4f64a75becf83dde3da61f65cc34cbbdfe0e1153ca9436f6764cc3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_tools contains some functions related to accessing information from OccupancyGridMap maps.
    Currently consists of a single header.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
