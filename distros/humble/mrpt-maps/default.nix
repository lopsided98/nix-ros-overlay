
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, lz4, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-humble-mrpt-maps";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_maps/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "54ac70eb46d748195cb27a28b067ad7e082326a396b276e07c8819cd355b538d";
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
