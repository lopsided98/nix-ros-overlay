
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, octomap }:
buildRosPackage {
  pname = "ros-kinetic-dynamic-edt-3d";
  version = "1.8.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/kinetic/dynamic_edt_3d/1.8.1-0.tar.gz";
    name = "1.8.1-0.tar.gz";
    sha256 = "11050cd476d6f3f1ca82e65bbc63caf0565ec6baf633eda978a170930f038a3e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
