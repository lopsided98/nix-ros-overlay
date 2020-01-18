
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-catkin";
  version = "0.7.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.20-1.tar.gz";
    name = "0.7.20-1.tar.gz";
    sha256 = "466c7d233ca3e905532a0215e786ad253fdfc704d5f69873812a397d509990cf";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock pythonPackages.nose ];
  propagatedBuildInputs = [ cmake gmock gtest python pythonPackages.catkin-pkg pythonPackages.empy pythonPackages.nose ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
