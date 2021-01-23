
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dijkstra-mesh-planner";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/dijkstra_mesh_planner/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "2ae6476b9ae7595f1bbbd5d3e6a445c120c0a4368a892fd72f5db0599e4ef607";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
