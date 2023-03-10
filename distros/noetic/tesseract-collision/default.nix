
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bullet, cmake, console-bridge, eigen, fcl, gbenchmark, gtest, libyamlcpp, llvmPackages, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-collision";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_collision/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "bb21781fedd539d23212a8afc3a8ca0f44b850513bdb4de70721b92cf1b97dda";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gbenchmark gtest tesseract-scene-graph ];
  propagatedBuildInputs = [ boost bullet console-bridge eigen fcl libyamlcpp llvmPackages.openmp tesseract-common tesseract-geometry tesseract-support ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_collision package'';
    license = with lib.licenses; [ asl20 ];
  };
}
