
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, lz4, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-rolling-mrpt-maps";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_maps/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "40d74dd33650c9347a158a3ed2ce76ac87b3473b01b10063f68c70a659cc2ef1";
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
