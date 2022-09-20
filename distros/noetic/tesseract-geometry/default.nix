
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, console-bridge, eigen, gtest, octomap, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-geometry";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_geometry/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "aeb1d3e2b62c507e96322c46b9199c4edcde6d9374cd3b4349a8c21112ac9ff9";
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
