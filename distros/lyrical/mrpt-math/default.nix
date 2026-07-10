
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-io, mrpt-random, mrpt-serialization, mrpt-system, nanoflann, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-math";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_math/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "39f7b165069c146be76e2f49bd5a57c978ae1852d3bcedee8d64bb8b54d8f32e";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ mrpt-io ];
  propagatedBuildInputs = [ mrpt-common mrpt-random mrpt-serialization mrpt-system nanoflann ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_math";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
