
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, console-bridge, eigen, gtest, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-geometry, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-scene-graph";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_scene_graph/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "f0c423827f53a6e1c223d89bb8dcb005b93be789d4eb4bf8123e69033cb0d047";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ boost console-bridge eigen orocos-kdl tesseract-common tesseract-geometry ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_scene_graph package'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
