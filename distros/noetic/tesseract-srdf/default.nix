
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-srdf";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_srdf/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c4f83af8cab478fb477dfdc90d489286a1021b48ddedec7a8fe7f09c0d1b4e5b";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-common tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_srdf package for parsing Tesseract specific srdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
