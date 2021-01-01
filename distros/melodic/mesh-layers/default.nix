
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mesh-layers";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_layers/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "2f7553d11375ea30ab36cecc254995ff3279e74e97fc87d2163a9477eabd60ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
