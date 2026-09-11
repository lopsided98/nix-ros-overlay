
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages, simpleini }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-config";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_config/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "5c8b5632aba5b19f50ecfc18954c4ae85ffed6df629d2a55c9a14aa8bd1d36e4";
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
