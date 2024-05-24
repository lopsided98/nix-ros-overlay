
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, git, gtest, lcov, protobuf, python3, python3Packages, tbb_2021_8, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-fields2cover";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/noetic/fields2cover/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "c7a75c7e5c684c5a3d0acdf99c2b02ce311c6735cfca634583665fe4184f6ace";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ boost eigen gdal git gtest protobuf python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
