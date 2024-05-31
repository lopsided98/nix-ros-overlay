
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cmake, eigen, gdal, git, gtest, lcov, protobuf, python3, python3Packages, tbb_2021_8, tinyxml-2 }:
buildRosPackage {
  pname = "ros-humble-fields2cover";
  version = "2.0.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fields2cover-release/archive/release/humble/fields2cover/2.0.0-9.tar.gz";
    name = "2.0.0-9.tar.gz";
    sha256 = "46379450342df40a10fbd8ba566dac870ccee6cf2e57772d0437d31b20d1c909";
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
