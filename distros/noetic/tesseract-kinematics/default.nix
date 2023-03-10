
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, liblapack, libyamlcpp, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "3372155ad498d5971e69c4e4b1052677f5d3c47106bfeb616b22fe0699ee083a";
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
