
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-config";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_config/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "d48e4046cfde20567c76544299b73a4614b4f1006c3708bd5a577be616bdd350";
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
