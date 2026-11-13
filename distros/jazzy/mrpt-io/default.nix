
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-io";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_io/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "c1ec964071c820f619a29d033426bb1d36e576f3946e1cd6ad03c58420521601";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-serialization mrpt-system zlib zstd ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
