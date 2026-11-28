
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-humble-mrpt-io";
  version = "3.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_io/3.6.4-1.tar.gz";
    name = "3.6.4-1.tar.gz";
    sha256 = "38a62a542bc831dee700ed79e5f482c7ed89b5b9f798cf998904673ad0ee92b5";
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
