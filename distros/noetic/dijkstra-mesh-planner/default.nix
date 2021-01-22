
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-noetic-dijkstra-mesh-planner";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/dijkstra_mesh_planner/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "f4c05069e49ba689250afc8c27c51bc35cd8b97d94a75eb6870812863de59062";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
