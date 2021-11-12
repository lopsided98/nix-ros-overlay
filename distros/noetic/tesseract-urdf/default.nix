
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, pcl, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-urdf";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_urdf/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "9427bd53461be3ad7049a4c43a735b811680783c93c3fca46508081f8ae69414";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen pcl tesseract-collision tesseract-common tesseract-geometry tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_urdf package for parsing tesseract specific urdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
