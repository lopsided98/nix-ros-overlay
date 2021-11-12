
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, libyamlcpp, opw-kinematics, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-scene-graph, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-kinematics";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_kinematics/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "deac10351f396271c9e0c195b9ff93c487bf45c21e50d1ce8b39203f72f21745";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support tesseract-urdf ];
  propagatedBuildInputs = [ console-bridge eigen libyamlcpp opw-kinematics orocos-kdl tesseract-common tesseract-scene-graph tesseract-state-solver ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_kinematics package contains kinematics related libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
