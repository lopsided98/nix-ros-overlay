
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-catkin";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/noetic/catkin/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "08401b37f85d0a6b153e00408b6e51fdf7b0fd0d485da6ccb808aba401a5518f";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock python3Packages.nose ];
  propagatedBuildInputs = [ cmake gtest python3Packages.catkin-pkg python3Packages.empy python3Packages.nose python3Packages.setuptools ];
  nativeBuildInputs = [ cmake python3Packages.setuptools ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
