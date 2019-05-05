
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, gtest, pythonPackages, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.17";

  src = fetchurl {
    url = https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.17-0.tar.gz;
    sha256 = "316178707bc3f0edcb86a77ec2ec174b98b4d2ccf41306162cefe6588b3a9d41";
  };

  buildInputs = [ python pythonPackages.catkin-pkg pythonPackages.empy ];
  checkInputs = [ pythonPackages.nose pythonPackages.mock ];
  propagatedBuildInputs = [ python pythonPackages.nose gtest pythonPackages.catkin-pkg gmock pythonPackages.empy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
