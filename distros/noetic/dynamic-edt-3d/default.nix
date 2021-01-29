
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-noetic-dynamic-edt-3d";
  version = "1.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/dynamic_edt_3d/1.9.6-1.tar.gz";
    name = "1.9.6-1.tar.gz";
    sha256 = "63235da0946f9e97a0126a7e1c21a0a431e330f44845cc3d7523413503ede4ca";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
