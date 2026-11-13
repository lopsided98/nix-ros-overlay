
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-maps, mrpt-topography, onetbb, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-slam";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_slam/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "d6d36c53029de5563af628d470c91b4ca1efb999de8a860495e09aa1fa1c5720";
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
