
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-octomap";
  version = "1.9.6-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/octomap/1.9.6-2.tar.gz";
    name = "1.9.6-2.tar.gz";
    sha256 = "8c374f5ef014c9d5496aa7bccb496dba458a5ce2c4d3ace2d6f4c4104cda3296";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
