
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, ortools-vendor, python3, python3Packages, tbb_2021_8, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-humble-fields2cover";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/humble/fields2cover/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "dbd403d7791f734fd9f49f23303ba1bd77d51384f2b58a50ea6bdc0fcbdca6bf";
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
