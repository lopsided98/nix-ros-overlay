
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-rolling-fields2cover";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/Fields2Cover-release/archive/release/rolling/fields2cover/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "5ccd34682b857c296ddd5adb9d9f26d34a1c03191c09dcd2a9ae9503fb1725a8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest lcov ];
  propagatedBuildInputs = [ eigen gdal git gtest python3 python3Packages.matplotlib python3Packages.tkinter tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Robust and efficient coverage paths for autonomous agricultural vehicles.
    A modular and extensible Coverage Path Planning library'';
    license = with lib.licenses; [ bsd3 ];
  };
}
