
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, console-bridge, eigen, gtest, octomap, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-geometry";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_geometry/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "d39221fb48d4e93b88ce51910abcb5aa7a662d66a8b9e3917973dee85f5960d2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ assimp console-bridge eigen octomap tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_geometry package'';
    license = with lib.licenses; [ asl20 ];
  };
}
