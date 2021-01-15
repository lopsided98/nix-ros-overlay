
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dijkstra-mesh-planner";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/dijkstra_mesh_planner/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "83c7c2cbb2848d5e8be81d6a33412548a8e01c8cea5405a5ae9787b0f2133951";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
