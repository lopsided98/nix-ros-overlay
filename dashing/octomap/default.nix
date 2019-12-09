
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-octomap";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/dashing/octomap/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "cf0eca9afa4bddd48b97b95848fcb12848f47fb3ca4331a0b3b4818ba88d9249";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
