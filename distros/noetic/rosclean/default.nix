
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "6ce03bce22e1009aa43f3f74f99efd6026702e7d775aac15a1800c7305857086";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
