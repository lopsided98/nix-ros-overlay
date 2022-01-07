
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-state-solver";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_state_solver/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "16475414eb53d97280a5a2d6eb06581788087b8c636b0ac4c6beb96452a05e1a";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen orocos-kdl tesseract-common tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The state solver for tesseract_scene_graph'';
    license = with lib.licenses; [ asl20 ];
  };
}
