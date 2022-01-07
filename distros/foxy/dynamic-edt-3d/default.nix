
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, octomap }:
buildRosPackage {
  pname = "ros-foxy-dynamic-edt-3d";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/dynamic_edt_3d/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "875f29170fcf67ae8c6cdafe91baea41b258714a4eae930eb7c4ae712d731523";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
