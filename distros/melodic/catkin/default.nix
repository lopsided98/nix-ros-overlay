
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gmock, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.20-1.tar.gz";
    name = "0.7.20-1.tar.gz";
    sha256 = "24e182f20635f79f4980ecc56d2f5baad8000b02f7201f690c1feab92f4c8651";
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
