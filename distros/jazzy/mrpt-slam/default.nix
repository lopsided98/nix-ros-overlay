
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-maps, mrpt-topography, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-slam";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_slam/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "48917ef0daa8aea300537de7e765f23d2892b0843b19570d7d0da872e14b88a5";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-maps mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_slam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
