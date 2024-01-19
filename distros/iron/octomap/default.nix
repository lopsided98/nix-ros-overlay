
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-octomap";
  version = "1.9.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/iron/octomap/1.9.8-3.tar.gz";
    name = "1.9.8-3.tar.gz";
    sha256 = "06527a30244c114eac89d8b9ac0876654a6db5954ef0b4def448c0a8496c56a7";
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
