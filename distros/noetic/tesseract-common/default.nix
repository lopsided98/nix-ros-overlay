
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, console-bridge, eigen, gtest, lcov, ros-industrial-cmake-boilerplate, tinyxml-2, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-tesseract-common";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_common/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "e98dfd37bc65f99d8b9d0e66d3ab6ca633efddba4b76e265da7170c985d8d5a9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ clang gtest lcov ];
  propagatedBuildInputs = [ boost console-bridge eigen tinyxml-2 yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains common macros, utils and types used throughout'';
    license = with lib.licenses; [ asl20 ];
  };
}
