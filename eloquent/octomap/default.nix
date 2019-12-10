
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-octomap";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/eloquent/octomap/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "4da04effed7b5f918a13a0639757e5fa46d59e4ea35b4dd9696fdd4cde12b75f";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
