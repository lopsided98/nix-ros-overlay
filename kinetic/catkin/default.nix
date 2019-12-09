
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, cmake, python, gtest, gmock }:
buildRosPackage {
  pname = "ros-kinetic-catkin";
  version = "0.7.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.18-1.tar.gz";
    name = "0.7.18-1.tar.gz";
    sha256 = "f6827d5527925cf748b4791270fb2af25ca55cdde0c580c04767f0def5eb6098";
  };

  buildType = "catkin";
  buildInputs = [ python pythonPackages.catkin-pkg pythonPackages.empy ];
  checkInputs = [ pythonPackages.mock pythonPackages.nose ];
  propagatedBuildInputs = [ pythonPackages.nose cmake python pythonPackages.catkin-pkg pythonPackages.empy gtest gmock ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
