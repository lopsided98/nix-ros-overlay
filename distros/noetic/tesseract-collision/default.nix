
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bullet, cmake, console-bridge, eigen, fcl, gbenchmark, gtest, libyamlcpp, llvmPackages, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-scene-graph, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-collision";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_collision/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "9fddb20b329c9944b75f6d3c39fa26b76a5d2b9a9b50db2481939e6c6825fbaf";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gbenchmark gtest tesseract-scene-graph ];
  propagatedBuildInputs = [ boost bullet console-bridge eigen fcl libyamlcpp llvmPackages.openmp tesseract-common tesseract-geometry tesseract-support ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_collision package'';
    license = with lib.licenses; [ asl20 ];
  };
}
