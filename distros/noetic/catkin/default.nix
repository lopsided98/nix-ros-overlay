
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-catkin";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/noetic/catkin/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "46a919853e969ab707bfbced8cf0cb6de6efc13ec39e75719f836330d2aa6cb6";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.nose ];
  propagatedBuildInputs = [ cmake gtest python3Packages.catkin-pkg python3Packages.empy python3Packages.nose python3Packages.setuptools ];
  nativeBuildInputs = [ cmake python3Packages.setuptools ];

  meta = {
    description = "Low-level build system macros and infrastructure for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
