
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dijkstra-mesh-planner";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/dijkstra_mesh_planner/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9b0df6ecfa43cd8dde6d68e8253170f015448b0d74338fe1214af831d4771d9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dijkstra_mesh_planner package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
