
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-octomap";
  version = "1.8.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/kinetic/octomap/1.8.1-0.tar.gz";
    name = "1.8.1-0.tar.gz";
    sha256 = "dba38c606483ef59bd981c17a08fb381cef0a9d0a20ddfbba35590a3330ecbe6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
