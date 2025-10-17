
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, onetbb, ortools-vendor, python3, python3Packages, swig, tinyxml-2 }:
buildRosPackage {
  pname = "ros-kilted-fields2cover";
  version = "2.0.0-r16";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/kilted/fields2cover/2.0.0-16.tar.gz";
    name = "2.0.0-16.tar.gz";
    sha256 = "6e5141e8c10aac492e06647678622fbd62cabddb324fe3f1826d7a6b0f17b4f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ boost eigen gdal geos git gtest onetbb ortools-vendor python3 python3Packages.matplotlib python3Packages.tkinter swig tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
