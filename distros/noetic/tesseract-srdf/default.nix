
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, libyamlcpp, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-srdf";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_srdf/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "461c36be5fe17d4098ecba44b624919145d05152cf5a052b03b693c70aa8086a";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen libyamlcpp tesseract-common tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_srdf package for parsing Tesseract specific srdf'';
    license = with lib.licenses; [ asl20 ];
  };
}
