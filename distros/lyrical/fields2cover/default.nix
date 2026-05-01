
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, onetbb, ortools-vendor, python3, python3Packages, swig, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-fields2cover";
  version = "2.0.0-r18";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/lyrical/fields2cover/2.0.0-18.tar.gz";
    name = "2.0.0-18.tar.gz";
    sha256 = "ba85128c604f4d9eb50e262d0b3772b9ac1beca9b696176f109e4d5f23375898";
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
