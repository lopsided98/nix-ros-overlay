
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-octomap";
  version = "1.10.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/jazzy/octomap/1.10.0-4.tar.gz";
    name = "1.10.0-4.tar.gz";
    sha256 = "57a4b5cab3eaf497790afe8f12b0c84b154de467d46fdc87105c31f13d8acff5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++. The map implementation is based on an octree. See
  http://octomap.github.io for details.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
