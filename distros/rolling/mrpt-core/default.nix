
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-core";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_core/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "07956a1726f22810c3e8f33f3fc827de64781496068a0c933737ff1a2a74ce5f";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
