
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, lz4, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-maps";
  version = "3.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_maps/3.6.4-1.tar.gz";
    name = "3.6.4-1.tar.gz";
    sha256 = "333d6eb9cc69b82acfc7e1a0b2a27cb67c7ecefa72573b4fbca97eaea28c2d5a";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ lz4 mrpt-graphs mrpt-obs octomap zstd ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_maps";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
