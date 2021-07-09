
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-environment, tesseract-scene-graph }:
buildRosPackage {
  pname = "ros-noetic-tesseract-visualization";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_visualization/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4cfe4b588e833cc2b89069ae42776ff2ca588dff37cc5b38a579b79c89076974";
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
