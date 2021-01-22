
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map, wave-front-planner }:
buildRosPackage {
  pname = "ros-noetic-mesh-navigation";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_navigation/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e7adfa73671977e5ba5ad96be4d8bd01755184c22d7be59b6e9f1cd34123339b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map wave-front-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
