
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-tesseract-srdf";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_srdf/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "1abac7f4e9bd61d667ddd0dae2628fbe1c6438d3f787e5bc96b1135ccf8ea1f7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-common tesseract-scene-graph yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_srdf package for parsing Tesseract specific srdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
