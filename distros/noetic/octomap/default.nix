
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-octomap";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/octomap/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "070c0eb719b120814c7ab76ec0f38ba46e924bac8b5415080bc080fa3aeb404f";
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
