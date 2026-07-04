
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-random, mrpt-serialization, mrpt-system, nanoflann, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-math";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_math/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "fbd3b665b63b867f25414a1f11495cd75398d5bd952516eee58818c84228a522";
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
