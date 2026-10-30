
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, eigen, mrpt-common, mrpt-img, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-viz";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_viz/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "d68214910fb5a3053c0e2d96dc72fe9ee8ccf8aeaaac20f0f9ac6ad16f1d97f1";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ assimp mrpt-common mrpt-img mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_viz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
