
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-humble-fields2cover";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/humble/fields2cover/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "11ca6ae60cd6c395f357cfa4d29f79bce7efbea2defb4b1bc9696f749e02fdfd";
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
