
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-scene-graph";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_scene_graph/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "34719e15d2dd3605803e6903c39c97b2b9e500725e0670e78f2603b2dbe4c244";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ boost console-bridge eigen orocos-kdl tesseract-common tesseract-geometry ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_scene_graph package'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
