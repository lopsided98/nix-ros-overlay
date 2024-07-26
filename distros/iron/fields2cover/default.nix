
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gdal, geos, git, gtest, lcov, protobuf, python3, python3Packages, swig, tbb_2021_11, tinyxml-2 }:
buildRosPackage {
  pname = "ros-iron-fields2cover";
  version = "2.0.0-r11";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/iron/fields2cover/2.0.0-11.tar.gz";
    name = "2.0.0-11.tar.gz";
    sha256 = "b59faf67dafd9a0e6bcaee1c28aac02449df8a509f232ca983710c866cbbeb81";
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
