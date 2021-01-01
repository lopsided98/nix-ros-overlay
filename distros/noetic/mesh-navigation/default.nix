
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map, wave-front-planner }:
buildRosPackage {
  pname = "ros-noetic-mesh-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "85843ccce40c21a3e9ec9f7534bd0cbe44c9bad52a1ec42fc9831e3735c58a3d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map wave-front-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
