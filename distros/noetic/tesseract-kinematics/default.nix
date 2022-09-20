
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, liblapack, libyamlcpp, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "df2694129a3f671504011d8de2a6ee0544027aff42289ea9e880d084763f56aa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest liblapack tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen libyamlcpp opw-kinematics orocos-kdl tesseract-common tesseract-scene-graph tesseract-state-solver ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_kinematics package contains kinematics related libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
