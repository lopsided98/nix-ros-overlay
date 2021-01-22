
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map, wave-front-planner }:
buildRosPackage {
  pname = "ros-melodic-mesh-navigation";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_navigation/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "3fa49f481b9ce4b032a62fe8b205feed0c67e33fca8abeee58c7a375da685618";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map wave-front-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
