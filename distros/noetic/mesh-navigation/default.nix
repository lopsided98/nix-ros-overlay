
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cvp-mesh-planner, dijkstra-mesh-planner, mbf-mesh-core, mbf-mesh-nav, mesh-client, mesh-controller, mesh-layers, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mesh-navigation";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_navigation/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "52f5754149baba3151cf1fd7ed3830bfe6133eb88edad1934b0f3c6b71336ff6";
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
