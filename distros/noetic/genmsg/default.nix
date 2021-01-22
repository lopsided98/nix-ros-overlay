
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genmsg";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/noetic/genmsg/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "f8fc86a75b6e33b8e9afb2977ba2d6f443dcf48e3ad67929a580f0c5ab331662";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin python3Packages.empy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
