
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map, wave-front-planner }:
buildRosPackage {
  pname = "ros-melodic-mesh-navigation";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_navigation/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "76035ae6458eee945b839ea5a2102a60cc2e4a7288cd31cc4ac0ca5f538e47c3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map wave-front-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
