
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-octomap";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/dashing/octomap/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "fd6e90df56fbdf2317c577b539c317c95d8a9b9d8ab6693acb50e4e6b6663ca0";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
