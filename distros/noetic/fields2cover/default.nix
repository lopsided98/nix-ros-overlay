
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, protobuf, python3, python3Packages, swig, tbb_2021_11, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-fields2cover";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/noetic/fields2cover/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "8f6bd812a555f80bc2b54df83c9129f7da780798426113366031336134c723dd";
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
