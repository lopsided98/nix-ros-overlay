
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "47928b0d4ab5a669d7ded587194267cc61ff89f3d97941c9f9e1ae896bc23405";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
