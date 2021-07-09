
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, console-bridge, eigen, gtest, octomap, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-geometry";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_geometry/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "9db968bdfab05f4a3ef50c1ddeb07570904d04bee48637626eb52fb858525b56";
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
