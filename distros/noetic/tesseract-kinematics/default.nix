
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, liblapack, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-state-solver, tesseract-support, tesseract-urdf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "a9026f45ab25ae4dc0cca40501927d9c21f998e186a3ada0a19b74ed7cfb3045";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest liblapack tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen opw-kinematics orocos-kdl tesseract-common tesseract-scene-graph tesseract-state-solver yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_kinematics package contains kinematics related libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
