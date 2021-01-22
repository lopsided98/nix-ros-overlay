
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-marker-drawing, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-map-server";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_map_server/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "9e60b83b6786e6b552ae1f6e6d44b8e510d180a6517d834b28dc6a1167fbc4d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-marker-drawing hector-nav-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_server provides a service for retrieving the map, as well as for raycasting based obstacle queries (finds next obstacle in the map, given start and endpoint
    in any tf coordinate frame).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
