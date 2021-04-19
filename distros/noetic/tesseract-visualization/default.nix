
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-environment, tesseract-scene-graph }:
buildRosPackage {
  pname = "ros-noetic-tesseract-visualization";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_visualization/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c7e1ef6833a06ed49a573b20dce540915c5c7f78b7822f49f25a72d679fd10d5";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-collision tesseract-common tesseract-environment tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
