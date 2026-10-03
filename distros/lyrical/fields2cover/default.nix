
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, onetbb, ortools-vendor, python3, python3Packages, swig, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-fields2cover";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/lyrical/fields2cover/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "e8edfb53fb2f8203a9ba5481b51d9a4d6b382847d27856742dae44d489866e73";
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
