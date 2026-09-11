
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages, simpleini }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-config";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_config/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "88b715b4a5f048c3518a403d855995723cd8f544984b1f73e06abcad81c46af9";
  };

  buildType = "cmake";
  buildInputs = [ cmake icu python3 python3Packages.pybind11 simpleini ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
