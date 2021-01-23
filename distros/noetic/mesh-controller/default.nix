
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-mesh-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a4688cdc7de5615388ab75c2881a1bf17d277f38d633dff080af2f0fb5a85391";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
