
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-maps";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_maps/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "f7c05a17f8bd0fc586fd89481422600f72157ef76a2443c97d2268a2cf9e8e19";
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
