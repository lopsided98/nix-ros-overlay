
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-octomap";
  version = "1.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/octomap/1.10.0-3.tar.gz";
    name = "1.10.0-3.tar.gz";
    sha256 = "c17096b3826d369339197e8ba77f9be64aeb94b58c369cd1f9271f3882ef30b9";
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
