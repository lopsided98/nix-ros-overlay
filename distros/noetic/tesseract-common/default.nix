
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, console-bridge, eigen, gtest, lcov, libyamlcpp, ros-industrial-cmake-boilerplate, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-tesseract-common";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_common/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "3eceda79dd221da6953501e23970205d56bfe9a362770d8094e8eb0f5f5b5266";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ clang gtest lcov ];
  propagatedBuildInputs = [ boost console-bridge eigen libyamlcpp tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains common macros, utils and types used throughout'';
    license = with lib.licenses; [ asl20 ];
  };
}
