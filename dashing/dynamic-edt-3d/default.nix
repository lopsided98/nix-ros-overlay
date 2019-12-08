
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, octomap }:
buildRosPackage {
  pname = "ros-dashing-dynamic-edt-3d";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/dashing/dynamic_edt_3d/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "e364c405c00d4b2366997b78bfd4f0be73a42c8b123d39c58c6379a317bcf79c";
  };

  buildType = "cmake";
  buildInputs = [ octomap ];
  propagatedBuildInputs = [ octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The dynamicEDT3D library implements an inrementally updatable Euclidean distance transform (EDT) in 3D. It comes with a wrapper to use the OctoMap 3D representation and hooks into the change detection of the OctoMap library to propagate changes to the EDT.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
