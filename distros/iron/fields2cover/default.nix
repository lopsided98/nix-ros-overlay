
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cmake, eigen, gdal, git, gtest, lcov, protobuf, python3, python3Packages, tbb_2021_8, tinyxml-2 }:
buildRosPackage {
  pname = "ros-iron-fields2cover";
  version = "2.0.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/iron/fields2cover/2.0.0-10.tar.gz";
    name = "2.0.0-10.tar.gz";
    sha256 = "7852f63c55de8751acaddf152491cbb33de419728b8d915214283a8c78992f2e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ abseil-cpp boost eigen gdal git gtest protobuf python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
