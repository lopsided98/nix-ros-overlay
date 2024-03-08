
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-rolling-dynamic-edt-3d";
  version = "1.9.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/dynamic_edt_3d/1.9.8-3.tar.gz";
    name = "1.9.8-3.tar.gz";
    sha256 = "7ba15666ae76950262e3a34a32d8cad2796db9fe6712d3b3bd0ead39ef835d94";
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
