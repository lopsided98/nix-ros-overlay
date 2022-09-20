
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-galactic-dynamic-edt-3d";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/galactic/dynamic_edt_3d/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "7978860470859665103211ff214abe844d51042785a403dd8e65b36fa66f334e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
