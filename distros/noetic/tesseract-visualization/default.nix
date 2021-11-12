
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-environment, tesseract-scene-graph, tesseract-state-solver }:
buildRosPackage {
  pname = "ros-noetic-tesseract-visualization";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_visualization/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "6138c78b23dcfce327bba1c1f00bcfc3a0b358a49db300f9767096e133fc866e";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-collision tesseract-common tesseract-environment tesseract-scene-graph tesseract-state-solver ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
