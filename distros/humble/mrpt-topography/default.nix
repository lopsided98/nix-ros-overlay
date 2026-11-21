
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-topography";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_topography/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "b190bf1ce005d2448f9e1668bd24e3d61791977a9f8125f3ba22e67b46b8ac5c";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_topography";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
