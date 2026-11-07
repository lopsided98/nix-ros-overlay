
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-config";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_config/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "55823e5ec5b97bedc3041be7b26829eef51da1cb4a24eee6e86d82cd8be40110";
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
