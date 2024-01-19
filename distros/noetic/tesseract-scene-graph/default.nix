
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-scene-graph";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_scene_graph/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "566eedec53a0594a572d26842d3c3823a8b02296acc0d0be94273958bd1feadf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ boost console-bridge eigen orocos-kdl tesseract-common tesseract-geometry ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_scene_graph package'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
