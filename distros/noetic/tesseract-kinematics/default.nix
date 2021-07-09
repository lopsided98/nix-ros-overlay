
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-srdf, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "5178a5136b7e754f1ab5501188d7775b75a9a48b1affd7c5dc537e020739c6c5";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen opw-kinematics orocos-kdl tesseract-common tesseract-scene-graph tesseract-srdf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_kinematics package contains kinematics related libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
