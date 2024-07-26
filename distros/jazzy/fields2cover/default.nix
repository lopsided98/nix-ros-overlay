
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, protobuf, python3, python3Packages, swig, tbb_2021_11, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-fields2cover";
  version = "2.0.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/jazzy/fields2cover/2.0.0-9.tar.gz";
    name = "2.0.0-9.tar.gz";
    sha256 = "0c3e08b92e2d4c0556d3c3427de38eb50c6258efabc8b4a3ada0e594c5ccb2a0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ boost eigen gdal geos git gtest protobuf python3 python3Packages.matplotlib python3Packages.tkinter swig tbb_2021_11 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
