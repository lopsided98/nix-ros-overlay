
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, onetbb, ortools-vendor, python3, python3Packages, swig, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-fields2cover";
  version = "2.0.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/jazzy/fields2cover/2.0.0-10.tar.gz";
    name = "2.0.0-10.tar.gz";
    sha256 = "a27070b25c613fef28162cf8cdd9824aae51edec650ae3076e53ef833f3fb1b8";
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
