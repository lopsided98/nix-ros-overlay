
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mesh-layers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_layers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "692f5ffcc0f78dec14d05653757a09aed44f2a4b9a637ede3cb41cf20188e373";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
