
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-controller";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_controller/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "c2fad81da0a24b9b4120cf7f6178b05b9660e8364ee219c3bbd15dd81d693a1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
