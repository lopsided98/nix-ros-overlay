
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-utility, mesh-map, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dc18d1fe0303b749a34b251b1aa9376c8908c7612e2528d7369cf6b25b33e46c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-utility mesh-map roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
