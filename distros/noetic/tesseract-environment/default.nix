
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, llvmPackages, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-kinematics, tesseract-scene-graph, tesseract-srdf, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-environment";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_environment/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "3075ed89bacf4c76b7a8c3f7d40a3f2d68a779b75e4269731f748a28bba052b3";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest llvmPackages.openmp tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-collision tesseract-common tesseract-geometry tesseract-kinematics tesseract-scene-graph tesseract-srdf tesseract-state-solver tesseract-urdf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_environment package contains environment'';
    license = with lib.licenses; [ asl20 ];
  };
}
