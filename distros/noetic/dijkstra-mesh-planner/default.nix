
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-noetic-dijkstra-mesh-planner";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/dijkstra_mesh_planner/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d33ed583ee27d232032ad70eb6b377d683553c204b963085701a4b3188e2fdf5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
