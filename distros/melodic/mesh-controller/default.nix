
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-controller";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_controller/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "57650789ffdbdc0d01c69fa22491dcaac27e81875f6a2ca743653ce7d8282a83";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
