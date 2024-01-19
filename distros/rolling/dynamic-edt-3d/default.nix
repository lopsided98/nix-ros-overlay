
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-rolling-dynamic-edt-3d";
  version = "1.9.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/dynamic_edt_3d/1.9.8-2.tar.gz";
    name = "1.9.8-2.tar.gz";
    sha256 = "8c2321a9b918d679f505ce602c6fa3791b85db3f7b1e084d5875af7cb3d764f0";
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
