
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-random, mrpt-serialization, mrpt-system, nanoflann, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-math";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_math/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "61430b799209e5ad7d05e726752502a22294929db62fca3c74e853ec10f0a2bf";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen nanoflann python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-io ];
  propagatedBuildInputs = [ mrpt-common mrpt-random mrpt-serialization mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_math";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
