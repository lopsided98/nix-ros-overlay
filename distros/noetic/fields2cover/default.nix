
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, ortools-vendor, python3, python3Packages, tbb_2021_8, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-fields2cover";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/noetic/fields2cover/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "730ee2e0a1d9fe4a820a3262aef8efee683438b2aaa228c7d4a026e2b9314ffe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git gtest ortools-vendor python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
