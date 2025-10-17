
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, onetbb, ortools-vendor, python3, python3Packages, swig, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-fields2cover";
  version = "2.0.0-r15";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/rolling/fields2cover/2.0.0-15.tar.gz";
    name = "2.0.0-15.tar.gz";
    sha256 = "df1ee5d830e1240d1819d1705ed113f7bad7a40b83650ad68f28c042661bac08";
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
