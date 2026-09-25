
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages, simpleini }:
buildRosPackage {
  pname = "ros-humble-mrpt-config";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_config/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "fe31135585db82ce48535009105741da0f2bf80bd6aab600b2cc2dd8cf35a2a6";
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
