
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-maps";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_maps/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "efaeb14b5f62791d5c0a84d7a1999a98044f33f1143e778b995a06c35810c796";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen octomap python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-graphs mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_maps";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
