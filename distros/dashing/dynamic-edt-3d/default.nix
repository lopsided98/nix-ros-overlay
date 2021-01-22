
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-dashing-dynamic-edt-3d";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/dashing/dynamic_edt_3d/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "ad7b613dd428b6f0b1322e06959ceef7d3fa907528e296481a7e93a9dedd61f8";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
