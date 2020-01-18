
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-eloquent-dynamic-edt-3d";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/eloquent/dynamic_edt_3d/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "5e13444b1d4f80f608aaa8c19e129e6a51c4d7c779d47dc9d0476a3d20a5d592";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
