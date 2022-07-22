
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, console-bridge, eigen, gtest, lcov, libyamlcpp, ros-industrial-cmake-boilerplate, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-tesseract-common";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_common/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "c1ae68273e615d8674706e93918beeae6a1c0abb629106ab61dc11587f1c03cc";
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
