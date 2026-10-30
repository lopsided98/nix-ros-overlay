
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, lz4, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-rolling-mrpt-maps";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_maps/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "c5fcc7bf9176728971cbc382139b4a379f4b6628941af00d34e12f3a91b2d507";
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
