
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, console-bridge, eigen, gtest, octomap, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-geometry";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_geometry/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "223a60f3a2198a25a9fb670630f9e9a7920ee8af9d017971b95fd28cc6a5f3aa";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ assimp console-bridge eigen octomap tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_geometry package'';
    license = with lib.licenses; [ asl20 ];
  };
}
