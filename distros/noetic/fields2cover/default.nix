
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-noetic-fields2cover";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/noetic/fields2cover/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "847ed56a2724f3c07571b9032b7dcb81504fbd909708f2dbdb618b26c7dce3f5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library'';
    license = with lib.licenses; [ bsd3 ];
  };
}
