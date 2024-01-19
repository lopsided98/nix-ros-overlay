
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-octomap";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/humble/octomap/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "ceb658a17bb47e6ef6fabeafd178e7658e5547e345d0bac6004940bfdd0cbc9d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
