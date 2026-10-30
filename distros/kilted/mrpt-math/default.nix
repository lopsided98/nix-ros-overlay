
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-random, mrpt-serialization, mrpt-system, nanoflann-vendor, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-math";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_math/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "51ff1ea2df11085744daf7bf4e9edfba6817305a11b78535651d5eec55467f1e";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-io ];
  propagatedBuildInputs = [ mrpt-common mrpt-random mrpt-serialization mrpt-system nanoflann-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_math";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
