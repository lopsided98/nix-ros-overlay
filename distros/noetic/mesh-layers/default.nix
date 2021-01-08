
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mesh-layers";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_layers/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "48733d46aaec6497db2ed217b9bde2817feaa083e46642006cfb833b7fc6f851";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
