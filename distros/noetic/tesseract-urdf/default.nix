
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, pcl, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-urdf";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_urdf/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "d65b9d6df0c3d4eb4e495dcc4f937e84a8fffe69de44f4ff8f7af2dacc00b1a5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen pcl tesseract-collision tesseract-common tesseract-geometry tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_urdf package for parsing tesseract specific urdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
