
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, ortools-vendor, python3, python3Packages, tbb_2021_8, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-fields2cover";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/rolling/fields2cover/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "ee795456b2bd96144226487607d7aa2ffd0d57fa28eee71190187ed909333382";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git gtest ortools-vendor python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 tinyxml2-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
