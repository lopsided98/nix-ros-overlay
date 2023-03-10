
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-scene-graph";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_scene_graph/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "e25f98a73199eaf3a182563bb654e64b20879e36a6ed1768191c64f2b60656bd";
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
