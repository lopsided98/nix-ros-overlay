
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-catkin";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/noetic/catkin/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "0d1ebc94098ff620d521540d37c97891d5d33b9fc2e1b2cda266394cbe4f0702";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock python3Packages.nose ];
  propagatedBuildInputs = [ cmake gmock gtest python3Packages.catkin-pkg python3Packages.empy python3Packages.nose python3Packages.setuptools ];
  nativeBuildInputs = [ cmake python3Packages.setuptools ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
