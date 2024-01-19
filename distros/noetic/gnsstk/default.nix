
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages, swig }:
buildRosPackage {
  pname = "ros-noetic-gnsstk";
  version = "14.0.0-r8";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/gnsstk-release/-/archive/release/noetic/gnsstk/14.0.0-8/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "f39dff1828b05129c65d105626424a1f317230b6af24fdd6b14649626393c406";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.setuptools swig ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake python3Packages.setuptools ];

  meta = {
    description = ''The goal of the gnsstk project is to provide an open source library to the satellite navigation community--to free researchers to focus on research, not lower level coding.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
