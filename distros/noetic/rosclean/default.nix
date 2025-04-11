
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "653b85cca8a7fdde3fd89c89ee95c8a0bdc053bb197c88e162e53d9c3d2daa7d";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rosclean: cleanup filesystem resources (e.g. log files).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
