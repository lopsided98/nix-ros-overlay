
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-noetic-fields2cover";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/noetic/fields2cover/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "1657143af02bfc8c0dfa841de2f91ef9ee79312be3e03095fd487fbfe9bc2ccc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git gtest python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library";
    license = with lib.licenses; [ bsd3 ];
  };
}
