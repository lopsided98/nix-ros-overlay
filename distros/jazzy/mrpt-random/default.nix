
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-random";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_random/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "8f7d0faf58aed2f2492439670a3e1750523658cfcef399d7fede4a6188d49862";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_random";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
