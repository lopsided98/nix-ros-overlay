
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, console-bridge, eigen, gtest, lcov, libyamlcpp, ros-industrial-cmake-boilerplate, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-tesseract-common";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_common/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "d362a45792135313e1ce19047748a547df45e1ed72839b829315dbebd646facf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ clang gtest lcov ];
  propagatedBuildInputs = [ boost console-bridge eigen libyamlcpp tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains common macros, utils and types used throughout'';
    license = with lib.licenses; [ asl20 ];
  };
}
