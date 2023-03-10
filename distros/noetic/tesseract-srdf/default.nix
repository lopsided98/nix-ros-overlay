
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, libyamlcpp, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-srdf";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_srdf/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "33ec4b36d4b45f55c65507d947881e776a0f4b8b53230f392e501c9eaf406d74";
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
