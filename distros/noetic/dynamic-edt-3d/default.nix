
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, octomap }:
buildRosPackage {
  pname = "ros-noetic-dynamic-edt-3d";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/dynamic_edt_3d/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "233899b5ed9f3422daa94d4fbd8ab3069ed7dc18a4d16504daccac0eb240bda4";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
