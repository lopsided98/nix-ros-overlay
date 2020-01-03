
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-melodic-dynamic-edt-3d";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/melodic/dynamic_edt_3d/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "68d2bd30f42d15be91cc632bf371c179d454a00c96eb2719496644cb4620944f";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
