
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-catkin";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/noetic/catkin/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "3ab8eaec0c1d7a1d2a8746faabe657c900858188e0faa942a727f787d1fa7969";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock pythonPackages.nose ];
  propagatedBuildInputs = [ cmake gmock gtest python pythonPackages.catkin-pkg pythonPackages.empy pythonPackages.nose ];
  nativeBuildInputs = [ cmake pythonPackages.setuptools ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
