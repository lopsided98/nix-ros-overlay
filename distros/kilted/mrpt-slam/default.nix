
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-maps, mrpt-topography, onetbb, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-slam";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_slam/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "929645fb79652575201f24872c069dad855bb803b0aa0803adaa4e3f71755a0d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-maps mrpt-topography onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_slam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
