
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, gdal, git, gtest, lcov, python3Packages, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-rolling-fields2cover";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/Fields2Cover/Fields2Cover-release/archive/release/rolling/fields2cover/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5b3cdd2007eab5ae6eb963a39cac3e90998569ba4c3cd2fd5cd2d61923b3e651";
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
