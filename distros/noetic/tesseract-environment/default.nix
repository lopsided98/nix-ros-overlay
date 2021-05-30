
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, llvmPackages, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-kinematics, tesseract-scene-graph, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-environment";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_environment/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f8c7e24e93543b4f207aef1eab68fe04b9fd2d4ed3d573cc52643131734f51d1";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest llvmPackages.openmp tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen orocos-kdl tesseract-collision tesseract-common tesseract-geometry tesseract-kinematics tesseract-scene-graph tesseract-urdf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_environment package contains environment'';
    license = with lib.licenses; [ asl20 ];
  };
}
