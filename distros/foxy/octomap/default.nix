
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-octomap";
  version = "1.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/octomap/1.9.5-2.tar.gz";
    name = "1.9.5-2.tar.gz";
    sha256 = "3bd2efc7e386c6ac70aa0f0af2d2794ad14042d1b3fb2adf1875ad2b03869342";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
