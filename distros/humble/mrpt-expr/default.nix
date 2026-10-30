
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-expr";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_expr/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "7dc3f521f4667feb3015e5ce1210046693c1c23c8f00251d3a2fd644cb28ca22";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_expr";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
