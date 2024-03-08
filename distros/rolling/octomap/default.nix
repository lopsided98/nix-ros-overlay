
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-octomap";
  version = "1.9.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/octomap/1.9.8-3.tar.gz";
    name = "1.9.8-3.tar.gz";
    sha256 = "845e231dd981854939951c3a71fc3a0baade9290b305ee97dccf2b4b82dd1a2d";
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
