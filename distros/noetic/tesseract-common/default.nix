
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, console-bridge, eigen, gtest, lcov, ros-industrial-cmake-boilerplate, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-tesseract-common";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_common/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2fdefdd90889c18262674dd77f35cae10d060925fa735a062563f33b60de8bd1";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ clang gtest lcov ];
  propagatedBuildInputs = [ boost console-bridge eigen tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains common macros, utils and types used throughout'';
    license = with lib.licenses; [ asl20 ];
  };
}
