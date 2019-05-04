
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, gtest, pythonPackages, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-catkin";
  version = "0.7.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.14-0.tar.gz;
    sha256 = "a70d5fcc94d1d61e3cb4a93c5b78af89f4ea0ec42506f025fa332729a22e5194";
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
