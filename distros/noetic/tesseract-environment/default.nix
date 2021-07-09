
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, llvmPackages, orocos-kdl, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-kinematics, tesseract-scene-graph, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-environment";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_environment/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "720aaf4a9e72f27db13c17d5ba5dd2e8e1c448a2d3cdb0f3451396ba2271bead";
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
