
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-octomap";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/melodic/octomap/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "deed4682029157898edbe591eada25b7c2acdef246d5097343ef79cc4f137245";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
