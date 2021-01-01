
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-catkin";
  version = "0.7.29-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.29-1.tar.gz";
    name = "0.7.29-1.tar.gz";
    sha256 = "4fe6484462634c54c4aeb0b7edc8baacddfc32438f659fdb04c9934ebd5f961d";
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
