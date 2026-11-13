
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-config";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_config/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "a77e9a1d49091568dd8c7266928b7424e11d2b1de27e6e837d00fe6339d64316";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ icu mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
