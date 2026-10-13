
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-serialization, mrpt-system, python3, python3Packages, zlib, zstd }:
buildRosPackage {
  pname = "ros-kilted-mrpt-io";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_io/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "0b1d32f588f9e21b4fc7a97e7522af6c2adcbcd35c2423f9707a630ab0ebe176";
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
