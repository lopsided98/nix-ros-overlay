
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, octomap }:
buildRosPackage {
  pname = "ros-lunar-dynamic-edt-3d";
  version = "1.9.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap-release/archive/release/lunar/dynamic_edt_3d/1.9.0-0.tar.gz;
    sha256 = "49d82aa634d7f1c95335fab2b88678bc45e53a8f2972679d955494cac52ca500";
  };

  buildInputs = [ octomap ];
  propagatedBuildInputs = [ catkin octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
