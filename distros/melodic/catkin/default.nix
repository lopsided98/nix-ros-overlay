
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.28-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.28-1.tar.gz";
    name = "0.7.28-1.tar.gz";
    sha256 = "cd1ee35f6cc5e917fedf47a109ea3108ac1b9ecf3524dafc6b6c2b483614905b";
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
