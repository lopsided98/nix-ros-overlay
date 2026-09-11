
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-maps";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_maps/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "3704bc48709f94c3f1e251f06d3fff1b31184e9d21acf73095046efa27536d7a";
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
