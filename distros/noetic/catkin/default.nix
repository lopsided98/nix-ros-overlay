
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-catkin";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/noetic/catkin/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "2f1a36f2666c735509055696b4cf81b4b7256270b445008a91d6ff6c0caff572";
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
