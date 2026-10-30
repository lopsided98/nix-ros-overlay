
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, lz4, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-kilted-mrpt-maps";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_maps/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "e693fb47455001cbc7279d3fabac237d5b194cfbf181296a84feac8d68dc8669";
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
