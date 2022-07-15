
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, liblapack, libyamlcpp, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "c26800e1071d9d6d252e4ee6b0e8e92e6e2d0b36251a48ae4ed9295d3d0489e4";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest liblapack tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen libyamlcpp opw-kinematics orocos-kdl tesseract-common tesseract-scene-graph tesseract-state-solver ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_kinematics package contains kinematics related libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
