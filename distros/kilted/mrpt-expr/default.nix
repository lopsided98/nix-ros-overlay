
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-expr";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_expr/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "479734d2c42c7b21b79be3297964292f166a9c3b9d1417edfc31edeeeeb31a5d";
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
