
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bullet, cmake, console-bridge, eigen, fcl, gbenchmark, gtest, libyamlcpp, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-collision";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_collision/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "7b4700e14ef3e2b7cf184fcf2603a0e5efeafcbd113cc4d64865ba2a64ba1a18";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gbenchmark gtest tesseract-scene-graph ];
  propagatedBuildInputs = [ boost bullet console-bridge eigen fcl libyamlcpp tesseract-common tesseract-geometry tesseract-support ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_collision package'';
    license = with lib.licenses; [ asl20 ];
  };
}
