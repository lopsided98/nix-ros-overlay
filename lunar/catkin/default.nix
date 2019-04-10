
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, gtest, pythonPackages, cmake, gmock }:
buildRosPackage {
  pname = "ros-lunar-catkin";
  version = "0.7.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/catkin-release/archive/release/lunar/catkin/0.7.14-0.tar.gz;
    sha256 = "ef5849eb9c5ae634e616f55b601fe6118e025a4a884ae30a09e3ef92ce275799";
  };

  buildInputs = [ python pythonPackages.catkin-pkg pythonPackages.empy ];
  checkInputs = [ pythonPackages.nose pythonPackages.mock ];
  propagatedBuildInputs = [ python pythonPackages.catkin-pkg pythonPackages.nose gtest gmock pythonPackages.empy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    #license = lib.licenses.BSD;
  };
}
