
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.23-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.23-1.tar.gz";
    name = "0.7.23-1.tar.gz";
    sha256 = "038975826eb49cf92a07fb7d35622da90b1ccb9ebbf0894d87ca6bd4dee53238";
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
