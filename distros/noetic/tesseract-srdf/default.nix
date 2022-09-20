
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, libyamlcpp, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-srdf";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_srdf/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "cd42b66672df6a8762b723cc1010edcadded1ff9501aceddab2b623693b357b2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen libyamlcpp tesseract-common tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_srdf package for parsing Tesseract specific srdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
