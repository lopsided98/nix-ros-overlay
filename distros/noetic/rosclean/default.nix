
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.4-1.tar.gz";
    name = "1.15.4-1.tar.gz";
    sha256 = "d020d768c46a33a3892a3fd64a11a8a6a5ab9207888e6a74d1f5f491729dfb1e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
