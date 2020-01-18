
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-octomap";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/eloquent/octomap/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "d02f556880e4c1a4910c697f52b5de78b9f971324c9e60389eb112617c985ce2";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
