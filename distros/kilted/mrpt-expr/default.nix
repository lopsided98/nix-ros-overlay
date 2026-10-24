
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-expr";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_expr/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "fa499df9f756591f76e49d1c4a2dd600a726750b0ecc95dca7bbedf2198acccd";
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
