
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map, wave-front-planner }:
buildRosPackage {
  pname = "ros-melodic-mesh-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "301c983a6218044d41240cda9c409321b228b2497b3a22c4968fdc2ce9044f36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map wave-front-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
