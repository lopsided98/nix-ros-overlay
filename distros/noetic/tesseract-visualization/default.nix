
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-environment, tesseract-scene-graph, tesseract-state-solver }:
buildRosPackage {
  pname = "ros-noetic-tesseract-visualization";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_visualization/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "aebab2138cc877f5927cb92b82ffadebe043058c1faa32c2955fcff2a31c1f35";
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
