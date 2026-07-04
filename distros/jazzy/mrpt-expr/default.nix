
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-expr";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_expr/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "00058f4f59f42e0972741e7422a799b837b412fccd8a59c2c0b7560d79745538";
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
