
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-environment, tesseract-scene-graph, tesseract-state-solver }:
buildRosPackage {
  pname = "ros-noetic-tesseract-visualization";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_visualization/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "5c5251096fd634cbe851478e45426dc9de6de1787504da1496332463bb8a872a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-collision tesseract-common tesseract-environment tesseract-scene-graph tesseract-state-solver ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
