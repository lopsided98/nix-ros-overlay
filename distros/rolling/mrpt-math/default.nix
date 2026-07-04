
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-random, mrpt-serialization, mrpt-system, nanoflann, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-math";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_math/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "82caec1c9600bb78c98f421d80003668194f8511cda771955f38616568b44c16";
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
