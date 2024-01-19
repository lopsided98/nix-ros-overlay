
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-humble-fields2cover";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/fields2cover-release/archive/release/humble/fields2cover/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "e88e84ed14b66ef8ec9a3dfcc7d60b5e63e193c9003254882766a4b4587a1a67";
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
