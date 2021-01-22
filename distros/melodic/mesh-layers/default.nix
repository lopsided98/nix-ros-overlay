
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mesh-layers";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_layers/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "582abf8dd35ac49906d5ae794999562d74379ad9d03c055405b5680c73812011";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
