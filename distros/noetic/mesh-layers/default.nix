
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mesh-layers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_layers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "954a8a3cddb270ebe52aeb5f252ae85d9f9e1c9b8583df0a9bdd1bde2e13e7b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
