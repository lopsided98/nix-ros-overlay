
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-graphs, mrpt-obs, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-maps";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_maps/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "0b7340c75232052991001d7181b3bd12a63b7d1eb206d1fccec7ff21e9c80beb";
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
