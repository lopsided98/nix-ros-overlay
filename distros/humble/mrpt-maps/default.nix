
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-maps";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_maps/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ca81d41284bbc7c8f1ade5f301f66e458f076c9f9eb72f0cc6917babee41c6cb";
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
