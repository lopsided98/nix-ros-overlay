
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-foxy-dynamic-edt-3d";
  version = "1.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/dynamic_edt_3d/1.9.5-2.tar.gz";
    name = "1.9.5-2.tar.gz";
    sha256 = "54c3247c65810814e12ebae2093f4f6d18e2c98c3f9773ada68f2690d5d1eff0";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
