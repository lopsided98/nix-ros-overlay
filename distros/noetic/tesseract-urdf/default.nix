
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, pcl, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-urdf";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_urdf/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "5935cf6018f53546ff2f63a95c13cf3f26461a89a2a843dac021ee56cfaa8a38";
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
