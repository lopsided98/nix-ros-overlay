
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-state-solver";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_state_solver/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "dad36be50db61544df29d40a22d7d602921038f56d191dd3c2db6044c5d27e9f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen orocos-kdl tesseract-common tesseract-scene-graph ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The state solver for tesseract_scene_graph'';
    license = with lib.licenses; [ asl20 ];
  };
}
