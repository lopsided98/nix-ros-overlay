
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-humble-mrpt-io";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_io/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "134a590ab2118a6bf9862492bcdaabef414802b1f8e42b0a035f3b91f9005648";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 zlib zstd ];
  propagatedBuildInputs = [ mrpt-common mrpt-serialization mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
