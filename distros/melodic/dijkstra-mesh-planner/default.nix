
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dijkstra-mesh-planner";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/dijkstra_mesh_planner/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "10d9ce82bd9e81525f4f1d5807e44eb69fdf94199f008d0db50688d716d002e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
