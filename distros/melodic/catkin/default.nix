
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.29-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.29-1.tar.gz";
    name = "0.7.29-1.tar.gz";
    sha256 = "cf21bd28d21965b04fc86c969c8558371b29e4e89bae08b193fa6f90902399ca";
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
