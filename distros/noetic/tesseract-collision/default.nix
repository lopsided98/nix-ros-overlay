
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bullet, cmake, console-bridge, eigen, fcl, gbenchmark, gtest, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-tesseract-collision";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_collision/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "97e2549c54334421d43365f2b6ffa6299b0797ad2672907b330a4d5179bec940";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gbenchmark gtest tesseract-scene-graph ];
  propagatedBuildInputs = [ boost bullet console-bridge eigen fcl tesseract-common tesseract-geometry tesseract-support yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_collision package'';
    license = with lib.licenses; [ asl20 ];
  };
}
