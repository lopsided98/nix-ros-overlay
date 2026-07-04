
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libsimpleini-dev, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "9d4d285e5050ceefd3520c83c2d0e74cdd720b0925c7c25bfb2debc945435ea3";
  };

  buildType = "cmake";
  buildInputs = [ _unresolved_libsimpleini-dev cmake icu python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
