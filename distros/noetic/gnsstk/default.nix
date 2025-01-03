
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages, swig }:
buildRosPackage {
  pname = "ros-noetic-gnsstk";
  version = "14.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/gnsstk-release/-/archive/release/noetic/gnsstk/14.3.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "62bb70dfb6aa04c962edeb3b8f69aea59a504f571ec7dc8b5a121c32a1b169ca";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.setuptools swig ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake python3Packages.setuptools ];

  meta = {
    description = "The goal of the gnsstk project is to provide an open source library to the satellite navigation community--to free researchers to focus on research, not lower level coding.";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
