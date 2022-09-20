
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cvp-mesh-planner, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mesh-navigation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_navigation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6c561702fb3a4b4209818b4c2511463461925bd42acfb31f125c0fbca07a57ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cvp-mesh-planner dijkstra-mesh-planner mbf-mesh-core mbf-mesh-nav mesh-client mesh-controller mesh-layers mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_navigation package provides a layered mesh_map implementation, a Move Base Flex mesh navigation server, as well as mesh navigation plugins for path planning and navigation control.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
