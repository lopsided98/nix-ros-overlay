
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-map-tools";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_map_tools/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "ac55d6d0c49dcd78264305075ca8552ee768b7361a156dce09f2b2d473ecaf07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_tools contains some functions related to accessing information from OccupancyGridMap maps.
    Currently consists of a single header.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
