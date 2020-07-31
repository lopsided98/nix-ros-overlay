
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "a8a84cc9c35608ce7385328bee77eae8b1d8d0b67d3cc68f6f5ff327522d0ba1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
